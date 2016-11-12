; ModuleID = './app/widgets/gimpdatafactoryview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDataFactoryViewClass = type { %struct._GimpContainerEditorClass }
%struct._GimpContainerEditorClass = type { %struct._GtkBoxClass, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* }
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
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDataFactoryView = type { %struct._GimpContainerEditor, %struct._GimpDataFactoryViewPriv* }
%struct._GimpDataFactoryViewPriv = type { %struct._GimpDataFactory*, i8*, %struct._GimpContainer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
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
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
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
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GimpTaggedContainer = type { %struct._GimpFilteredContainer, %struct._GList*, %struct._GHashTable*, i32 }
%struct._GimpFilteredContainer = type { %struct._GimpList, %struct._GimpContainer*, i32 (%struct._GimpObject*, i8*)*, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GHashTable = type opaque
%struct._GimpTagEntry = type { %struct._GtkEntry, %struct._GimpTaggedContainer*, %struct._GString*, %struct._GList*, %struct._GList*, %struct._GList*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpData = type { %struct._GimpViewable }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }

@gimp_data_factory_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpDataFactoryView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_data_factory_view_new = private unnamed_addr constant [27 x i8] c"gimp_data_factory_view_new\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_DATA_FACTORY (factory)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"action_group != NULL\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"action-group\00", align 1
@__func__.gimp_data_factory_view_get_edit_button = private unnamed_addr constant [39 x i8] c"gimp_data_factory_view_get_edit_button\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"GIMP_IS_DATA_FACTORY_VIEW (factory_view)\00", align 1
@__func__.gimp_data_factory_view_get_duplicate_button = private unnamed_addr constant [44 x i8] c"gimp_data_factory_view_get_duplicate_button\00", align 1
@__func__.gimp_data_factory_view_get_data_factory = private unnamed_addr constant [40 x i8] c"gimp_data_factory_view_get_data_factory\00", align 1
@__func__.gimp_data_factory_view_get_children_type = private unnamed_addr constant [41 x i8] c"gimp_data_factory_view_get_children_type\00", align 1
@__func__.gimp_data_factory_view_has_data_new_func = private unnamed_addr constant [41 x i8] c"gimp_data_factory_view_has_data_new_func\00", align 1
@__func__.gimp_data_factory_view_have = private unnamed_addr constant [28 x i8] c"gimp_data_factory_view_have\00", align 1
@gimp_data_factory_view_parent_class = internal global i8* null, align 8
@GimpDataFactoryView_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"gimpdatafactoryview.c\00", align 1
@__func__.gimp_data_factory_view_constructor = private unnamed_addr constant [35 x i8] c"gimp_data_factory_view_constructor\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"GIMP_IS_DATA_FACTORY (factory_view->priv->factory)\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"factory_view->priv->action_group != NULL\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%s-edit\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%s-new\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"%s-duplicate\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%s-delete\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%s-refresh\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_data_factory_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_data_factory_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_data_factory_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_data_factory_view_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDataFactoryView*)* @gimp_data_factory_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_data_factory_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_data_factory_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_data_factory_view_parent_class, align 8
  %1 = load i32, i32* @GimpDataFactoryView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDataFactoryView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDataFactoryViewClass*
  call void @gimp_data_factory_view_class_init(%struct._GimpDataFactoryViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_init(%struct._GimpDataFactoryView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpDataFactoryView*, align 8
  store %struct._GimpDataFactoryView* %view, %struct._GimpDataFactoryView** %view.addr, align 8
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataFactoryViewPriv*
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %3, i32 0, i32 1
  store %struct._GimpDataFactoryViewPriv* %2, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %4 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %4, i32 0, i32 1
  %5 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv2, align 8
  %tagged_container = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %5, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %tagged_container, align 8
  %6 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv3, align 8
  %query_tag_entry = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %7, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %query_tag_entry, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %8, i32 0, i32 1
  %9 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv4, align 8
  %assign_tag_entry = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %9, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %assign_tag_entry, align 8
  %10 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv5, align 8
  %selected_items = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %11, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %selected_items, align 8
  %12 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %12, i32 0, i32 1
  %13 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv6, align 8
  %edit_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %13, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %edit_button, align 8
  %14 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %14, i32 0, i32 1
  %15 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv7, align 8
  %new_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %15, i32 0, i32 7
  store %struct._GtkWidget* null, %struct._GtkWidget** %new_button, align 8
  %16 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv8 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %16, i32 0, i32 1
  %17 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv8, align 8
  %duplicate_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %17, i32 0, i32 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %duplicate_button, align 8
  %18 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv9 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %18, i32 0, i32 1
  %19 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv9, align 8
  %delete_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %19, i32 0, i32 9
  store %struct._GtkWidget* null, %struct._GtkWidget** %delete_button, align 8
  %20 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %20, i32 0, i32 1
  %21 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv10, align 8
  %refresh_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %21, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %refresh_button, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_data_factory_view_new(i32 %view_type, %struct._GimpDataFactory* %factory, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width, %struct._GimpMenuFactory* %menu_factory, i8* %menu_identifier, i8* %ui_path, i8* %action_group) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view_type.addr = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %menu_identifier.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %action_group.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst58 = alloca %struct._GTypeInstance*, align 8
  %__t60 = alloca i64, align 8
  %__r63 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store i8* %menu_identifier, i8** %menu_identifier.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store i8* %action_group, i8** %action_group.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
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
  %call16 = call i64 @gimp_context_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %view_size.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %view_size.addr, align 4
  %cmp42 = icmp sle i32 %27, 2048
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load i32, i32* %view_border_width.addr, align 4
  %cmp48 = icmp sge i32 %28, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.52

land.lhs.true.49:                                 ; preds = %do.body.47
  %29 = load i32, i32* %view_border_width.addr, align 4
  %cmp50 = icmp sle i32 %29, 16
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.49
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true.49, %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %30 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %cmp56 = icmp eq %struct._GimpMenuFactory* %30, null
  br i1 %cmp56, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.55
  %31 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %32 = bitcast %struct._GimpMenuFactory* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst58, align 8
  %call61 = call i64 @gimp_menu_factory_get_type() #7
  store i64 %call61, i64* %__t60, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %tobool64 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r63, align 4
  br label %if.end.77

if.else.66:                                       ; preds = %lor.lhs.false
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %tobool68 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.else.74

land.lhs.true.69:                                 ; preds = %if.else.66
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %g_type71 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type71, align 8
  %39 = load i64, i64* %__t60, align 8
  %cmp72 = icmp eq i64 %38, %39
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %__r63, align 4
  br label %if.end.76

if.else.74:                                       ; preds = %land.lhs.true.69, %if.else.66
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %41 = load i64, i64* %__t60, align 8
  %call75 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #8
  store i32 %call75, i32* %__r63, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.65
  %42 = load i32, i32* %__r63, align 4
  store i32 %42, i32* %tmp78
  %43 = load i32, i32* %tmp78
  %tobool79 = icmp ne i32 %43, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.77, %do.body.55
  br label %if.end.82

if.else.81:                                       ; preds = %if.end.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %44 = load i8*, i8** %action_group.addr, align 8
  %cmp85 = icmp ne i8* %44, null
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.84
  br label %if.end.88

if.else.87:                                       ; preds = %do.body.84
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_view_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.88:                                        ; preds = %if.then.86
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  %call90 = call i64 @gimp_data_factory_view_get_type() #7
  %45 = load i32, i32* %view_type.addr, align 4
  %46 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %48 = load i32, i32* %view_size.addr, align 4
  %49 = load i32, i32* %view_border_width.addr, align 4
  %50 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %51 = load i8*, i8** %menu_identifier.addr, align 8
  %52 = load i8*, i8** %ui_path.addr, align 8
  %53 = load i8*, i8** %action_group.addr, align 8
  %call91 = call i8* (i64, i8*, ...) @g_object_new(i64 %call90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._GimpDataFactory* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContext* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct._GimpMenuFactory* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %53, i8* null)
  %54 = bitcast i8* %call91 to %struct._GtkWidget*
  store %struct._GtkWidget* %54, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.89, %if.else.87, %if.else.81, %if.else.52, %if.else.44, %if.else.36, %if.else.9
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %55
}

; Function Attrs: nounwind readnone
declare i64 @gimp_data_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_data_factory_view_get_edit_button(%struct._GimpDataFactoryView* %factory_view) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_data_factory_view_get_edit_button, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %edit_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_data_factory_view_get_duplicate_button(%struct._GimpDataFactoryView* %factory_view) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_data_factory_view_get_duplicate_button, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %duplicate_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %duplicate_button, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView* %factory_view) #3 {
entry:
  %retval = alloca %struct._GimpDataFactory*, align 8
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_data_factory_view_get_data_factory, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  store %struct._GimpDataFactory* %15, %struct._GimpDataFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %retval
  ret %struct._GimpDataFactory* %16
}

; Function Attrs: nounwind uwtable
define i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %factory_view) #3 {
entry:
  %retval = alloca i64, align 8
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_data_factory_view_get_children_type, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store i64 4, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call11 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %15)
  %call12 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call11)
  store i64 %call12, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_data_factory_view_has_data_new_func(%struct._GimpDataFactoryView* %factory_view) #3 {
entry:
  %retval = alloca i32, align 4
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_data_factory_view_has_data_new_func, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call11 = call i32 @gimp_data_factory_has_data_new_func(%struct._GimpDataFactory* %15)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gimp_data_factory_has_data_new_func(%struct._GimpDataFactory*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView* %factory_view, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %factory_view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactoryView* %factory_view, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_data_factory_view_have, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call11 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %15)
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call12 = call i32 @gimp_container_have(%struct._GimpContainer* %call11, %struct._GimpObject* %16)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_class_init(%struct._GimpDataFactoryViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDataFactoryViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %editor_class = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GimpDataFactoryViewClass* %klass, %struct._GimpDataFactoryViewClass** %klass.addr, align 8
  %0 = load %struct._GimpDataFactoryViewClass*, %struct._GimpDataFactoryViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDataFactoryViewClass*, %struct._GimpDataFactoryViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDataFactoryViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_editor_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %5, %struct._GimpContainerEditorClass** %editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructor = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 2
  store %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)* @gimp_data_factory_view_constructor, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)** %constructor, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_data_factory_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_data_factory_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_factory_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_factory_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %editor_class, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %11, i32 0, i32 1
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* @gimp_data_factory_view_select_item, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item, align 8
  %12 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %editor_class, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %12, i32 0, i32 2
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* @gimp_data_factory_view_activate_item, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_data_factory_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call4)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 2, %struct._GParamSpec* %call5)
  %15 = load %struct._GimpDataFactoryViewClass*, %struct._GimpDataFactoryViewClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpDataFactoryViewClass* %15 to i8*
  call void @g_type_class_add_private(i8* %16, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GObject* @gimp_data_factory_view_constructor(i64 %type, i32 %n_construct_params, %struct._GObjectConstructParam* %construct_params) #3 {
entry:
  %type.addr = alloca i64, align 8
  %n_construct_params.addr = alloca i32, align 4
  %construct_params.addr = alloca %struct._GObjectConstructParam*, align 8
  %factory_view = alloca %struct._GimpDataFactoryView*, align 8
  %object = alloca %struct._GObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 %n_construct_params, i32* %n_construct_params.addr, align 4
  store %struct._GObjectConstructParam* %construct_params, %struct._GObjectConstructParam** %construct_params.addr, align 8
  %0 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructor = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 2
  %3 = load %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)** %constructor, align 8
  %4 = load i64, i64* %type.addr, align 8
  %5 = load i32, i32* %n_construct_params.addr, align 4
  %6 = load %struct._GObjectConstructParam*, %struct._GObjectConstructParam** %construct_params.addr, align 8
  %call1 = call %struct._GObject* %3(i64 %4, i32 %5, %struct._GObjectConstructParam* %6)
  store %struct._GObject* %call1, %struct._GObject** %object, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object, align 8
  %8 = bitcast %struct._GObject* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_factory_view_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %9, %struct._GimpDataFactoryView** %factory_view, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %11, i32 0, i32 0
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %13 = bitcast %struct._GimpDataFactory* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_data_factory_get_type() #7
  store i64 %call4, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %19, %20
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.10
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.10
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_data_factory_view_constructor, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0)) #9
  unreachable

if.end.14:                                        ; preds = %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %25 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv16 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %25, i32 0, i32 1
  %26 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv16, align 8
  %action_group = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %26, i32 0, i32 1
  %27 = load i8*, i8** %action_group, align 8
  %cmp17 = icmp ne i8* %27, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.15
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.15
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_data_factory_view_constructor, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0)) #9
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %28 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv22 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %28, i32 0, i32 1
  %29 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv22, align 8
  %factory23 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %29, i32 0, i32 0
  %30 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory23, align 8
  %call24 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %30)
  %call25 = call %struct._GimpContainer* @gimp_tagged_container_new(%struct._GimpContainer* %call24)
  %31 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv26 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %31, i32 0, i32 1
  %32 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv26, align 8
  %tagged_container = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %32, i32 0, i32 2
  store %struct._GimpContainer* %call25, %struct._GimpContainer** %tagged_container, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %35 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv27 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %35, i32 0, i32 1
  %36 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv27, align 8
  %tagged_container28 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %36, i32 0, i32 2
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %tagged_container28, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct._GimpContainer* %37, i8* null)
  %38 = load %struct._GObject*, %struct._GObject** %object, align 8
  ret %struct._GObject* %38
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory_view = alloca %struct._GimpDataFactoryView*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %factory_view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %5, %struct._GimpContainerEditor** %editor, align 8
  %6 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  call void @gimp_container_editor_set_selection_mode(%struct._GimpContainerEditor* %15, i32 3)
  %16 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %18 = bitcast %struct._GimpContainerView* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_container_tree_view_get_type() #7
  store i64 %call7, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %24, %25
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %29, 0
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.16
  %30 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view20 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %30, i32 0, i32 1
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view20, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_container_tree_view_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %33, %struct._GimpContainerTreeView** %tree_view, align 8
  %34 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %35 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %36 = bitcast %struct._GimpDataFactoryView* %35 to i8*
  call void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView* %34, void ()* bitcast (void (%struct._GtkCellRendererText*, i8*, i8*, %struct._GimpDataFactoryView*)* @gimp_data_factory_view_tree_name_edited to void ()*), i8* %36)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.16
  %37 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %37, i32 0, i32 1
  %38 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %action_group = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %38, i32 0, i32 1
  %39 = load i8*, i8** %action_group, align 8
  %call24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* %39)
  store i8* %call24, i8** %str, align 8
  %40 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view25 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %40, i32 0, i32 1
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view25, align 8
  %42 = bitcast %struct._GimpContainerView* %41 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_editor_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call26)
  %43 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpEditor*
  %44 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv28 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %44, i32 0, i32 1
  %45 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv28, align 8
  %action_group29 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %45, i32 0, i32 1
  %46 = load i8*, i8** %action_group29, align 8
  %47 = load i8*, i8** %str, align 8
  %call30 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %43, i8* %46, i8* %47, i8* null)
  %48 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv31 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %48, i32 0, i32 1
  %49 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv31, align 8
  %edit_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %49, i32 0, i32 6
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %edit_button, align 8
  %50 = load i8*, i8** %str, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %call32 = call i32 @gimp_data_factory_view_has_data_new_func(%struct._GimpDataFactoryView* %51)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.23
  %52 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv35 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %52, i32 0, i32 1
  %53 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv35, align 8
  %action_group36 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %53, i32 0, i32 1
  %54 = load i8*, i8** %action_group36, align 8
  %call37 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* %54)
  store i8* %call37, i8** %str, align 8
  %55 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view38 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %55, i32 0, i32 1
  %56 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view38, align 8
  %57 = bitcast %struct._GimpContainerView* %56 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_editor_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call39)
  %58 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpEditor*
  %59 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv41 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %59, i32 0, i32 1
  %60 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv41, align 8
  %action_group42 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %60, i32 0, i32 1
  %61 = load i8*, i8** %action_group42, align 8
  %62 = load i8*, i8** %str, align 8
  %call43 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %58, i8* %61, i8* %62, i8* null)
  %63 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv44 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %63, i32 0, i32 1
  %64 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv44, align 8
  %new_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %64, i32 0, i32 7
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %new_button, align 8
  %65 = load i8*, i8** %str, align 8
  call void @g_free(i8* %65)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.34, %if.end.23
  %66 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv46 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %66, i32 0, i32 1
  %67 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv46, align 8
  %action_group47 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %67, i32 0, i32 1
  %68 = load i8*, i8** %action_group47, align 8
  %call48 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* %68)
  store i8* %call48, i8** %str, align 8
  %69 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view49 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %69, i32 0, i32 1
  %70 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view49, align 8
  %71 = bitcast %struct._GimpContainerView* %70 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_editor_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call50)
  %72 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpEditor*
  %73 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv52 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %73, i32 0, i32 1
  %74 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv52, align 8
  %action_group53 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %74, i32 0, i32 1
  %75 = load i8*, i8** %action_group53, align 8
  %76 = load i8*, i8** %str, align 8
  %call54 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %72, i8* %75, i8* %76, i8* null)
  %77 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv55 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %77, i32 0, i32 1
  %78 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv55, align 8
  %duplicate_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %78, i32 0, i32 8
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %duplicate_button, align 8
  %79 = load i8*, i8** %str, align 8
  call void @g_free(i8* %79)
  %80 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv56 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %80, i32 0, i32 1
  %81 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv56, align 8
  %action_group57 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %81, i32 0, i32 1
  %82 = load i8*, i8** %action_group57, align 8
  %call58 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* %82)
  store i8* %call58, i8** %str, align 8
  %83 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view59 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %83, i32 0, i32 1
  %84 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view59, align 8
  %85 = bitcast %struct._GimpContainerView* %84 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_editor_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call60)
  %86 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpEditor*
  %87 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv62 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %87, i32 0, i32 1
  %88 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv62, align 8
  %action_group63 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %88, i32 0, i32 1
  %89 = load i8*, i8** %action_group63, align 8
  %90 = load i8*, i8** %str, align 8
  %call64 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %86, i8* %89, i8* %90, i8* null)
  %91 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv65 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %91, i32 0, i32 1
  %92 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv65, align 8
  %delete_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %92, i32 0, i32 9
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %delete_button, align 8
  %93 = load i8*, i8** %str, align 8
  call void @g_free(i8* %93)
  %94 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv66 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %94, i32 0, i32 1
  %95 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv66, align 8
  %action_group67 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %95, i32 0, i32 1
  %96 = load i8*, i8** %action_group67, align 8
  %call68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* %96)
  store i8* %call68, i8** %str, align 8
  %97 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view69 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %97, i32 0, i32 1
  %98 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view69, align 8
  %99 = bitcast %struct._GimpContainerView* %98 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_editor_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call70)
  %100 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpEditor*
  %101 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv72 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %101, i32 0, i32 1
  %102 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv72, align 8
  %action_group73 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %102, i32 0, i32 1
  %103 = load i8*, i8** %action_group73, align 8
  %104 = load i8*, i8** %str, align 8
  %call74 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %100, i8* %103, i8* %104, i8* null)
  %105 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv75 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %105, i32 0, i32 1
  %106 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv75, align 8
  %refresh_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %106, i32 0, i32 10
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %refresh_button, align 8
  %107 = load i8*, i8** %str, align 8
  call void @g_free(i8* %107)
  %108 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv76 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %108, i32 0, i32 1
  %109 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv76, align 8
  %tagged_container = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %109, i32 0, i32 2
  %110 = load %struct._GimpContainer*, %struct._GimpContainer** %tagged_container, align 8
  %111 = bitcast %struct._GimpContainer* %110 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_tagged_container_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call77)
  %112 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpTaggedContainer*
  %call79 = call %struct._GtkWidget* @gimp_combo_tag_entry_new(%struct._GimpTaggedContainer* %112, i32 0)
  %113 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv80 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %113, i32 0, i32 1
  %114 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv80, align 8
  %query_tag_entry = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %114, i32 0, i32 3
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %query_tag_entry, align 8
  %115 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view81 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %115, i32 0, i32 1
  %116 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view81, align 8
  %117 = bitcast %struct._GimpContainerView* %116 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call82)
  %118 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %119 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv84 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %119, i32 0, i32 1
  %120 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv84, align 8
  %query_tag_entry85 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %120, i32 0, i32 3
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %query_tag_entry85, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %121, i32 0, i32 0, i32 0)
  %122 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view86 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %122, i32 0, i32 1
  %123 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view86, align 8
  %124 = bitcast %struct._GimpContainerView* %123 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call87)
  %125 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %126 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv89 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %126, i32 0, i32 1
  %127 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv89, align 8
  %query_tag_entry90 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %127, i32 0, i32 3
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %query_tag_entry90, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %125, %struct._GtkWidget* %128, i32 0)
  %129 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv91 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %129, i32 0, i32 1
  %130 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv91, align 8
  %query_tag_entry92 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %130, i32 0, i32 3
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %query_tag_entry92, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %132 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv93 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %132, i32 0, i32 1
  %133 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv93, align 8
  %tagged_container94 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %133, i32 0, i32 2
  %134 = load %struct._GimpContainer*, %struct._GimpContainer** %tagged_container94, align 8
  %135 = bitcast %struct._GimpContainer* %134 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_tagged_container_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call95)
  %136 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpTaggedContainer*
  %call97 = call %struct._GtkWidget* @gimp_combo_tag_entry_new(%struct._GimpTaggedContainer* %136, i32 1)
  %137 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv98 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %137, i32 0, i32 1
  %138 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv98, align 8
  %assign_tag_entry = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %138, i32 0, i32 4
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %assign_tag_entry, align 8
  %139 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv99 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %139, i32 0, i32 1
  %140 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv99, align 8
  %assign_tag_entry100 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %140, i32 0, i32 4
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %assign_tag_entry100, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_tag_entry_get_type() #7
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call101)
  %143 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpTagEntry*
  %144 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv103 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %144, i32 0, i32 1
  %145 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv103, align 8
  %selected_items = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %145, i32 0, i32 5
  %146 = load %struct._GList*, %struct._GList** %selected_items, align 8
  call void @gimp_tag_entry_set_selected_items(%struct._GimpTagEntry* %143, %struct._GList* %146)
  %147 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv104 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %147, i32 0, i32 1
  %148 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv104, align 8
  %selected_items105 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %148, i32 0, i32 5
  %149 = load %struct._GList*, %struct._GList** %selected_items105, align 8
  call void @g_list_free(%struct._GList* %149)
  %150 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv106 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %150, i32 0, i32 1
  %151 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv106, align 8
  %selected_items107 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %151, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %selected_items107, align 8
  %152 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view108 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %152, i32 0, i32 1
  %153 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view108, align 8
  %154 = bitcast %struct._GimpContainerView* %153 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_box_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call109)
  %155 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkBox*
  %156 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv111 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %156, i32 0, i32 1
  %157 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv111, align 8
  %assign_tag_entry112 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %157, i32 0, i32 4
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %assign_tag_entry112, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %155, %struct._GtkWidget* %158, i32 0, i32 0, i32 0)
  %159 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv113 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %159, i32 0, i32 1
  %160 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv113, align 8
  %assign_tag_entry114 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %160, i32 0, i32 4
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %assign_tag_entry114, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %161)
  %162 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view115 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %162, i32 0, i32 1
  %163 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view115, align 8
  %164 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv116 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %164, i32 0, i32 1
  %165 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv116, align 8
  %edit_button117 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %165, i32 0, i32 6
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button117, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_button_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call118)
  %168 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkButton*
  %169 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv120 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %169, i32 0, i32 1
  %170 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv120, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %170, i32 0, i32 0
  %171 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call121 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %171)
  %call122 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call121)
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %163, %struct._GtkButton* %168, i64 %call122)
  %172 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view123 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %172, i32 0, i32 1
  %173 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view123, align 8
  %174 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv124 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %174, i32 0, i32 1
  %175 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv124, align 8
  %duplicate_button125 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %175, i32 0, i32 8
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %duplicate_button125, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_button_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call126)
  %178 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkButton*
  %179 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv128 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %179, i32 0, i32 1
  %180 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv128, align 8
  %factory129 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %180, i32 0, i32 0
  %181 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory129, align 8
  %call130 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %181)
  %call131 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call130)
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %173, %struct._GtkButton* %178, i64 %call131)
  %182 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view132 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %182, i32 0, i32 1
  %183 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view132, align 8
  %184 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv133 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %184, i32 0, i32 1
  %185 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv133, align 8
  %delete_button134 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %185, i32 0, i32 9
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button134, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_button_get_type() #7
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call135)
  %188 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkButton*
  %189 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv137 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %189, i32 0, i32 1
  %190 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv137, align 8
  %factory138 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %190, i32 0, i32 0
  %191 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory138, align 8
  %call139 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %191)
  %call140 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call139)
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %183, %struct._GtkButton* %188, i64 %call140)
  %192 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view141 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %192, i32 0, i32 1
  %193 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view141, align 8
  %194 = bitcast %struct._GimpContainerView* %193 to %struct._GTypeInstance*
  %call142 = call i64 @gimp_editor_get_type() #7
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call142)
  %195 = bitcast %struct._GTypeInstance* %call143 to %struct._GimpEditor*
  %call144 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %195)
  %196 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %197 = bitcast %struct._GimpContainerEditor* %196 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call144, i8* %197)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory_view = alloca %struct._GimpDataFactoryView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %factory_view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %3, i32 0, i32 1
  %4 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %tagged_container = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %4, i32 0, i32 2
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %tagged_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv2 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv2, align 8
  %tagged_container3 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %7, i32 0, i32 2
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %tagged_container3, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv4 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv4, align 8
  %tagged_container5 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %11, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %tagged_container5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv6 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %12, i32 0, i32 1
  %13 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv6, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %13, i32 0, i32 0
  %14 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %tobool7 = icmp ne %struct._GimpDataFactory* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %15, i32 0, i32 1
  %16 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv9, align 8
  %factory10 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %16, i32 0, i32 0
  %17 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory10, align 8
  %18 = bitcast %struct._GimpDataFactory* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %19, i32 0, i32 1
  %20 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv11, align 8
  %factory12 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %20, i32 0, i32 0
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %factory12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv14 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %21, i32 0, i32 1
  %22 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv14, align 8
  %action_group = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %22, i32 0, i32 1
  %23 = load i8*, i8** %action_group, align 8
  %tobool15 = icmp ne i8* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %24, i32 0, i32 1
  %25 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv17, align 8
  %action_group18 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %25, i32 0, i32 1
  %26 = load i8*, i8** %action_group18, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv19 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %27, i32 0, i32 1
  %28 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv19, align 8
  %action_group20 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %28, i32 0, i32 1
  store i8* null, i8** %action_group20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %29 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %30 = bitcast i8* %29 to %struct._GTypeClass*
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %30, i64 80)
  %31 = bitcast %struct._GTypeClass* %call22 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %31, i32 0, i32 5
  %32 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %32(%struct._GObject* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %factory_view = alloca %struct._GimpDataFactoryView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %factory_view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDataFactory*
  %6 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %7, i32 0, i32 0
  store %struct._GimpDataFactory* %5, %struct._GimpDataFactory** %factory, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %8)
  %9 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv5 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %9, i32 0, i32 1
  %10 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv5, align 8
  %action_group = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %10, i32 0, i32 1
  store i8* %call4, i8** %action_group, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 338, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %14, i8* %16, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %factory_view = alloca %struct._GimpDataFactoryView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %factory_view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %5, i32 0, i32 1
  %6 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %factory = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %6, i32 0, i32 0
  %7 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %8 = bitcast %struct._GimpDataFactory* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %factory_view, align 8
  %priv3 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv3, align 8
  %action_group = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %11, i32 0, i32 1
  %12 = load i8*, i8** %action_group, align 8
  call void @g_value_set_string(%struct._GValue* %9, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_select_item(%struct._GimpContainerEditor* %editor, %struct._GimpViewable* %viewable) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %active_items = alloca %struct._GList*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_container_editor_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpContainerEditorClass*
  %select_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gimp_container_editor_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GimpContainerEditorClass*
  %select_item6 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %9, i32 0, i32 1
  %10 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item6, align 8
  %11 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %10(%struct._GimpContainerEditor* %11, %struct._GimpViewable* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %assign_tag_entry = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %assign_tag_entry, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view9 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view9, align 8
  %18 = bitcast %struct._GimpContainerView* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_view_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %19, %struct._GimpContainerView** %container_view, align 8
  store %struct._GList* null, %struct._GList** %active_items, align 8
  %20 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call12 = call i32 @gimp_container_view_get_selected(%struct._GimpContainerView* %20, %struct._GList** %active_items)
  %21 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv13 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %21, i32 0, i32 1
  %22 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv13, align 8
  %assign_tag_entry14 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %22, i32 0, i32 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %assign_tag_entry14, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_tag_entry_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpTagEntry*
  %26 = load %struct._GList*, %struct._GList** %active_items, align 8
  call void @gimp_tag_entry_set_selected_items(%struct._GimpTagEntry* %25, %struct._GList* %26)
  %27 = load %struct._GList*, %struct._GList** %active_items, align 8
  call void @g_list_free(%struct._GList* %27)
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool17 = icmp ne %struct._GimpViewable* %28, null
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.else
  %29 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv19 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv19, align 8
  %selected_items = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %30, i32 0, i32 5
  %31 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %33 = bitcast %struct._GimpViewable* %32 to i8*
  %call20 = call %struct._GList* @g_list_append(%struct._GList* %31, i8* %33)
  %34 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv21 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %34, i32 0, i32 1
  %35 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv21, align 8
  %selected_items22 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %35, i32 0, i32 5
  store %struct._GList* %call20, %struct._GList** %selected_items22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_activate_item(%struct._GimpContainerEditor* %editor, %struct._GimpViewable* %viewable) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpData*
  store %struct._GimpData* %5, %struct._GimpData** %data, align 8
  %6 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_container_editor_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpContainerEditorClass*
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %8, i32 0, i32 2
  %9 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_data_factory_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call i64 @gimp_container_editor_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call6)
  %12 = bitcast %struct._GTypeClass* %call7 to %struct._GimpContainerEditorClass*
  %activate_item8 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %12, i32 0, i32 2
  %13 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item8, align 8
  %14 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %13(%struct._GimpContainerEditor* %14, %struct._GimpViewable* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool9 = icmp ne %struct._GimpData* %16, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %18 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %19 = bitcast %struct._GimpData* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView* %17, %struct._GimpObject* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %21, i32 0, i32 1
  %22 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv, align 8
  %edit_button = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %22, i32 0, i32 6
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %if.then.14
  %24 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv17 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %24, i32 0, i32 1
  %25 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv17, align 8
  %edit_button18 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button18, align 8
  %call19 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %26)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %land.lhs.true.16
  %27 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %priv22 = getelementptr inbounds %struct._GimpDataFactoryView, %struct._GimpDataFactoryView* %27, i32 0, i32 1
  %28 = load %struct._GimpDataFactoryViewPriv*, %struct._GimpDataFactoryViewPriv** %priv22, align 8
  %edit_button23 = getelementptr inbounds %struct._GimpDataFactoryViewPriv, %struct._GimpDataFactoryViewPriv* %28, i32 0, i32 6
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button23, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_button_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %31)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %land.lhs.true.16, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GimpContainer* @gimp_tagged_container_new(%struct._GimpContainer*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_container_editor_set_selection_mode(%struct._GimpContainerEditor*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_view_tree_name_edited(%struct._GtkCellRendererText* %cell, i8* %path_str, i8* %new_name, %struct._GimpDataFactoryView* %view) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRendererText*, align 8
  %path_str.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GimpDataFactoryView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %data = alloca %struct._GimpData*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkCellRendererText* %cell, %struct._GtkCellRendererText** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store %struct._GimpDataFactoryView* %view, %struct._GimpDataFactoryView** %view.addr, align 8
  %0 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  %view2 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %2, i32 0, i32 1
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view2, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_tree_view_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load i8*, i8** %path_str.addr, align 8
  %call5 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %6)
  store %struct._GtkTreePath* %call5, %struct._GtkTreePath** %path, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call6 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %9)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model7 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model7, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 3
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  store %struct._GimpData* %15, %struct._GimpData** %data, align 8
  %16 = load i8*, i8** %new_name.addr, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8** %new_name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %17 = load i8*, i8** %new_name.addr, align 8
  %call12 = call noalias i8* @g_strdup(i8* %17)
  %call13 = call i8* @g_strchug(i8* %call12)
  %call14 = call i8* @g_strchomp(i8* %call13)
  store i8* %call14, i8** %name, align 8
  %18 = load %struct._GtkCellRendererText*, %struct._GtkCellRendererText** %cell.addr, align 8
  %19 = bitcast %struct._GtkCellRendererText* %18 to i8*
  %20 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %21 = bitcast %struct._GimpDataFactoryView* %20 to i8*
  %call15 = call i32 @g_signal_handlers_block_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkCellRendererText*, i8*, i8*, %struct._GimpDataFactoryView*)* @gimp_data_factory_view_tree_name_edited to i8*), i8* %21)
  %22 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %22)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %23 = load i8*, i8** %name, align 8
  %call18 = call i64 @strlen(i8* %23) #8
  %tobool19 = icmp ne i64 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true
  %24 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %25 = bitcast %struct._GimpData* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  %27 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %26, i8* %27)
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.end
  %28 = load i8*, i8** %name, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable23 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %29, i32 0, i32 3
  %30 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable23, align 8
  %call24 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %30, i8** null)
  store i8* %call24, i8** %name, align 8
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model25 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %31, i32 0, i32 1
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model25, align 8
  %33 = bitcast %struct._GtkTreeModel* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_tree_store_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTreeStore*
  %35 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %34, %struct._GtkTreeIter* %iter, i32 1, i8* %35, i32 -1)
  %36 = load i8*, i8** %name, align 8
  call void @g_free(i8* %36)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.20
  %37 = load %struct._GtkCellRendererText*, %struct._GtkCellRendererText** %cell.addr, align 8
  %38 = bitcast %struct._GtkCellRendererText* %37 to i8*
  %39 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view.addr, align 8
  %40 = bitcast %struct._GimpDataFactoryView* %39 to i8*
  %call29 = call i32 @g_signal_handlers_unblock_matched(i8* %38, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkCellRendererText*, i8*, i8*, %struct._GimpDataFactoryView*)* @gimp_data_factory_view_tree_name_edited to i8*), i8* %40)
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %42 = bitcast %struct._GimpViewRenderer* %41 to i8*
  call void @g_object_unref(i8* %42)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %entry
  %43 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %43)
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gimp_combo_tag_entry_new(%struct._GimpTaggedContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_tag_entry_set_selected_items(%struct._GimpTagEntry*, %struct._GList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_entry_get_type() #2

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare i32 @gimp_container_view_get_selected(%struct._GimpContainerView*, %struct._GList**) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare void @gtk_button_clicked(%struct._GtkButton*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
