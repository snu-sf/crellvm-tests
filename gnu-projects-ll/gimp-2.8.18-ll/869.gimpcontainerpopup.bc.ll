; ModuleID = './app/widgets/gimpcontainerpopup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpContainerPopupClass = type { %struct._GtkWindowClass, void (%struct._GimpContainerPopup*)*, void (%struct._GimpContainerPopup*)* }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpContainerPopup = type { %struct._GtkWindow, %struct._GimpContainer*, %struct._GimpContext*, %struct._GimpContext*, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GimpContainerEditor*, %struct._GimpDialogFactory*, i8*, i8*, i8* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpWindowStrategy = type opaque

@gimp_container_popup_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpContainerPopup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_popup_new = private unnamed_addr constant [25 x i8] c"gimp_container_popup_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"default_view_size > 0 && default_view_size <= GIMP_VIEWABLE_MAX_POPUP_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_POPUP_SIZE\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"dialog_factory == NULL || GIMP_IS_DIALOG_FACTORY (dialog_factory)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dialog_identifier != NULL\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"dialog_stock_id != NULL\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"dialog_tooltip != NULL\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"popup\00", align 1
@__func__.gimp_container_popup_show = private unnamed_addr constant [26 x i8] c"gimp_container_popup_show\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"GIMP_IS_CONTAINER_POPUP (popup)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_container_popup_get_view_type = private unnamed_addr constant [35 x i8] c"gimp_container_popup_get_view_type\00", align 1
@__func__.gimp_container_popup_set_view_type = private unnamed_addr constant [35 x i8] c"gimp_container_popup_set_view_type\00", align 1
@__func__.gimp_container_popup_get_view_size = private unnamed_addr constant [35 x i8] c"gimp_container_popup_get_view_size\00", align 1
@__func__.gimp_container_popup_set_view_size = private unnamed_addr constant [35 x i8] c"gimp_container_popup_set_view_size\00", align 1
@gimp_container_popup_parent_class = internal global i8* null, align 8
@GimpContainerPopup_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@popup_signals = internal global [2 x i32] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"confirm\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"grab-notify\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"grab-broken-event\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Smaller Previews\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Larger Previews\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_popup_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_popup_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_popup_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_window_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 920, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_popup_class_intern_init to void (i8*, i8*)*), i32 328, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerPopup*)* @gimp_container_popup_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_popup_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_container_popup_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_popup_parent_class, align 8
  %1 = load i32, i32* @GimpContainerPopup_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerPopup_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerPopupClass*
  call void @gimp_container_popup_class_init(%struct._GimpContainerPopupClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_init(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %0, i32 0, i32 4
  store i32 0, i32* %view_type, align 4
  %1 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %default_view_size = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %1, i32 0, i32 5
  store i32 24, i32* %default_view_size, align 4
  %2 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %2, i32 0, i32 6
  store i32 24, i32* %view_size, align 4
  %3 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %3, i32 0, i32 7
  store i32 1, i32* %view_border_width, align 4
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  %4 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %frame = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %4, i32 0, i32 8
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %frame1 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %5, i32 0, i32 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame1, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_frame_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %8, i32 2)
  %9 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %10 = bitcast %struct._GimpContainerPopup* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %12 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %frame6 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %12, i32 0, i32 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame6, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %13)
  %14 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %frame7 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %14, i32 0, i32 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_popup_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_type, i32 %default_view_size, i32 %view_size, i32 %view_border_width, %struct._GimpDialogFactory* %dialog_factory, i8* %dialog_identifier, i8* %dialog_stock_id, i8* %dialog_tooltip) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_type.addr = alloca i32, align 4
  %default_view_size.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %dialog_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog_identifier.addr = alloca i8*, align 8
  %dialog_stock_id.addr = alloca i8*, align 8
  %dialog_tooltip.addr = alloca i8*, align 8
  %popup = alloca %struct._GimpContainerPopup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst66 = alloca %struct._GTypeInstance*, align 8
  %__t68 = alloca i64, align 8
  %__r71 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %default_view_size, i32* %default_view_size.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  store %struct._GimpDialogFactory* %dialog_factory, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  store i8* %dialog_identifier, i8** %dialog_identifier.addr, align 8
  store i8* %dialog_stock_id, i8** %dialog_stock_id.addr, align 8
  store i8* %dialog_tooltip, i8** %dialog_tooltip.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %default_view_size.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %default_view_size.addr, align 4
  %cmp42 = icmp sle i32 %27, 256
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load i32, i32* %view_size.addr, align 4
  %cmp48 = icmp sgt i32 %28, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.52

land.lhs.true.49:                                 ; preds = %do.body.47
  %29 = load i32, i32* %view_size.addr, align 4
  %cmp50 = icmp sle i32 %29, 256
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.49
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true.49, %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %30 = load i32, i32* %view_border_width.addr, align 4
  %cmp56 = icmp sge i32 %30, 0
  br i1 %cmp56, label %land.lhs.true.57, label %if.else.60

land.lhs.true.57:                                 ; preds = %do.body.55
  %31 = load i32, i32* %view_border_width.addr, align 4
  %cmp58 = icmp sle i32 %31, 16
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.57
  br label %if.end.61

if.else.60:                                       ; preds = %land.lhs.true.57, %do.body.55
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %32 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %cmp64 = icmp eq %struct._GimpDialogFactory* %32, null
  br i1 %cmp64, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.63
  %33 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %34 = bitcast %struct._GimpDialogFactory* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst66, align 8
  %call69 = call i64 @gimp_dialog_factory_get_type() #6
  store i64 %call69, i64* %__t68, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst66, align 8
  %tobool72 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool72, label %if.else.74, label %if.then.73

if.then.73:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r71, align 4
  br label %if.end.85

if.else.74:                                       ; preds = %lor.lhs.false
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst66, align 8
  %g_class75 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class75, align 8
  %tobool76 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.else.82

land.lhs.true.77:                                 ; preds = %if.else.74
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst66, align 8
  %g_class78 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class78, align 8
  %g_type79 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type79, align 8
  %41 = load i64, i64* %__t68, align 8
  %cmp80 = icmp eq i64 %40, %41
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %land.lhs.true.77
  store i32 1, i32* %__r71, align 4
  br label %if.end.84

if.else.82:                                       ; preds = %land.lhs.true.77, %if.else.74
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst66, align 8
  %43 = load i64, i64* %__t68, align 8
  %call83 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #7
  store i32 %call83, i32* %__r71, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.81
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.73
  %44 = load i32, i32* %__r71, align 4
  store i32 %44, i32* %tmp86
  %45 = load i32, i32* %tmp86
  %tobool87 = icmp ne i32 %45, 0
  br i1 %tobool87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.end.85, %do.body.63
  br label %if.end.90

if.else.89:                                       ; preds = %if.end.85
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.90:                                        ; preds = %if.then.88
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  %46 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %tobool92 = icmp ne %struct._GimpDialogFactory* %46, null
  br i1 %tobool92, label %if.then.93, label %if.end.112

if.then.93:                                       ; preds = %do.end.91
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %47 = load i8*, i8** %dialog_identifier.addr, align 8
  %cmp95 = icmp ne i8* %47, null
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.94
  br label %if.end.98

if.else.97:                                       ; preds = %do.body.94
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.98:                                        ; preds = %if.then.96
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %48 = load i8*, i8** %dialog_stock_id.addr, align 8
  %cmp101 = icmp ne i8* %48, null
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.100
  br label %if.end.104

if.else.103:                                      ; preds = %do.body.100
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.104:                                       ; preds = %if.then.102
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %49 = load i8*, i8** %dialog_tooltip.addr, align 8
  %cmp107 = icmp ne i8* %49, null
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.106
  br label %if.end.110

if.else.109:                                      ; preds = %do.body.106
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.110:                                       ; preds = %if.then.108
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.end.91
  %call113 = call i64 @gimp_container_popup_get_type() #6
  %call114 = call i8* (i64, i8*, ...) @g_object_new(i64 %call113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %50 = bitcast i8* %call114 to %struct._GimpContainerPopup*
  store %struct._GimpContainerPopup* %50, %struct._GimpContainerPopup** %popup, align 8
  %51 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %52 = bitcast %struct._GimpContainerPopup* %51 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_window_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call115)
  %53 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %53, i32 0)
  %54 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %55 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %container117 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %55, i32 0, i32 1
  store %struct._GimpContainer* %54, %struct._GimpContainer** %container117, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %57 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %orig_context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %57, i32 0, i32 2
  store %struct._GimpContext* %56, %struct._GimpContext** %orig_context, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %58, i32 0, i32 1
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call118 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._GimpContext* %60)
  %61 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %context119 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %61, i32 0, i32 3
  store %struct._GimpContext* %call118, %struct._GimpContext** %context119, align 8
  %62 = load i32, i32* %view_type.addr, align 4
  %63 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %view_type120 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %63, i32 0, i32 4
  store i32 %62, i32* %view_type120, align 4
  %64 = load i32, i32* %default_view_size.addr, align 4
  %65 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %default_view_size121 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %65, i32 0, i32 5
  store i32 %64, i32* %default_view_size121, align 4
  %66 = load i32, i32* %view_size.addr, align 4
  %67 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %view_size122 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %67, i32 0, i32 6
  store i32 %66, i32* %view_size122, align 4
  %68 = load i32, i32* %view_border_width.addr, align 4
  %69 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %view_border_width123 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %69, i32 0, i32 7
  store i32 %68, i32* %view_border_width123, align 4
  %70 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %context124 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %70, i32 0, i32 3
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context124, align 8
  %72 = bitcast %struct._GimpContext* %71 to i8*
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call125 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %73)
  %call126 = call i8* @gimp_context_type_to_signal_name(i64 %call125)
  %74 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %75 = bitcast %struct._GimpContainerPopup* %74 to i8*
  %call127 = call i64 @g_signal_connect_data(i8* %72, i8* %call126, void ()* bitcast (void (%struct._GimpContext*, %struct._GimpViewable*, %struct._GimpContainerPopup*)* @gimp_container_popup_context_changed to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %tobool128 = icmp ne %struct._GimpDialogFactory* %76, null
  br i1 %tobool128, label %if.then.129, label %if.end.137

if.then.129:                                      ; preds = %if.end.112
  %77 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %78 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_factory130 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %78, i32 0, i32 10
  store %struct._GimpDialogFactory* %77, %struct._GimpDialogFactory** %dialog_factory130, align 8
  %79 = load i8*, i8** %dialog_identifier.addr, align 8
  %call131 = call noalias i8* @g_strdup(i8* %79)
  %80 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_identifier132 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %80, i32 0, i32 11
  store i8* %call131, i8** %dialog_identifier132, align 8
  %81 = load i8*, i8** %dialog_stock_id.addr, align 8
  %call133 = call noalias i8* @g_strdup(i8* %81)
  %82 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_stock_id134 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %82, i32 0, i32 12
  store i8* %call133, i8** %dialog_stock_id134, align 8
  %83 = load i8*, i8** %dialog_tooltip.addr, align 8
  %call135 = call noalias i8* @g_strdup(i8* %83)
  %84 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_tooltip136 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %84, i32 0, i32 13
  store i8* %call135, i8** %dialog_tooltip136, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.129, %if.end.112
  %85 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  call void @gimp_container_popup_create_view(%struct._GimpContainerPopup* %85)
  %86 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %87 = bitcast %struct._GimpContainerPopup* %86 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_widget_get_type() #6
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call138)
  %88 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkWidget*
  store %struct._GtkWidget* %88, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.else.109, %if.else.103, %if.else.97, %if.else.89, %if.else.60, %if.else.52, %if.else.44, %if.else.36, %if.else.9
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %89
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i8* @gimp_context_type_to_signal_name(i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_context_changed(%struct._GimpContext* %context, %struct._GimpViewable* %viewable, %struct._GimpContainerPopup* %popup) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %current_event = alloca %union._GdkEvent*, align 8
  %confirm = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  store i32 0, i32* %confirm, align 4
  %call = call %union._GdkEvent* @gtk_get_current_event()
  store %union._GdkEvent* %call, %union._GdkEvent** %current_event, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %tobool = icmp ne %union._GdkEvent* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %2 = bitcast %union._GdkEvent* %1 to %struct._GdkEventAny*
  %type = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %5 = bitcast %union._GdkEvent* %4 to %struct._GdkEventAny*
  %type1 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %6, 7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %confirm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %lor.lhs.false
  %7 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  call void @gdk_event_free(%union._GdkEvent* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %confirm, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %10 = bitcast %struct._GimpContainerPopup* %9 to i8*
  %11 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %10, i32 %11, i32 0)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_create_view(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %search_entry = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %call = call i64 @gimp_container_editor_get_type() #6
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %0, i32 0, i32 4
  %1 = load i32, i32* %view_type, align 4
  %2 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %container = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %2, i32 0, i32 1
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %4 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %4, i32 0, i32 3
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %6, i32 0, i32 6
  %7 = load i32, i32* %view_size, align 4
  %8 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %8, i32 0, i32 7
  %9 = load i32, i32* %view_border_width, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._GimpContainer* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._GimpContext* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %9, i8* null)
  %10 = bitcast i8* %call1 to %struct._GimpContainerEditor*
  %11 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor2 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %11, i32 0, i32 9
  store %struct._GimpContainerEditor* %10, %struct._GimpContainerEditor** %editor2, align 8
  %12 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor3 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %12, i32 0, i32 9
  %13 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor3, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %15 = bitcast %struct._GimpContainerView* %14 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_view_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call4)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerView*
  call void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %16, i32 0)
  %17 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type6 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %17, i32 0, i32 4
  %18 = load i32, i32* %view_type6, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %search_entry, align 8
  %19 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor8 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %19, i32 0, i32 9
  %20 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor8, align 8
  %view9 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %20, i32 0, i32 1
  %21 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view9, align 8
  %22 = bitcast %struct._GimpContainerView* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor12 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %25, i32 0, i32 9
  %26 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor12, align 8
  %view13 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %26, i32 0, i32 1
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view13, align 8
  %28 = bitcast %struct._GimpContainerView* %27 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_container_view_interface_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call14)
  %29 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpContainerView*
  %30 = bitcast %struct._GimpContainerView* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_container_tree_view_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpContainerTreeView*
  %view18 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %31, i32 0, i32 4
  %32 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view18, align 8
  %33 = bitcast %struct._GtkTreeView* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_tree_view_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTreeView*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_entry_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call21)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkEntry*
  call void @gtk_tree_view_set_search_entry(%struct._GtkTreeView* %34, %struct._GtkEntry* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %39 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor23 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %39, i32 0, i32 9
  %40 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor23, align 8
  %view24 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %40, i32 0, i32 1
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view24, align 8
  %42 = bitcast %struct._GimpContainerView* %41 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_container_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call25)
  %43 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpContainerBox*
  %44 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %default_view_size = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %44, i32 0, i32 5
  %45 = load i32, i32* %default_view_size, align 4
  %46 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width27 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %46, i32 0, i32 7
  %47 = load i32, i32* %view_border_width27, align 4
  %mul = mul nsw i32 2, %47
  %add = add nsw i32 %45, %mul
  %mul28 = mul nsw i32 6, %add
  %48 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %default_view_size29 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %48, i32 0, i32 5
  %49 = load i32, i32* %default_view_size29, align 4
  %50 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width30 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %50, i32 0, i32 7
  %51 = load i32, i32* %view_border_width30, align 4
  %mul31 = mul nsw i32 2, %51
  %add32 = add nsw i32 %49, %mul31
  %mul33 = mul nsw i32 10, %add32
  call void @gimp_container_box_set_size_request(%struct._GimpContainerBox* %43, i32 %mul28, i32 %mul33)
  %52 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor34 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %52, i32 0, i32 9
  %53 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor34, align 8
  %view35 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %53, i32 0, i32 1
  %54 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view35, align 8
  %55 = bitcast %struct._GimpContainerView* %54 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %55, %struct._GTypeInstance** %__inst, align 8
  %call36 = call i64 @gimp_editor_get_type() #6
  store i64 %call36, i64* %__t, align 8
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %56, null
  br i1 %tobool, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %58, null
  br i1 %tobool38, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %if.else
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type, align 8
  %62 = load i64, i64* %__t, align 8
  %cmp40 = icmp eq i64 %61, %62
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true, %if.else
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %64 = load i64, i64* %__t, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %63, i64 %64) #7
  store i32 %call43, i32* %__r, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %65 = load i32, i32* %__r, align 4
  store i32 %65, i32* %tmp
  %66 = load i32, i32* %tmp
  %tobool46 = icmp ne i32 %66, 0
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.45
  %67 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor48 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %67, i32 0, i32 9
  %68 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor48, align 8
  %view49 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %68, i32 0, i32 1
  %69 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view49, align 8
  %70 = bitcast %struct._GimpContainerView* %69 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_editor_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call50)
  %71 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpEditor*
  call void @gimp_editor_set_show_name(%struct._GimpEditor* %71, i32 0)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.45
  %72 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %frame = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %72, i32 0, i32 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_container_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call53)
  %75 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkContainer*
  %76 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor55 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %76, i32 0, i32 9
  %77 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor55, align 8
  %78 = bitcast %struct._GimpContainerEditor* %77 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call56)
  %79 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %75, %struct._GtkWidget* %79)
  %80 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor58 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %80, i32 0, i32 9
  %81 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor58, align 8
  %82 = bitcast %struct._GimpContainerEditor* %81 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_widget_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call59)
  %83 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor61 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %84, i32 0, i32 9
  %85 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor61, align 8
  %view62 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %85, i32 0, i32 1
  %86 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view62, align 8
  %87 = bitcast %struct._GimpContainerView* %86 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_editor_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call63)
  %88 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpEditor*
  store %struct._GimpEditor* %88, %struct._GimpEditor** %editor, align 8
  %89 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0)) #8
  %90 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %91 = bitcast %struct._GimpContainerPopup* %90 to i8*
  %call66 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* %call65, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpContainerPopup*)* @gimp_container_popup_smaller_clicked to void ()*), void ()* null, i8* %91)
  %92 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #8
  %93 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %94 = bitcast %struct._GimpContainerPopup* %93 to i8*
  %call68 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* %call67, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpContainerPopup*)* @gimp_container_popup_larger_clicked to void ()*), void ()* null, i8* %94)
  %95 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call69 = call i64 @gimp_view_type_get_type() #6
  %96 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %97 = bitcast %struct._GimpContainerPopup* %96 to i8*
  %call70 = call %struct._GtkWidget* @gimp_editor_add_stock_box(%struct._GimpEditor* %95, i64 %call69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpContainerPopup*)* @gimp_container_popup_view_type_toggled to void ()*), i8* %97)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %button, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_radio_button_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call71)
  %100 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkRadioButton*
  %101 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type73 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %101, i32 0, i32 4
  %102 = load i32, i32* %view_type73, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %100, i32 %102)
  %103 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %103, i32 0, i32 10
  %104 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool74 = icmp ne %struct._GimpDialogFactory* %104, null
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.52
  %105 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %106 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %dialog_stock_id = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %106, i32 0, i32 12
  %107 = load i8*, i8** %dialog_stock_id, align 8
  %108 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %dialog_tooltip = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %108, i32 0, i32 13
  %109 = load i8*, i8** %dialog_tooltip, align 8
  %110 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %111 = bitcast %struct._GimpContainerPopup* %110 to i8*
  %call76 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %105, i8* %107, i8* %109, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpContainerPopup*)* @gimp_container_popup_dialog_clicked to void ()*), void ()* null, i8* %111)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.52
  %112 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor78 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %112, i32 0, i32 9
  %113 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor78, align 8
  %114 = bitcast %struct._GimpContainerEditor* %113 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_widget_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call79)
  %115 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %115)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_container_popup_show(%struct._GimpContainerPopup* %popup, %struct._GtkWidget* %widget) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %orig_x = alloca i32, align 4
  %orig_y = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_popup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_container_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_container_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %27 = bitcast %struct._GimpContainerPopup* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %28, %struct._GtkRequisition* %requisition)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %29, %struct._GdkRectangle* %allocation)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call41 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %30)
  %call42 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call41, i32* %orig_x, i32* %orig_y)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call43 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %31)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.49, label %if.then.45

if.then.45:                                       ; preds = %do.end.38
  %x46 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %32 = load i32, i32* %x46, align 4
  %33 = load i32, i32* %orig_x, align 4
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %orig_x, align 4
  %y47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %34 = load i32, i32* %y47, align 4
  %35 = load i32, i32* %orig_y, align 4
  %add48 = add nsw i32 %35, %34
  store i32 %add48, i32* %orig_y, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %do.end.38
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call50 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %36)
  store %struct._GdkScreen* %call50, %struct._GdkScreen** %screen, align 8
  %37 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %38 = load i32, i32* %orig_x, align 4
  %39 = load i32, i32* %orig_y, align 4
  %call51 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %37, i32 %38, i32 %39)
  store i32 %call51, i32* %monitor, align 4
  %40 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %41 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %40, i32 %41, %struct._GdkRectangle* %rect)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call52 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %42)
  %cmp53 = icmp eq i32 %call52, 2
  br i1 %cmp53, label %if.then.54, label %if.else.65

if.then.54:                                       ; preds = %if.end.49
  %43 = load i32, i32* %orig_x, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %44 = load i32, i32* %width, align 4
  %add55 = add nsw i32 %43, %44
  %width56 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %45 = load i32, i32* %width56, align 4
  %sub = sub nsw i32 %add55, %45
  store i32 %sub, i32* %x, align 4
  %46 = load i32, i32* %x, align 4
  %x57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %47 = load i32, i32* %x57, align 4
  %cmp58 = icmp slt i32 %46, %47
  br i1 %cmp58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.then.54
  %width60 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %48 = load i32, i32* %width60, align 4
  %width61 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %49 = load i32, i32* %width61, align 4
  %sub62 = sub nsw i32 %48, %49
  %50 = load i32, i32* %x, align 4
  %sub63 = sub nsw i32 %50, %sub62
  store i32 %sub63, i32* %x, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.then.54
  br label %if.end.78

if.else.65:                                       ; preds = %if.end.49
  %51 = load i32, i32* %orig_x, align 4
  store i32 %51, i32* %x, align 4
  %52 = load i32, i32* %x, align 4
  %width66 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %53 = load i32, i32* %width66, align 4
  %add67 = add nsw i32 %52, %53
  %x68 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %54 = load i32, i32* %x68, align 4
  %width69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %55 = load i32, i32* %width69, align 4
  %add70 = add nsw i32 %54, %55
  %cmp71 = icmp sgt i32 %add67, %add70
  br i1 %cmp71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.else.65
  %width73 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %56 = load i32, i32* %width73, align 4
  %width74 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %57 = load i32, i32* %width74, align 4
  %sub75 = sub nsw i32 %56, %57
  %58 = load i32, i32* %x, align 4
  %add76 = add nsw i32 %58, %sub75
  store i32 %add76, i32* %x, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %if.else.65
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.64
  %59 = load i32, i32* %orig_y, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %60 = load i32, i32* %height, align 4
  %add79 = add nsw i32 %59, %60
  store i32 %add79, i32* %y, align 4
  %61 = load i32, i32* %y, align 4
  %height80 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %62 = load i32, i32* %height80, align 4
  %add81 = add nsw i32 %61, %62
  %y82 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %63 = load i32, i32* %y82, align 4
  %height83 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %64 = load i32, i32* %height83, align 4
  %add84 = add nsw i32 %63, %64
  %cmp85 = icmp sgt i32 %add81, %add84
  br i1 %cmp85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.78
  %65 = load i32, i32* %orig_y, align 4
  %height87 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %66 = load i32, i32* %height87, align 4
  %sub88 = sub nsw i32 %65, %66
  store i32 %sub88, i32* %y, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.78
  %67 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %68 = bitcast %struct._GimpContainerPopup* %67 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_window_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call90)
  %69 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkWindow*
  %70 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %69, %struct._GdkScreen* %70)
  %71 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %72 = bitcast %struct._GimpContainerPopup* %71 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_window_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call92)
  %73 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkWindow*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call94 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %74)
  %75 = bitcast %struct._GtkWidget* %call94 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_window_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call95)
  %76 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %73, %struct._GtkWindow* %76)
  %77 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %78 = bitcast %struct._GimpContainerPopup* %77 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_window_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call97)
  %79 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkWindow*
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %y, align 4
  call void @gtk_window_move(%struct._GtkWindow* %79, i32 %80, i32 %81)
  %82 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %83 = bitcast %struct._GimpContainerPopup* %82 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_widget_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call99)
  %84 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  br label %return

return:                                           ; preds = %if.end.89, %if.else.36, %if.else.9
  ret void
}

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #1

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_popup_get_view_type(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %retval = alloca i32, align 4
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_popup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_popup_get_view_type, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %13, i32 0, i32 4
  %14 = load i32, i32* %view_type, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_container_popup_set_view_type(%struct._GimpContainerPopup* %popup, i32 %view_type) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %view_type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  store i32 %view_type, i32* %view_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_popup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_popup_set_view_type, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %view_type.addr, align 4
  %14 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type11 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %14, i32 0, i32 4
  %15 = load i32, i32* %view_type11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %view_type.addr, align 4
  %17 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_type14 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %17, i32 0, i32 4
  store i32 %16, i32* %view_type14, align 4
  %18 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %18, i32 0, i32 9
  %19 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %20 = bitcast %struct._GimpContainerEditor* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %21)
  %22 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  call void @gimp_container_popup_create_view(%struct._GimpContainerPopup* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_popup_get_view_size(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %retval = alloca i32, align 4
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_popup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_popup_get_view_size, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 24, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %13, i32 0, i32 6
  %14 = load i32, i32* %view_size, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_container_popup_set_view_size(%struct._GimpContainerPopup* %popup, i32 %view_size) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %view_size.addr = alloca i32, align 4
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %viewport = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_popup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_popup_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.53

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %13, i32 0, i32 9
  %14 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %16 = bitcast %struct._GimpContainerView* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainerBox*
  %scrolled_win13 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win13, align 8
  store %struct._GtkWidget* %18, %struct._GtkWidget** %scrolled_win, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_bin_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBin*
  %call16 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %21)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %viewport, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %22, %struct._GdkRectangle* %allocation)
  %23 = load i32, i32* %view_size.addr, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width, align 4
  %25 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %25, i32 0, i32 7
  %26 = load i32, i32* %view_border_width, align 4
  %mul = mul nsw i32 2, %26
  %sub = sub nsw i32 %24, %mul
  %cmp17 = icmp slt i32 192, %sub
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %width18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %27 = load i32, i32* %width18, align 4
  %28 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width19 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %28, i32 0, i32 7
  %29 = load i32, i32* %view_border_width19, align 4
  %mul20 = mul nsw i32 2, %29
  %sub21 = sub nsw i32 %27, %mul20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 192, %cond.true ], [ %sub21, %cond.false ]
  %cmp22 = icmp sgt i32 %23, %cond
  br i1 %cmp22, label %cond.true.23, label %cond.false.37

cond.true.23:                                     ; preds = %cond.end
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width24, align 4
  %31 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width25 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %31, i32 0, i32 7
  %32 = load i32, i32* %view_border_width25, align 4
  %mul26 = mul nsw i32 2, %32
  %sub27 = sub nsw i32 %30, %mul26
  %cmp28 = icmp slt i32 192, %sub27
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.true.23
  br label %cond.end.35

cond.false.30:                                    ; preds = %cond.true.23
  %width31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %33 = load i32, i32* %width31, align 4
  %34 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width32 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %34, i32 0, i32 7
  %35 = load i32, i32* %view_border_width32, align 4
  %mul33 = mul nsw i32 2, %35
  %sub34 = sub nsw i32 %33, %mul33
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.30, %cond.true.29
  %cond36 = phi i32 [ 192, %cond.true.29 ], [ %sub34, %cond.false.30 ]
  br label %cond.end.43

cond.false.37:                                    ; preds = %cond.end
  %36 = load i32, i32* %view_size.addr, align 4
  %cmp38 = icmp slt i32 %36, 12
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.false.37
  %37 = load i32, i32* %view_size.addr, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ 12, %cond.true.39 ], [ %37, %cond.false.40 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.end.35
  %cond44 = phi i32 [ %cond36, %cond.end.35 ], [ %cond42, %cond.end.41 ]
  store i32 %cond44, i32* %view_size.addr, align 4
  %38 = load i32, i32* %view_size.addr, align 4
  %39 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size45 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %39, i32 0, i32 6
  %40 = load i32, i32* %view_size45, align 4
  %cmp46 = icmp ne i32 %38, %40
  br i1 %cmp46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %cond.end.43
  %41 = load i32, i32* %view_size.addr, align 4
  %42 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size48 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %42, i32 0, i32 6
  store i32 %41, i32* %view_size48, align 4
  %43 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor49 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %43, i32 0, i32 9
  %44 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor49, align 8
  %view50 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %44, i32 0, i32 1
  %45 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view50, align 8
  %46 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_size51 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %46, i32 0, i32 6
  %47 = load i32, i32* %view_size51, align 4
  %48 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %view_border_width52 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %48, i32 0, i32 7
  %49 = load i32, i32* %view_border_width52, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %45, i32 %47, i32 %49)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.9, %if.then.47, %cond.end.43
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_class_init(%struct._GimpContainerPopupClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerPopupClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpContainerPopupClass* %klass, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerPopupClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContainerPopupClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpContainerPopupClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 %8, i32 34, i32 904, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpContainerPopupClass* %9 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 %11, i32 34, i32 912, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_container_popup_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gimp_container_popup_map, void (%struct._GtkWidget*)** %map, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_container_popup_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 32
  store i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_container_popup_key_press, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %16 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %cancel = getelementptr inbounds %struct._GimpContainerPopupClass, %struct._GimpContainerPopupClass* %16, i32 0, i32 1
  store void (%struct._GimpContainerPopup*)* @gimp_container_popup_real_cancel, void (%struct._GimpContainerPopup*)** %cancel, align 8
  %17 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %confirm = getelementptr inbounds %struct._GimpContainerPopupClass, %struct._GimpContainerPopupClass* %17, i32 0, i32 2
  store void (%struct._GimpContainerPopup*)* @gimp_container_popup_real_confirm, void (%struct._GimpContainerPopup*)** %confirm, align 8
  %18 = load %struct._GimpContainerPopupClass*, %struct._GimpContainerPopupClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpContainerPopupClass* %18 to i8*
  %call6 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %19)
  store %struct._GtkBindingSet* %call6, %struct._GtkBindingSet** %binding_set, align 8
  %20 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %20, i32 65307, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 0)
  %21 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %21, i32 65293, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0)
  %22 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %22, i32 65421, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0)
  %23 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %23, i32 65076, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0)
  %24 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %24, i32 32, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0)
  %25 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %25, i32 65408, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %popup = alloca %struct._GimpContainerPopup*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_popup_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerPopup*
  store %struct._GimpContainerPopup* %2, %struct._GimpContainerPopup** %popup, align 8
  %3 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %3, i32 0, i32 3
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %context2 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %5, i32 0, i32 3
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %context3 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %8, i32 0, i32 3
  store %struct._GimpContext* null, %struct._GimpContext** %context3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_identifier = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %9, i32 0, i32 11
  %10 = load i8*, i8** %dialog_identifier, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_identifier6 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %11, i32 0, i32 11
  %12 = load i8*, i8** %dialog_identifier6, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_identifier7 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %13, i32 0, i32 11
  store i8* null, i8** %dialog_identifier7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_stock_id = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %14, i32 0, i32 12
  %15 = load i8*, i8** %dialog_stock_id, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_stock_id11 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %16, i32 0, i32 12
  %17 = load i8*, i8** %dialog_stock_id11, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_stock_id12 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %18, i32 0, i32 12
  store i8* null, i8** %dialog_stock_id12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_tooltip = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %19, i32 0, i32 13
  %20 = load i8*, i8** %dialog_tooltip, align 8
  %tobool14 = icmp ne i8* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_tooltip16 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %21, i32 0, i32 13
  %22 = load i8*, i8** %dialog_tooltip16, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup, align 8
  %dialog_tooltip17 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %23, i32 0, i32 13
  store i8* null, i8** %dialog_tooltip17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %24 = load i8*, i8** @gimp_container_popup_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 80)
  %26 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %26, i32 0, i32 6
  %27 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %27(%struct._GObject* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_map(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_container_popup_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 8
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %map, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %3(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %5)
  %call3 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call2, i32 1, i32 772, %struct._GdkDrawable* null, %struct._GdkCursor* null, i32 0)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %call5 = call i32 @gdk_keyboard_grab(%struct._GdkDrawable* %call4, i32 1, i32 0)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32)* @gimp_container_popup_grab_notify to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)* @gimp_container_popup_grab_broken_event to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

if.else:                                          ; preds = %if.then
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %16)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call10, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %18, i32 %19, i32 0)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_popup_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %event_widget = alloca %struct._GtkWidget*, align 8
  %cancel = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store i32 0, i32* %cancel, align 4
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %event_widget, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 4
  %6 = load double, double* %x, align 8
  %cmp1 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp1, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 5
  %8 = load double, double* %y, align 8
  %cmp2 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp2, label %if.then.12, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 4
  %10 = load double, double* %x4, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %conv = sitofp i32 %11 to double
  %cmp5 = fcmp ogt double %10, %conv
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.3
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 5
  %13 = load double, double* %y8, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %14 = load i32, i32* %height, align 4
  %conv9 = sitofp i32 %14 to double
  %cmp10 = fcmp ogt double %13, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.3, %lor.lhs.false, %if.then
  store i32 1, i32* %cancel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.7
  br label %if.end.18

if.else:                                          ; preds = %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %call13 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp14 = icmp ne %struct._GtkWidget* %call13, %16
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 1, i32* %cancel, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %17 = load i32, i32* %cancel, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.18
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.18
  %21 = load i32, i32* %cancel, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_popup_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpContainerPopupClass*
  %4 = bitcast %struct._GimpContainerPopupClass* %3 to i8*
  %call = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %4)
  store %struct._GtkBindingSet* %call, %struct._GtkBindingSet** %binding_set, align 8
  %5 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  %6 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %6, i32 0, i32 5
  %7 = load i32, i32* %keyval, align 4
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 4
  %9 = load i32, i32* %state, align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_object_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call1)
  %12 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkObject*
  %call3 = call i32 @gtk_binding_set_activate(%struct._GtkBindingSet* %5, i32 %7, i32 %9, %struct._GtkObject* %12)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i8*, i8** @gimp_container_popup_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call4)
  %15 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 32
  %16 = load i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call6 = call i32 %16(%struct._GtkWidget* %17, %struct._GdkEventKey* %18)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_real_cancel(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkWidget* @gtk_grab_get_current()
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %cmp = icmp eq %struct._GtkWidget* %call2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_real_confirm(%struct._GimpContainerPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpContainerPopup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %3, i32 0, i32 3
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %container = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call2 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %6)
  %call3 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %4, i64 %call2)
  store %struct._GimpObject* %call3, %struct._GimpObject** %object, align 8
  %7 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %orig_context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %7, i32 0, i32 2
  %8 = load %struct._GimpContext*, %struct._GimpContext** %orig_context, align 8
  %9 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %container4 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %9, i32 0, i32 1
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container4, align 8
  %call5 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %10)
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %8, i64 %call5, %struct._GimpObject* %11)
  %call6 = call %struct._GtkWidget* @gtk_grab_get_current()
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %cmp = icmp eq %struct._GtkWidget* %call6, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  ret void
}

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #1

declare i32 @gdk_keyboard_grab(%struct._GdkDrawable*, i32, i32) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_grab_notify(%struct._GtkWidget* %widget, i32 %was_grabbed) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %was_grabbed.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %was_grabbed, i32* %was_grabbed.addr, align 4
  %0 = load i32, i32* %was_grabbed.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._GtkWidget* @gtk_grab_get_current()
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call i32 @gtk_widget_is_ancestor(%struct._GtkWidget* %call, %struct._GtkWidget* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %3, i32 %4, i32 0)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_popup_grab_broken_event(%struct._GtkWidget* %widget, %struct._GdkEventGrabBroken* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventGrabBroken*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventGrabBroken* %event, %struct._GdkEventGrabBroken** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_container_popup_grab_notify(%struct._GtkWidget* %0, i32 0)
  ret i32 0
}

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @gtk_widget_is_ancestor(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_grab_get_current() #1

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare i32 @gtk_binding_set_activate(%struct._GtkBindingSet*, i32, i32, %struct._GtkObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #2

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %union._GdkEvent* @gtk_get_current_event() #1

declare void @gdk_event_free(%union._GdkEvent*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare void @gimp_container_view_set_reorderable(%struct._GimpContainerView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_tree_view_set_search_entry(%struct._GtkTreeView*, %struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gimp_container_box_set_size_request(%struct._GimpContainerBox*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gimp_editor_set_show_name(%struct._GimpEditor*, i32) #1

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_smaller_clicked(%struct._GtkWidget* %button, %struct._GimpContainerPopup* %popup) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %view_size = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %0, i32 0, i32 9
  %1 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %1, i32 0, i32 1
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %2, i32* null)
  store i32 %call, i32* %view_size, align 4
  %3 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %4 = load i32, i32* %view_size, align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double %conv, 8.000000e-01
  %conv1 = fptosi double %mul to i32
  call void @gimp_container_popup_set_view_size(%struct._GimpContainerPopup* %3, i32 %conv1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_larger_clicked(%struct._GtkWidget* %button, %struct._GimpContainerPopup* %popup) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %view_size = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %editor = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %0, i32 0, i32 9
  %1 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %1, i32 0, i32 1
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %2, i32* null)
  store i32 %call, i32* %view_size, align 4
  %3 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %4 = load i32, i32* %view_size, align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double %conv, 1.200000e+00
  %conv1 = fptosi double %mul to i32
  call void @gimp_container_popup_set_view_size(%struct._GimpContainerPopup* %3, i32 %conv1)
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_stock_box(%struct._GimpEditor*, i64, i8*, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_view_type_toggled(%struct._GtkWidget* %button, %struct._GimpContainerPopup* %popup) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  %view_type = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0))
  %6 = ptrtoint i8* %call4 to i64
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %view_type, align 4
  %7 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %8 = load i32, i32* %view_type, align 4
  call void @gimp_container_popup_set_view_type(%struct._GimpContainerPopup* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_popup_dialog_clicked(%struct._GtkWidget* %button, %struct._GimpContainerPopup* %popup) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %popup.addr = alloca %struct._GimpContainerPopup*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpContainerPopup* %popup, %struct._GimpContainerPopup** %popup.addr, align 8
  %0 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %context = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %0, i32 0, i32 3
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %2)
  %3 = bitcast %struct._GimpObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_window_strategy_interface_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpWindowStrategy*
  %5 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %context3 = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %5, i32 0, i32 3
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %8 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %8, i32 0, i32 10
  %9 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call5 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %11 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %dialog_identifier = getelementptr inbounds %struct._GimpContainerPopup, %struct._GimpContainerPopup* %11, i32 0, i32 11
  %12 = load i8*, i8** %dialog_identifier, align 8
  %call6 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %4, %struct._Gimp* %7, %struct._GimpDialogFactory* %9, %struct._GdkScreen* %call5, i8* %12)
  %13 = load %struct._GimpContainerPopup*, %struct._GimpContainerPopup** %popup.addr, align 8
  %14 = bitcast %struct._GimpContainerPopup* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @popup_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  ret void
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

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
