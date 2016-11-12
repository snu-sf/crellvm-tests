; ModuleID = './app/widgets/gimpdynamicseditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDynamicsEditorClass = type { %struct._GimpDataEditorClass }
%struct._GimpDataEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpDataEditor*, %struct._GimpData*)*, i8* }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDynamicsEditor = type { %struct._GimpDataEditor, %struct._GimpDynamics*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpDocked = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpConfig = type opaque
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GimpDynamicsOutput = type opaque

@gimp_dynamics_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpDynamicsEditor\00", align 1
@gimp_dynamics_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dynamics_editor_new = private unnamed_addr constant [25 x i8] c"gimp_dynamics_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"<DynamicsEditor>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"/dynamics-editor-popup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@gimp_dynamics_editor_parent_class = internal global i8* null, align 8
@GimpDynamicsEditor_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"Paint Dynamics Editor\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Mapping matrix\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Velocity\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Wheel\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Fade\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"use-pressure\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"use-velocity\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"use-direction\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"use-tilt\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"use-wheel\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"use-random\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"use-fade\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dynamics_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dynamics_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dynamics_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dynamics_editor_class_intern_init to void (i8*, i8*)*), i32 240, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_dynamics_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dynamics_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_dynamics_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dynamics_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDynamicsEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDynamicsEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDynamicsEditorClass*
  call void @gimp_dynamics_editor_class_init(%struct._GimpDynamicsEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_init(%struct._GimpDynamicsEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDynamicsEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %input_labels = alloca [7 x %struct._GtkWidget*], align 16
  %n_inputs = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDynamicsEditor* %editor, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  store i32 7, i32* %n_inputs, align 4
  %call2 = call i64 @gimp_dynamics_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* null)
  %3 = bitcast i8* %call3 to %struct._GimpDynamics*
  %4 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %dynamics_model = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %4, i32 0, i32 1
  store %struct._GimpDynamics* %3, %struct._GimpDynamics** %dynamics_model, align 8
  store %struct._GimpDynamics* %3, %struct._GimpDynamics** %dynamics, align 8
  %5 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %6 = bitcast %struct._GimpDynamics* %5 to i8*
  %7 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpDynamicsEditor* %7 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_model to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %call5 = call i64 @gimp_dynamics_output_type_get_type() #6
  %call6 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call5)
  %9 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %9, i32 0, i32 3
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %view_selector, align 8
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %11 = bitcast %struct._GimpDataEditor* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %13 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector9 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector10 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call11 = call %struct._GtkWidget* @gtk_notebook_new()
  %17 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %17, i32 0, i32 4
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %notebook, align 8
  %18 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook12 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %18, i32 0, i32 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook12, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_notebook_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %21, i32 0)
  %22 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook15 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %22, i32 0, i32 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook15, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_notebook_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %25, i32 0)
  %26 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpDynamicsEditor* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %29 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook20 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %29, i32 0, i32 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook20, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook21 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %31, i32 0, i32 4
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load i32, i32* %n_inputs, align 4
  %add = add nsw i32 %33, 2
  %call22 = call %struct._GtkWidget* @gtk_table_new(i32 10, i32 %add, i32 0)
  %34 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %34, i32 0, i32 2
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %check_grid, align 8
  %35 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %36 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector23 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %36, i32 0, i32 3
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector23, align 8
  %38 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook24 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %38, i32 0, i32 4
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook24, align 8
  %40 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid25 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid25, align 8
  call void @gimp_dynamics_editor_init_output_editors(%struct._GimpDynamics* %35, %struct._GtkWidget* %37, %struct._GtkWidget* %39, %struct._GtkWidget* %41)
  %42 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %notebook26 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %42, i32 0, i32 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook26, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_notebook_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call27)
  %45 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkNotebook*
  %46 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid29 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid29, align 8
  %call30 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %45, %struct._GtkWidget* %47, %struct._GtkWidget* null)
  %48 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid31 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %48, i32 0, i32 2
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid31, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector32 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %50, i32 0, i32 3
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector32, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_int_combo_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call33)
  %53 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpIntComboBox*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #7
  %54 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid36 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %54, i32 0, i32 2
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid36, align 8
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %53, i32 0, i32 -1, i32 1, i8* %call35, i32 4, %struct._GtkWidget* %55, i32 -1)
  %56 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %view_selector37 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %56, i32 0, i32 3
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector37, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_int_combo_box_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpIntComboBox*
  %call40 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %59, i32 -1)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #7
  %call42 = call %struct._GtkWidget* @gtk_label_new(i8* %call41)
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 0
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %arrayidx, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #7
  %call44 = call %struct._GtkWidget* @gtk_label_new(i8* %call43)
  %arrayidx45 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 1
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %arrayidx45, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #7
  %call47 = call %struct._GtkWidget* @gtk_label_new(i8* %call46)
  %arrayidx48 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 2
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %arrayidx48, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #7
  %call50 = call %struct._GtkWidget* @gtk_label_new(i8* %call49)
  %arrayidx51 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 3
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %arrayidx51, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #7
  %call53 = call %struct._GtkWidget* @gtk_label_new(i8* %call52)
  %arrayidx54 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 4
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %arrayidx54, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #7
  %call56 = call %struct._GtkWidget* @gtk_label_new(i8* %call55)
  %arrayidx57 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 5
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %arrayidx57, align 8
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #7
  %call59 = call %struct._GtkWidget* @gtk_label_new(i8* %call58)
  %arrayidx60 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 6
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %arrayidx60, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %n_inputs, align 4
  %cmp = icmp slt i32 %60, %61
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx61 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 %idxprom
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx61, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_label_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call62)
  %65 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkLabel*
  call void @gtk_label_set_angle(%struct._GtkLabel* %65, double 9.000000e+01)
  %66 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %66 to i64
  %arrayidx65 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 %idxprom64
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx65, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_misc_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call66)
  %69 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %69, float 5.000000e-01, float 1.000000e+00)
  %70 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %check_grid68 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %70, i32 0, i32 2
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid68, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call69)
  %73 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %74 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %74 to i64
  %arrayidx72 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 %idxprom71
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx72, align 8
  %76 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %76, 1
  %77 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %77, 2
  call void @gtk_table_attach(%struct._GtkTable* %73, %struct._GtkWidget* %75, i32 %add73, i32 %add74, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %78 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %input_labels, i32 0, i64 %idxprom75
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx76, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dynamics_editor_new(%struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dynamics_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dynamics_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_dynamics_editor_get_type() #6
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 38
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %31)
  %call41 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMenuFactory* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._GimpDataFactory* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContext* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GimpDynamics* %call40, i8* null)
  %32 = bitcast i8* %call41 to %struct._GtkWidget*
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_class_init(%struct._GimpDynamicsEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDynamicsEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpDynamicsEditorClass* %klass, %struct._GimpDynamicsEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDynamicsEditorClass*, %struct._GimpDynamicsEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDynamicsEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDynamicsEditorClass*, %struct._GimpDynamicsEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDynamicsEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_editor_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %5, %struct._GimpDataEditorClass** %editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_dynamics_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dynamics_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %8, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_dynamics_editor_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #7
  %9 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %9, i32 0, i32 2
  store i8* %call3, i8** %title, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_dynamics_editor_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_dynamics_editor_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_docked_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDocked*
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %11, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDynamicsEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDynamicsEditor*
  store %struct._GimpDynamicsEditor* %2, %struct._GimpDynamicsEditor** %editor, align 8
  %3 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor, align 8
  %dynamics_model = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model, align 8
  %tobool = icmp ne %struct._GimpDynamics* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor, align 8
  %dynamics_model2 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model2, align 8
  %7 = bitcast %struct._GimpDynamics* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor, align 8
  %dynamics_model3 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %8, i32 0, i32 1
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics_model3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_dynamics_editor_parent_class, align 8
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
define internal void @gimp_dynamics_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %dynamics_editor = alloca %struct._GimpDynamicsEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %widget = alloca i8*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDynamicsEditor*
  store %struct._GimpDynamicsEditor* %2, %struct._GimpDynamicsEditor** %dynamics_editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 4
  %4 = load %struct._GimpData*, %struct._GimpData** %data2, align 8
  %tobool = icmp ne %struct._GimpData* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data3, align 8
  %7 = bitcast %struct._GimpData* %6 to i8*
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpDataEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_data to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_dynamics_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_editor_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataEditorClass*
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %12, i32 0, i32 1
  %13 = load void (%struct._GimpDataEditor*, %struct._GimpData*)*, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %15 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %13(%struct._GimpDataEditor* %14, %struct._GimpData* %15)
  %16 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data7 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %16, i32 0, i32 4
  %17 = load %struct._GimpData*, %struct._GimpData** %data7, align 8
  %tobool8 = icmp ne %struct._GimpData* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %18 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %dynamics_editor, align 8
  %dynamics_model = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model, align 8
  %20 = bitcast %struct._GimpDynamics* %19 to i8*
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpDataEditor* %21 to i8*
  %call10 = call i32 @g_signal_handlers_block_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_model to i8*), i8* %22)
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data11 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 4
  %24 = load %struct._GimpData*, %struct._GimpData** %data11, align 8
  %25 = bitcast %struct._GimpData* %24 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  %27 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %dynamics_editor, align 8
  %dynamics_model14 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %27, i32 0, i32 1
  %28 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model14, align 8
  %29 = bitcast %struct._GimpDynamics* %28 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_config_interface_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call15)
  %30 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpConfig*
  %call17 = call i32 @gimp_config_copy(%struct._GimpConfig* %26, %struct._GimpConfig* %30, i32 256)
  %31 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %dynamics_editor, align 8
  %dynamics_model18 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %31, i32 0, i32 1
  %32 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model18, align 8
  %33 = bitcast %struct._GimpDynamics* %32 to i8*
  %34 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpDataEditor* %34 to i8*
  %call19 = call i32 @g_signal_handlers_unblock_matched(i8* %33, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_model to i8*), i8* %35)
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data20 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 4
  %37 = load %struct._GimpData*, %struct._GimpData** %data20, align 8
  %38 = bitcast %struct._GimpData* %37 to i8*
  %39 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %40 = bitcast %struct._GimpDataEditor* %39 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_data to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.9, %if.end
  %41 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %dynamics_editor, align 8
  %view_selector = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %41, i32 0, i32 3
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_combo_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call23)
  %44 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkComboBox*
  %call25 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %44)
  store %struct._GtkTreeModel* %call25, %struct._GtkTreeModel** %model, align 8
  %45 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call26 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %45, %struct._GtkTreeIter* %iter)
  store i32 %call26, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %46 = load i32, i32* %iter_valid, align 4
  %tobool27 = icmp ne i32 %46, 0
  br i1 %tobool27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %47, %struct._GtkTreeIter* %iter, i32 4, i8** %widget, i32 -1)
  %48 = load i8*, i8** %widget, align 8
  %49 = bitcast i8* %48 to %struct._GtkWidget*
  %50 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %50, i32 0, i32 5
  %51 = load i32, i32* %data_editable, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %49, i32 %51)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call28 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %52, %struct._GtkTreeIter* %iter)
  store i32 %call28, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_docked_set_show_button_bar(%struct._GimpDocked*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_notify_data(%struct._GimpDynamics* %options, %struct._GParamSpec* %pspec, %struct._GimpDynamicsEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpDynamics*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpDynamicsEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpDynamics* %options, %struct._GimpDynamics** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDynamicsEditor* %editor, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %dynamics_model = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model, align 8
  %5 = bitcast %struct._GimpDynamics* %4 to i8*
  %6 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpDynamicsEditor* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_model to i8*), i8* %7)
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 4
  %9 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %10 = bitcast %struct._GimpData* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %12 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %dynamics_model5 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model5, align 8
  %14 = bitcast %struct._GimpDynamics* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_config_interface_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpConfig*
  %call8 = call i32 @gimp_config_copy(%struct._GimpConfig* %11, %struct._GimpConfig* %15, i32 256)
  %16 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %dynamics_model9 = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model9, align 8
  %18 = bitcast %struct._GimpDynamics* %17 to i8*
  %19 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %20 = bitcast %struct._GimpDynamicsEditor* %19 to i8*
  %call10 = call i32 @g_signal_handlers_unblock_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_model to i8*), i8* %20)
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_notify_model(%struct._GimpDynamics* %options, %struct._GParamSpec* %pspec, %struct._GimpDynamicsEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpDynamics*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpDynamicsEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpDynamics* %options, %struct._GimpDynamics** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDynamicsEditor* %editor, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 4
  %4 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data2, align 8
  %7 = bitcast %struct._GimpData* %6 to i8*
  %8 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpDynamicsEditor* %8 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_data to i8*), i8* %9)
  %10 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %dynamics_model = getelementptr inbounds %struct._GimpDynamicsEditor, %struct._GimpDynamicsEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics_model, align 8
  %12 = bitcast %struct._GimpDynamics* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 4
  %15 = load %struct._GimpData*, %struct._GimpData** %data6, align 8
  %16 = bitcast %struct._GimpData* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %call9 = call i32 @gimp_config_copy(%struct._GimpConfig* %13, %struct._GimpConfig* %17, i32 256)
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpData*, %struct._GimpData** %data10, align 8
  %20 = bitcast %struct._GimpData* %19 to i8*
  %21 = load %struct._GimpDynamicsEditor*, %struct._GimpDynamicsEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpDynamicsEditor* %21 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GParamSpec*, %struct._GimpDynamicsEditor*)* @gimp_dynamics_editor_notify_data to i8*), i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_output_type_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_init_output_editors(%struct._GimpDynamics* %dynamics, %struct._GtkWidget* %view_selector, %struct._GtkWidget* %notebook, %struct._GtkWidget* %check_grid) #3 {
entry:
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %view_selector.addr = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %check_grid.addr = alloca %struct._GtkWidget*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %list = alloca %struct._GimpIntStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %i = alloca i32, align 4
  %output_type = alloca i32, align 4
  %label = alloca i8*, align 8
  %output = alloca %struct._GimpDynamicsOutput*, align 8
  %output_editor = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  store %struct._GtkWidget* %view_selector, %struct._GtkWidget** %view_selector.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  store %struct._GtkWidget* %check_grid, %struct._GtkWidget** %check_grid.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %4 = bitcast %struct._GtkTreeModel* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_int_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpIntStore*
  store %struct._GimpIntStore* %5, %struct._GimpIntStore** %list, align 8
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call5 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter)
  store i32 %call5, i32* %iter_valid, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = bitcast %struct._GtkTreeModel* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_tree_model_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 0, i32* %output_type, i32 1, i8** %label, i32 -1)
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %12 = load i32, i32* %output_type, align 4
  %call8 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %11, i32 %12)
  store %struct._GimpDynamicsOutput* %call8, %struct._GimpDynamicsOutput** %output, align 8
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %call9 = call %struct._GtkWidget* @gimp_dynamics_output_editor_new(%struct._GimpDynamicsOutput* %13)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %output_editor, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_notebook_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkNotebook*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %output_editor, align 8
  %call12 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %16, %struct._GtkWidget* %17, %struct._GtkWidget* null)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %output_editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GimpIntStore*, %struct._GimpIntStore** %list, align 8
  %20 = bitcast %struct._GimpIntStore* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_list_store_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkListStore*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %output_editor, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %21, %struct._GtkTreeIter* %iter, i32 4, %struct._GtkWidget* %22, i32 -1)
  %23 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %24 = bitcast %struct._GimpDynamicsOutput* %23 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %26 = load i8*, i8** %label, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %check_grid.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %30 = load i32, i32* %i, align 4
  call void @gimp_dynamics_editor_add_output_row(%struct._GObject* %25, i8* %26, %struct._GtkTable* %29, i32 %30)
  %31 = load i8*, i8** %label, align 8
  call void @g_free(i8* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call18 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %32, %struct._GtkTreeIter* %iter)
  store i32 %call18, i32* %iter_valid, align 4
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view_selector.addr, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %37 = bitcast %struct._GObject* %36 to i8*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkComboBox*, %struct._GtkWidget*)* @gimp_dynamics_editor_view_changed to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @gimp_int_combo_box_prepend(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_angle(%struct._GtkLabel*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int_store_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare %struct._GtkWidget* @gimp_dynamics_output_editor_new(%struct._GimpDynamicsOutput*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_add_output_row(%struct._GObject* %config, i8* %row_label, %struct._GtkTable* %table, i32 %row) #3 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %row_label.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %row.addr = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %column = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %row_label, i8** %row_label.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 1, i32* %column, align 4
  %0 = load i8*, i8** %row_label.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %3, float 0.000000e+00, float 5.000000e-01)
  %4 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %5 = bitcast %struct._GtkTable* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %8 = load i32, i32* %row.addr, align 4
  %9 = load i32, i32* %row.addr, align 4
  %add = add nsw i32 %9, 1
  call void @gtk_table_attach(%struct._GtkTable* %6, %struct._GtkWidget* %7, i32 0, i32 1, i32 %8, i32 %add, i32 6, i32 6, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %13 = load i32, i32* %column, align 4
  %14 = load i32, i32* %row.addr, align 4
  %call5 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct._GtkTable* %12, i32 %13, i32 %14)
  %15 = load i32, i32* %column, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %column, align 4
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %18 = load i32, i32* %column, align 4
  %19 = load i32, i32* %row.addr, align 4
  %call6 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct._GtkTable* %17, i32 %18, i32 %19)
  %20 = load i32, i32* %column, align 4
  %inc7 = add nsw i32 %20, 1
  store i32 %inc7, i32* %column, align 4
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %23 = load i32, i32* %column, align 4
  %24 = load i32, i32* %row.addr, align 4
  %call8 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), %struct._GtkTable* %22, i32 %23, i32 %24)
  %25 = load i32, i32* %column, align 4
  %inc9 = add nsw i32 %25, 1
  store i32 %inc9, i32* %column, align 4
  %26 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %27 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %28 = load i32, i32* %column, align 4
  %29 = load i32, i32* %row.addr, align 4
  %call10 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %struct._GtkTable* %27, i32 %28, i32 %29)
  %30 = load i32, i32* %column, align 4
  %inc11 = add nsw i32 %30, 1
  store i32 %inc11, i32* %column, align 4
  %31 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %32 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %33 = load i32, i32* %column, align 4
  %34 = load i32, i32* %row.addr, align 4
  %call12 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct._GtkTable* %32, i32 %33, i32 %34)
  %35 = load i32, i32* %column, align 4
  %inc13 = add nsw i32 %35, 1
  store i32 %inc13, i32* %column, align 4
  %36 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %37 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %38 = load i32, i32* %column, align 4
  %39 = load i32, i32* %row.addr, align 4
  %call14 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._GtkTable* %37, i32 %38, i32 %39)
  %40 = load i32, i32* %column, align 4
  %inc15 = add nsw i32 %40, 1
  store i32 %inc15, i32* %column, align 4
  %41 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %42 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %43 = load i32, i32* %column, align 4
  %44 = load i32, i32* %row.addr, align 4
  %call16 = call %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._GtkTable* %42, i32 %43, i32 %44)
  %45 = load i32, i32* %column, align 4
  %inc17 = add nsw i32 %45, 1
  store i32 %inc17, i32* %column, align 4
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_editor_view_changed(%struct._GtkComboBox* %combo, %struct._GtkWidget* %notebook) #3 {
entry:
  %combo.addr = alloca %struct._GtkComboBox*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %widget = alloca i8*, align 8
  %page = alloca i32, align 4
  store %struct._GtkComboBox* %combo, %struct._GtkComboBox** %combo.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %2 = bitcast %struct._GtkComboBox* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_combo_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkComboBox*
  %call3 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %3, %struct._GtkTreeIter* %iter)
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 4, i8** %widget, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_notebook_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkNotebook*
  %8 = load i8*, i8** %widget, align 8
  %9 = bitcast i8* %8 to %struct._GtkWidget*
  %call6 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %7, %struct._GtkWidget* %9)
  store i32 %call6, i32* %page, align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_notebook_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkNotebook*
  %13 = load i32, i32* %page, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %12, i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @dynamics_check_button_new(%struct._GObject* %config, i8* %property_name, %struct._GtkTable* %table, i32 %column, i32 %row) #3 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %0, i8* %1, i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %2 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %4 = load i32, i32* %column.addr, align 4
  %5 = load i32, i32* %column.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %row.addr, align 4
  %7 = load i32, i32* %row.addr, align 4
  %add1 = add nsw i32 %7, 1
  call void @gtk_table_attach(%struct._GtkTable* %2, %struct._GtkWidget* %3, i32 %4, i32 %add, i32 %6, i32 %add1, i32 2, i32 2, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %9
}

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
