; ModuleID = './app/widgets/gimptoolbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolboxClass = type { %struct._GimpDockClass }
%struct._GimpDockClass = type { %struct._GtkBoxClass, i8* (%struct._GimpDock*, i32)*, void (%struct._GimpDock*, %struct._GtkWindow*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*)*, void (%struct._GimpDock*)* }
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
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDockbook = type opaque
%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpToolboxPrivate = type { %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, %struct._GimpPanedBox*, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
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
%struct._GimpContainer = type opaque
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
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GimpPanedBoxPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpToolPalette = type { %struct._GtkToolPalette }
%struct._GtkToolPalette = type { %struct._GtkContainer, %struct._GtkToolPalettePrivate* }
%struct._GtkToolPalettePrivate = type opaque
%struct._GtkWrapBox = type { %struct._GtkContainer, i16, i8, i8, i16, %struct._GtkWrapBoxChild*, float, i32 }
%struct._GtkWrapBoxChild = type { %struct._GtkWidget*, i8, %struct._GtkWrapBoxChild* }
%struct._GtkClipboard = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GdkGeometry = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32 }
%struct._GtkTargetList = type { %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GError = type { i32, i32, i8* }

@gimp_toolbox_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpToolbox\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_toolbox_new = private unnamed_addr constant [17 x i8] c"gimp_toolbox_new\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP_IS_UI_MANAGER (ui_manager)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@__func__.gimp_toolbox_get_context = private unnamed_addr constant [25 x i8] c"gimp_toolbox_get_context\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TOOLBOX (toolbox)\00", align 1
@__func__.gimp_toolbox_set_drag_handler = private unnamed_addr constant [30 x i8] c"gimp_toolbox_set_drag_handler\00", align 1
@gimp_toolbox_parent_class = internal global i8* null, align 8
@GimpToolbox_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"gimptoolbox.c\00", align 1
@__func__.gimp_toolbox_constructed = private unnamed_addr constant [25 x i8] c"gimp_toolbox_constructed\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"GIMP_IS_CONTEXT (toolbox->p->context)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"drag-leave\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"drag-motion\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"drag-drop\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"size-request\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Drop image files here to open them\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"notify::toolbox-wilber\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"notify::toolbox-color-area\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"notify::toolbox-foo-area\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"notify::toolbox-image-area\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"gimp-toolbox-color-area\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"gimp-toolbox-indicator-area\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"gimp-toolbox-image-area\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Toolbox\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"dock\04 - \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_toolbox_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_toolbox_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_toolbox_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_dock_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_toolbox_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolbox*)* @gimp_toolbox_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_toolbox_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_toolbox_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_toolbox_parent_class, align 8
  %1 = load i32, i32* @GimpToolbox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolbox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolboxClass*
  call void @gimp_toolbox_class_init(%struct._GimpToolboxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_init(%struct._GimpToolbox* %toolbox) #3 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolboxPrivate*
  %3 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %3, i32 0, i32 1
  store %struct._GimpToolboxPrivate* %2, %struct._GimpToolboxPrivate** %p, align 8
  %4 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %5 = bitcast %struct._GimpToolbox* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gimp_help_connect(%struct._GtkWidget* %6, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_toolbox_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDialogFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_factory_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_toolbox_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_toolbox_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %27 = bitcast %struct._GimpUIManager* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_ui_manager_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_toolbox_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call i64 @gimp_toolbox_get_type() #8
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call68 = call i8* (i64, i8*, ...) @g_object_new(i64 %call67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._GimpContext* %39, i8* null)
  %40 = bitcast i8* %call68 to %struct._GtkWidget*
  store %struct._GtkWidget* %40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.else.64, %if.else.36, %if.else.9
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %toolbox) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_toolbox_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_toolbox_get_context, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %13, i32 0, i32 1
  %14 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_toolbox_set_drag_handler(%struct._GimpToolbox* %toolbox, %struct._GimpPanedBox* %drag_handler) #3 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %drag_handler.addr = alloca %struct._GimpPanedBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store %struct._GimpPanedBox* %drag_handler, %struct._GimpPanedBox** %drag_handler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_toolbox_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_toolbox_set_drag_handler, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  %14 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %14, i32 0, i32 1
  %15 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %drag_handler11 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %15, i32 0, i32 10
  store %struct._GimpPanedBox* %13, %struct._GimpPanedBox** %drag_handler11, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_class_init(%struct._GimpToolboxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolboxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %dock_class = alloca %struct._GimpDockClass*, align 8
  store %struct._GimpToolboxClass* %klass, %struct._GimpToolboxClass** %klass.addr, align 8
  %0 = load %struct._GimpToolboxClass*, %struct._GimpToolboxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolboxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpToolboxClass*, %struct._GimpToolboxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpToolboxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpToolboxClass*, %struct._GimpToolboxClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpToolboxClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_dock_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDockClass*
  store %struct._GimpDockClass* %8, %struct._GimpDockClass** %dock_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_toolbox_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_toolbox_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_toolbox_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_toolbox_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_toolbox_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_toolbox_button_press_event, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %15 = load %struct._GimpDockClass*, %struct._GimpDockClass** %dock_class, align 8
  %get_description = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %15, i32 0, i32 1
  store i8* (%struct._GimpDock*, i32)* @gimp_toolbox_get_description, i8* (%struct._GimpDock*, i32)** %get_description, align 8
  %16 = load %struct._GimpDockClass*, %struct._GimpDockClass** %dock_class, align 8
  %set_host_geometry_hints = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %16, i32 0, i32 2
  store void (%struct._GimpDock*, %struct._GtkWindow*)* @gimp_toolbox_set_host_geometry_hints, void (%struct._GimpDock*, %struct._GtkWindow*)** %set_host_geometry_hints, align 8
  %17 = load %struct._GimpDockClass*, %struct._GimpDockClass** %dock_class, align 8
  %book_added = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %17, i32 0, i32 3
  store void (%struct._GimpDock*, %struct._GimpDockbook*)* @gimp_toolbox_book_added, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_added, align 8
  %18 = load %struct._GimpDockClass*, %struct._GimpDockClass** %dock_class, align 8
  %book_removed = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %18, i32 0, i32 4
  store void (%struct._GimpDock*, %struct._GimpDockbook*)* @gimp_toolbox_book_removed, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_removed, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_context_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call6)
  %20 = load %struct._GimpToolboxClass*, %struct._GimpToolboxClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpToolboxClass* %20 to i8*
  call void @g_type_class_add_private(i8* %21, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %3, i32 0, i32 1
  %4 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %6 = bitcast %struct._GimpContext* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_context_get_type() #8
  store i64 %call2, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #9
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_toolbox_constructed, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #10
  unreachable

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %18 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p13 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %18, i32 0, i32 1
  %19 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p13, align 8
  %context14 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %19, i32 0, i32 0
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context14, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 1
  %22 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config15, align 8
  %23 = bitcast %struct._GimpCoreConfig* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_gui_config_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %24, %struct._GimpGuiConfig** %config, align 8
  %25 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %26 = bitcast %struct._GimpToolbox* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_dock_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDock*
  %call20 = call %struct._GtkWidget* @gimp_dock_get_main_vbox(%struct._GimpDock* %27)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %main_vbox, align 8
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  %28 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p22 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %28, i32 0, i32 1
  %29 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p22, align 8
  %vbox = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %29, i32 0, i32 1
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %vbox, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p25 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %33, i32 0, i32 1
  %34 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p25, align 8
  %vbox26 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %34, i32 0, i32 1
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox26, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %39 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p29 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %39, i32 0, i32 1
  %40 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p29, align 8
  %vbox30 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox30, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %38, %struct._GtkWidget* %41, i32 0)
  %42 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p31 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %42, i32 0, i32 1
  %43 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p31, align 8
  %vbox32 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %43, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox32, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %46 = bitcast %struct._GimpToolbox* %45 to i8*
  %47 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %48 = bitcast %struct._GimpToolbox* %47 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_leave to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 0)
  %49 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %50 = bitcast %struct._GimpToolbox* %49 to i8*
  %51 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %52 = bitcast %struct._GimpToolbox* %51 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_motion to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %54 = bitcast %struct._GimpToolbox* %53 to i8*
  %55 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %56 = bitcast %struct._GimpToolbox* %55 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_drop to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p36 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %57, i32 0, i32 1
  %58 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p36, align 8
  %vbox37 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %58, i32 0, i32 1
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox37, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %62 = bitcast %struct._GimpToolbox* %61 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_leave to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p39 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %63, i32 0, i32 1
  %64 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p39, align 8
  %vbox40 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox40, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %68 = bitcast %struct._GimpToolbox* %67 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_motion to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p42 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %69, i32 0, i32 1
  %70 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p42, align 8
  %vbox43 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %70, i32 0, i32 1
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox43, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %73 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %74 = bitcast %struct._GimpToolbox* %73 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpToolbox*)* @gimp_toolbox_drag_drop to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %call45 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  %75 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p46 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %75, i32 0, i32 1
  %76 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p46, align 8
  %header = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %76, i32 0, i32 2
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %header, align 8
  %77 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p47 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %77, i32 0, i32 1
  %78 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p47, align 8
  %header48 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %78, i32 0, i32 2
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %header48, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_frame_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call49)
  %81 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %81, i32 0)
  %82 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p51 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %82, i32 0, i32 1
  %83 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p51, align 8
  %vbox52 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %83, i32 0, i32 1
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox52, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call53)
  %86 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %87 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p55 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %87, i32 0, i32 1
  %88 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p55, align 8
  %header56 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %88, i32 0, i32 2
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %header56, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_wilber = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %90, i32 0, i32 18
  %91 = load i32, i32* %toolbox_wilber, align 4
  %tobool57 = icmp ne i32 %91, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %do.end
  %92 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p59 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %92, i32 0, i32 1
  %93 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p59, align 8
  %header60 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %93, i32 0, i32 2
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %header60, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %do.end
  %95 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p62 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %95, i32 0, i32 1
  %96 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p62, align 8
  %header63 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %96, i32 0, i32 2
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %header63, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %99 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %100 = bitcast %struct._GimpToolbox* %99 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkRequisition*, %struct._GimpToolbox*)* @gimp_toolbox_size_request_wilber to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p65 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %101, i32 0, i32 1
  %102 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p65, align 8
  %header66 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %102, i32 0, i32 2
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %header66, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %105 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %106 = bitcast %struct._GimpToolbox* %105 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_toolbox_expose_wilber to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 0)
  %107 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p68 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %107, i32 0, i32 1
  %108 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p68, align 8
  %header69 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %108, i32 0, i32 2
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %header69, align 8
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %109, i8* %call70, i8* null)
  %110 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %111 = bitcast %struct._GimpGuiConfig* %110 to i8*
  %112 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p71 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %112, i32 0, i32 1
  %113 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p71, align 8
  %header72 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %113, i32 0, i32 2
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %header72, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %call73 = call i64 @g_signal_connect_object(i8* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GtkWidget*)* @toolbox_wilber_notify to void ()*), i8* %115, i32 0)
  %call74 = call %struct._GtkWidget* @gimp_tool_palette_new()
  %116 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p75 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %116, i32 0, i32 1
  %117 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p75, align 8
  %tool_palette = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %117, i32 0, i32 3
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %tool_palette, align 8
  %118 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p76 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %118, i32 0, i32 1
  %119 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p76, align 8
  %tool_palette77 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %119, i32 0, i32 3
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_palette77, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_tool_palette_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call78)
  %122 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpToolPalette*
  %123 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  call void @gimp_tool_palette_set_toolbox(%struct._GimpToolPalette* %122, %struct._GimpToolbox* %123)
  %124 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p80 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %124, i32 0, i32 1
  %125 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p80, align 8
  %vbox81 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %125, i32 0, i32 1
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox81, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call82)
  %128 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %129 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p84 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %129, i32 0, i32 1
  %130 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p84, align 8
  %tool_palette85 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %130, i32 0, i32 3
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_palette85, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %128, %struct._GtkWidget* %131, i32 0, i32 0, i32 0)
  %132 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p86 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %132, i32 0, i32 1
  %133 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p86, align 8
  %tool_palette87 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %133, i32 0, i32 3
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_palette87, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %call88 = call %struct._GtkWidget* @gtk_hwrap_box_new(i32 0)
  %135 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p89 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %135, i32 0, i32 1
  %136 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p89, align 8
  %area_wbox = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %136, i32 0, i32 4
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %area_wbox, align 8
  %137 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p90 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %137, i32 0, i32 1
  %138 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p90, align 8
  %area_wbox91 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %138, i32 0, i32 4
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox91, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_wrap_box_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call92)
  %141 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkWrapBox*
  call void @gtk_wrap_box_set_justify(%struct._GtkWrapBox* %141, i32 0)
  %142 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p94 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %142, i32 0, i32 1
  %143 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p94, align 8
  %area_wbox95 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %143, i32 0, i32 4
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox95, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_wrap_box_get_type() #8
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call96)
  %146 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkWrapBox*
  call void @gtk_wrap_box_set_line_justify(%struct._GtkWrapBox* %146, i32 0)
  %147 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p98 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %147, i32 0, i32 1
  %148 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p98, align 8
  %area_wbox99 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %148, i32 0, i32 4
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox99, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_wrap_box_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call100)
  %151 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkWrapBox*
  call void @gtk_wrap_box_set_aspect_ratio(%struct._GtkWrapBox* %151, float 0x3FC1111120000000)
  %152 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p102 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %152, i32 0, i32 1
  %153 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p102, align 8
  %vbox103 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %153, i32 0, i32 1
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox103, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #8
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call104)
  %156 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %157 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p106 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %157, i32 0, i32 1
  %158 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p106, align 8
  %area_wbox107 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %158, i32 0, i32 4
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox107, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %156, %struct._GtkWidget* %159, i32 0, i32 0, i32 0)
  %160 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p108 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %160, i32 0, i32 1
  %161 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p108, align 8
  %area_wbox109 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %161, i32 0, i32 4
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox109, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %163 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %164 = bitcast %struct._GimpToolbox* %163 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_widget_get_type() #8
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call110)
  %165 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkWidget*
  %call112 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %165)
  store %struct._GdkDisplay* %call112, %struct._GdkDisplay** %display, align 8
  %166 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call113 = call %struct._GList* @gdk_display_list_devices(%struct._GdkDisplay* %166)
  store %struct._GList* %call113, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.61
  %167 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool114 = icmp ne %struct._GList* %167, null
  br i1 %tobool114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %168 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %168, i32 0, i32 0
  %169 = load i8*, i8** %data, align 8
  %170 = bitcast i8* %169 to %struct._GdkDevice*
  %has_cursor = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %170, i32 0, i32 4
  %171 = load i32, i32* %has_cursor, align 4
  %tobool115 = icmp ne i32 %171, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %for.body
  br label %for.end

if.end.117:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.117
  %172 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %172, i32 0, i32 1
  %173 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %173, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.116, %for.cond
  %174 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool118 = icmp ne %struct._GList* %174, null
  br i1 %tobool118, label %if.end.127, label %if.then.119

if.then.119:                                      ; preds = %for.end
  %175 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %176 = bitcast %struct._GimpToolbox* %175 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_widget_get_type() #8
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call120)
  %177 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %177, i32 4)
  %178 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p122 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %178, i32 0, i32 1
  %179 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p122, align 8
  %context123 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %179, i32 0, i32 0
  %180 = load %struct._GimpContext*, %struct._GimpContext** %context123, align 8
  %gimp124 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %180, i32 0, i32 1
  %181 = load %struct._Gimp*, %struct._Gimp** %gimp124, align 8
  %182 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %183 = bitcast %struct._GimpToolbox* %182 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_widget_get_type() #8
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call125)
  %184 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkWidget*
  call void @gimp_devices_add_widget(%struct._Gimp* %181, %struct._GtkWidget* %184)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.119, %for.end
  %185 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %186 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p128 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %186, i32 0, i32 1
  %187 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p128, align 8
  %context129 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %187, i32 0, i32 0
  %188 = load %struct._GimpContext*, %struct._GimpContext** %context129, align 8
  %call130 = call %struct._GtkWidget* @toolbox_create_color_area(%struct._GimpToolbox* %185, %struct._GimpContext* %188)
  %189 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p131 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %189, i32 0, i32 1
  %190 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p131, align 8
  %color_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %190, i32 0, i32 5
  store %struct._GtkWidget* %call130, %struct._GtkWidget** %color_area, align 8
  %191 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p132 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %191, i32 0, i32 1
  %192 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p132, align 8
  %area_wbox133 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %192, i32 0, i32 4
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox133, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_wrap_box_get_type() #8
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call134)
  %195 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkWrapBox*
  %196 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p136 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %196, i32 0, i32 1
  %197 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p136, align 8
  %color_area137 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %197, i32 0, i32 5
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area137, align 8
  call void @gtk_wrap_box_pack_wrapped(%struct._GtkWrapBox* %195, %struct._GtkWidget* %198, i32 1, i32 1, i32 0, i32 1, i32 1)
  %199 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_color_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %199, i32 0, i32 15
  %200 = load i32, i32* %toolbox_color_area, align 4
  %tobool138 = icmp ne i32 %200, 0
  br i1 %tobool138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.end.127
  %201 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p140 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %201, i32 0, i32 1
  %202 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p140, align 8
  %color_area141 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %202, i32 0, i32 5
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area141, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %203)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.end.127
  %204 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %205 = bitcast %struct._GimpGuiConfig* %204 to i8*
  %206 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p143 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %206, i32 0, i32 1
  %207 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p143, align 8
  %color_area144 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %207, i32 0, i32 5
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area144, align 8
  %209 = bitcast %struct._GtkWidget* %208 to i8*
  %call145 = call i64 @g_signal_connect_object(i8* %205, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GtkWidget*)* @toolbox_area_notify to void ()*), i8* %209, i32 0)
  %210 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %211 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p146 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %211, i32 0, i32 1
  %212 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p146, align 8
  %context147 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %212, i32 0, i32 0
  %213 = load %struct._GimpContext*, %struct._GimpContext** %context147, align 8
  %call148 = call %struct._GtkWidget* @toolbox_create_foo_area(%struct._GimpToolbox* %210, %struct._GimpContext* %213)
  %214 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p149 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %214, i32 0, i32 1
  %215 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p149, align 8
  %foo_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %215, i32 0, i32 6
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %foo_area, align 8
  %216 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p150 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %216, i32 0, i32 1
  %217 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p150, align 8
  %area_wbox151 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %217, i32 0, i32 4
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox151, align 8
  %219 = bitcast %struct._GtkWidget* %218 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_wrap_box_get_type() #8
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call152)
  %220 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkWrapBox*
  %221 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p154 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %221, i32 0, i32 1
  %222 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p154, align 8
  %foo_area155 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %222, i32 0, i32 6
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area155, align 8
  call void @gtk_wrap_box_pack(%struct._GtkWrapBox* %220, %struct._GtkWidget* %223, i32 1, i32 1, i32 0, i32 1)
  %224 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_foo_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %224, i32 0, i32 16
  %225 = load i32, i32* %toolbox_foo_area, align 4
  %tobool156 = icmp ne i32 %225, 0
  br i1 %tobool156, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %if.end.142
  %226 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p158 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %226, i32 0, i32 1
  %227 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p158, align 8
  %foo_area159 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %227, i32 0, i32 6
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area159, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %228)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %if.end.142
  %229 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %230 = bitcast %struct._GimpGuiConfig* %229 to i8*
  %231 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p161 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %231, i32 0, i32 1
  %232 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p161, align 8
  %foo_area162 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %232, i32 0, i32 6
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area162, align 8
  %234 = bitcast %struct._GtkWidget* %233 to i8*
  %call163 = call i64 @g_signal_connect_object(i8* %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GtkWidget*)* @toolbox_area_notify to void ()*), i8* %234, i32 0)
  %235 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %236 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p164 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %236, i32 0, i32 1
  %237 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p164, align 8
  %context165 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %237, i32 0, i32 0
  %238 = load %struct._GimpContext*, %struct._GimpContext** %context165, align 8
  %call166 = call %struct._GtkWidget* @toolbox_create_image_area(%struct._GimpToolbox* %235, %struct._GimpContext* %238)
  %239 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p167 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %239, i32 0, i32 1
  %240 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p167, align 8
  %image_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %240, i32 0, i32 7
  store %struct._GtkWidget* %call166, %struct._GtkWidget** %image_area, align 8
  %241 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p168 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %241, i32 0, i32 1
  %242 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p168, align 8
  %area_wbox169 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %242, i32 0, i32 4
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox169, align 8
  %244 = bitcast %struct._GtkWidget* %243 to %struct._GTypeInstance*
  %call170 = call i64 @gtk_wrap_box_get_type() #8
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call170)
  %245 = bitcast %struct._GTypeInstance* %call171 to %struct._GtkWrapBox*
  %246 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p172 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %246, i32 0, i32 1
  %247 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p172, align 8
  %image_area173 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %247, i32 0, i32 7
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area173, align 8
  call void @gtk_wrap_box_pack(%struct._GtkWrapBox* %245, %struct._GtkWidget* %248, i32 1, i32 1, i32 0, i32 1)
  %249 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_image_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %249, i32 0, i32 17
  %250 = load i32, i32* %toolbox_image_area, align 4
  %tobool174 = icmp ne i32 %250, 0
  br i1 %tobool174, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %if.end.160
  %251 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p176 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %251, i32 0, i32 1
  %252 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p176, align 8
  %image_area177 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %252, i32 0, i32 7
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area177, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %253)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %if.end.160
  %254 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %255 = bitcast %struct._GimpGuiConfig* %254 to i8*
  %256 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p179 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %256, i32 0, i32 1
  %257 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p179, align 8
  %image_area180 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %257, i32 0, i32 7
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area180, align 8
  %259 = bitcast %struct._GtkWidget* %258 to i8*
  %call181 = call i64 @g_signal_connect_object(i8* %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GtkWidget*)* @toolbox_area_notify to void ()*), i8* %259, i32 0)
  %260 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %261 = bitcast %struct._GimpToolbox* %260 to %struct._GTypeInstance*
  %call182 = call i64 @gimp_toolbox_get_type() #8
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call182)
  %262 = bitcast %struct._GTypeInstance* %call183 to %struct._GimpToolbox*
  %263 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p184 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %263, i32 0, i32 1
  %264 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p184, align 8
  %vbox185 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %264, i32 0, i32 1
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox185, align 8
  call void @gimp_toolbox_dnd_init(%struct._GimpToolbox* %262, %struct._GtkWidget* %265)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %3, i32 0, i32 1
  %4 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %in_destruction = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %4, i32 0, i32 11
  store i32 1, i32* %in_destruction, align 4
  %5 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p2 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %5, i32 0, i32 1
  %6 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p2, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p3 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %8, i32 0, i32 1
  %9 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p3, align 8
  %context4 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %9, i32 0, i32 0
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %11 = bitcast %struct._GimpContext* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p5 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %12, i32 0, i32 1
  %13 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p5, align 8
  %context6 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %13, i32 0, i32 0
  store %struct._GimpContext* null, %struct._GimpContext** %context6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 5
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  %19 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p8 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %19, i32 0, i32 1
  %20 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p8, align 8
  %in_destruction9 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %20, i32 0, i32 11
  store i32 0, i32* %in_destruction9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContext*
  %6 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %6, i32 0, i32 1
  %7 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %7, i32 0, i32 0
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
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
  %call3 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %11, i8* %13, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %5, i32 0, i32 1
  %6 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %_glib__object, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %_glib__pspec, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  store i32 %11, i32* %_glib__property_id, align 4
  %12 = load i32, i32* %_glib__property_id, align 4
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %12, i8* %14, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %color_requisition = alloca %struct._GtkRequisition, align 4
  %foo_requisition = alloca %struct._GtkRequisition, align 4
  %image_requisition = alloca %struct._GtkRequisition, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %n_areas = alloca i32, align 4
  %area_rows = alloca i32, align 4
  %area_columns = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %9, i32 0, i32 1
  %10 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 1
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config4, align 8
  %14 = bitcast %struct._GimpCoreConfig* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gui_config_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %15, %struct._GimpGuiConfig** %config, align 8
  %16 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p7 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %16, i32 0, i32 1
  %17 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p7, align 8
  %color_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %18, %struct._GtkRequisition* %color_requisition)
  %19 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p8 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %19, i32 0, i32 1
  %20 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p8, align 8
  %foo_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %20, i32 0, i32 6
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %21, %struct._GtkRequisition* %foo_requisition)
  %22 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p9 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %22, i32 0, i32 1
  %23 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p9, align 8
  %image_area = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %24, %struct._GtkRequisition* %image_requisition)
  %width10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %color_requisition, i32 0, i32 0
  %25 = load i32, i32* %width10, align 4
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 0
  %26 = load i32, i32* %width11, align 4
  %width12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 0
  %27 = load i32, i32* %width12, align 4
  %cmp = icmp sgt i32 %26, %27
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width13 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 0
  %28 = load i32, i32* %width13, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %width14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 0
  %29 = load i32, i32* %width14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %cmp15 = icmp sgt i32 %25, %cond
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end
  %width17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %color_requisition, i32 0, i32 0
  %30 = load i32, i32* %width17, align 4
  br label %cond.end.28

cond.false.18:                                    ; preds = %cond.end
  %width19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 0
  %31 = load i32, i32* %width19, align 4
  %width20 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 0
  %32 = load i32, i32* %width20, align 4
  %cmp21 = icmp sgt i32 %31, %32
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.false.18
  %width23 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 0
  %33 = load i32, i32* %width23, align 4
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.false.18
  %width25 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 0
  %34 = load i32, i32* %width25, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond27 = phi i32 [ %33, %cond.true.22 ], [ %34, %cond.false.24 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.16
  %cond29 = phi i32 [ %30, %cond.true.16 ], [ %cond27, %cond.end.26 ]
  store i32 %cond29, i32* %width, align 4
  %height30 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %color_requisition, i32 0, i32 1
  %35 = load i32, i32* %height30, align 4
  %height31 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 1
  %36 = load i32, i32* %height31, align 4
  %height32 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 1
  %37 = load i32, i32* %height32, align 4
  %cmp33 = icmp sgt i32 %36, %37
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.28
  %height35 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 1
  %38 = load i32, i32* %height35, align 4
  br label %cond.end.38

cond.false.36:                                    ; preds = %cond.end.28
  %height37 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 1
  %39 = load i32, i32* %height37, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.34
  %cond39 = phi i32 [ %38, %cond.true.34 ], [ %39, %cond.false.36 ]
  %cmp40 = icmp sgt i32 %35, %cond39
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.38
  %height42 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %color_requisition, i32 0, i32 1
  %40 = load i32, i32* %height42, align 4
  br label %cond.end.53

cond.false.43:                                    ; preds = %cond.end.38
  %height44 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 1
  %41 = load i32, i32* %height44, align 4
  %height45 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 1
  %42 = load i32, i32* %height45, align 4
  %cmp46 = icmp sgt i32 %41, %42
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %cond.false.43
  %height48 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %foo_requisition, i32 0, i32 1
  %43 = load i32, i32* %height48, align 4
  br label %cond.end.51

cond.false.49:                                    ; preds = %cond.false.43
  %height50 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %image_requisition, i32 0, i32 1
  %44 = load i32, i32* %height50, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.47
  %cond52 = phi i32 [ %43, %cond.true.47 ], [ %44, %cond.false.49 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.41
  %cond54 = phi i32 [ %40, %cond.true.41 ], [ %cond52, %cond.end.51 ]
  store i32 %cond54, i32* %height, align 4
  %45 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_color_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %45, i32 0, i32 15
  %46 = load i32, i32* %toolbox_color_area, align 4
  %47 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_foo_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %47, i32 0, i32 16
  %48 = load i32, i32* %toolbox_foo_area, align 4
  %add = add nsw i32 %46, %48
  %49 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %toolbox_image_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %49, i32 0, i32 17
  %50 = load i32, i32* %toolbox_image_area, align 4
  %add55 = add nsw i32 %add, %50
  store i32 %add55, i32* %n_areas, align 4
  %51 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width56 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %51, i32 0, i32 2
  %52 = load i32, i32* %width56, align 4
  %53 = load i32, i32* %width, align 4
  %div = sdiv i32 %52, %53
  %cmp57 = icmp sgt i32 1, %div
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.53
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.end.53
  %54 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width60 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %54, i32 0, i32 2
  %55 = load i32, i32* %width60, align 4
  %56 = load i32, i32* %width, align 4
  %div61 = sdiv i32 %55, %56
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i32 [ 1, %cond.true.58 ], [ %div61, %cond.false.59 ]
  store i32 %cond63, i32* %area_columns, align 4
  %57 = load i32, i32* %n_areas, align 4
  %58 = load i32, i32* %area_columns, align 4
  %div64 = sdiv i32 %57, %58
  store i32 %div64, i32* %area_rows, align 4
  %59 = load i32, i32* %n_areas, align 4
  %60 = load i32, i32* %area_columns, align 4
  %rem = srem i32 %59, %60
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.62
  %61 = load i32, i32* %area_rows, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %area_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.62
  %62 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p65 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %62, i32 0, i32 1
  %63 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p65, align 8
  %area_rows66 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %63, i32 0, i32 8
  %64 = load i32, i32* %area_rows66, align 4
  %65 = load i32, i32* %area_rows, align 4
  %cmp67 = icmp ne i32 %64, %65
  br i1 %cmp67, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %66 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p68 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %66, i32 0, i32 1
  %67 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p68, align 8
  %area_columns69 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %67, i32 0, i32 9
  %68 = load i32, i32* %area_columns69, align 4
  %69 = load i32, i32* %area_columns, align 4
  %cmp70 = icmp ne i32 %68, %69
  br i1 %cmp70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %lor.lhs.false, %if.end
  %70 = load i32, i32* %area_rows, align 4
  %71 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p72 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %71, i32 0, i32 1
  %72 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p72, align 8
  %area_rows73 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %72, i32 0, i32 8
  store i32 %70, i32* %area_rows73, align 4
  %73 = load i32, i32* %area_columns, align 4
  %74 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p74 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %74, i32 0, i32 1
  %75 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p74, align 8
  %area_columns75 = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %75, i32 0, i32 9
  store i32 %73, i32* %area_columns75, align 4
  %76 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p76 = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %76, i32 0, i32 1
  %77 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p76, align 8
  %area_wbox = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %77, i32 0, i32 4
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %area_wbox, align 8
  %79 = load i32, i32* %area_rows, align 4
  %80 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %79, %80
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %78, i32 -1, i32 %mul)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_toolbox_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %7, %struct._GdkAtom* inttoptr (i64 1 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call3, %struct._GtkClipboard** %clipboard, align 8
  %8 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %9 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %9, i32 0, i32 1
  %10 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %12 = bitcast %struct._GimpContext* %11 to i8*
  %call4 = call i8* @g_object_ref(i8* %12)
  call void @gtk_clipboard_request_text(%struct._GtkClipboard* %8, void (%struct._GtkClipboard*, i8*, i8*)* @toolbox_paste_received, i8* %call4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_toolbox_get_description(%struct._GimpDock* %dock, i32 %complete) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %complete.addr = alloca i32, align 4
  %desc = alloca %struct._GString*, align 8
  %dock_desc = alloca i8*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %complete, i32* %complete.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)) #7
  %call1 = call %struct._GString* @g_string_new(i8* %call)
  store %struct._GString* %call1, %struct._GString** %desc, align 8
  %0 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call2 = call i64 @gimp_dock_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call2)
  %2 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDockClass*
  %get_description = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %2, i32 0, i32 1
  %3 = load i8* (%struct._GimpDock*, i32)*, i8* (%struct._GimpDock*, i32)** %get_description, align 8
  %4 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %5 = load i32, i32* %complete.addr, align 4
  %call4 = call i8* %3(%struct._GimpDock* %4, i32 %5)
  store i8* %call4, i8** %dock_desc, align 8
  %6 = load i8*, i8** %dock_desc, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %dock_desc, align 8
  %call5 = call i64 @strlen(i8* %7) #9
  %cmp = icmp ugt i64 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GString*, %struct._GString** %desc, align 8
  %call6 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i64 5)
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %8, i8* %call6)
  %9 = load %struct._GString*, %struct._GString** %desc, align 8
  %10 = load i8*, i8** %dock_desc, align 8
  %call8 = call %struct._GString* @g_string_append(%struct._GString* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i8*, i8** %dock_desc, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GString*, %struct._GString** %desc, align 8
  %call9 = call i8* @g_string_free(%struct._GString* %12, i32 0)
  ret i8* %call9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_set_host_geometry_hints(%struct._GimpDock* %dock, %struct._GtkWindow* %window) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %window.addr = alloca %struct._GtkWindow*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  %button_width = alloca i32, align 4
  %button_height = alloca i32, align 4
  %geometry = alloca %struct._GdkGeometry, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %3, i32 0, i32 1
  %4 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %tool_palette = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %4, i32 0, i32 3
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_palette, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_palette_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpToolPalette*
  %call4 = call i32 @gimp_tool_palette_get_button_size(%struct._GimpToolPalette* %7, i32* %button_width, i32* %button_height)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %button_width, align 4
  %mul = mul nsw i32 2, %8
  %min_width = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 0
  store i32 %mul, i32* %min_width, align 4
  %min_height = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 1
  store i32 -1, i32* %min_height, align 4
  %9 = load i32, i32* %button_width, align 4
  %base_width = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 4
  store i32 %9, i32* %base_width, align 4
  %base_height = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 5
  store i32 0, i32* %base_height, align 4
  %10 = load i32, i32* %button_width, align 4
  %width_inc = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 6
  store i32 %10, i32* %width_inc, align 4
  %height_inc = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 7
  store i32 1, i32* %height_inc, align 4
  %11 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_geometry_hints(%struct._GtkWindow* %11, %struct._GtkWidget* null, %struct._GdkGeometry* %geometry, i32 170)
  %12 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gimp_dialog_factory_set_has_min_size(%struct._GtkWindow* %12, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_book_added(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_dock_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDockClass*
  %book_added = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %2, i32 0, i32 3
  %3 = load void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_added, align 8
  %tobool = icmp ne void (%struct._GimpDock*, %struct._GimpDockbook*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call i64 @gimp_dock_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDockClass*
  %book_added4 = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %6, i32 0, i32 3
  %7 = load void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_added4, align 8
  %8 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %9 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void %7(%struct._GimpDock* %8, %struct._GimpDockbook* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call5 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %10)
  %call6 = call i32 @g_list_length(%struct._GList* %call5)
  %cmp = icmp eq i32 %call6, 1
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_invalidate_geometry(%struct._GimpDock* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_book_removed(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %toolbox = alloca %struct._GimpToolbox*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_toolbox_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %2, %struct._GimpToolbox** %toolbox, align 8
  %3 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_dock_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDockClass*
  %book_removed = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %5, i32 0, i32 4
  %6 = load void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_removed, align 8
  %tobool = icmp ne void (%struct._GimpDock*, %struct._GimpDockbook*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_toolbox_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gimp_dock_get_type() #8
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GimpDockClass*
  %book_removed6 = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %9, i32 0, i32 4
  %10 = load void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_removed6, align 8
  %11 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %12 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void %10(%struct._GimpDock* %11, %struct._GimpDockbook* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call7 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %13)
  %tobool8 = icmp ne %struct._GList* %call7, null
  br i1 %tobool8, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %14, i32 0, i32 1
  %15 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %in_destruction = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %15, i32 0, i32 11
  %16 = load i32, i32* %in_destruction, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_invalidate_geometry(%struct._GimpDock* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare %struct._GtkWidget* @gimp_dock_get_main_vbox(%struct._GimpDock*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time, %struct._GimpToolbox* %toolbox) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %time.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_toolbox_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GimpToolbox* %toolbox) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %handle = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %0, i32 0, i32 1
  %1 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %1, i32 0, i32 10
  %2 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %time.addr, align 4
  %call = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %2, %struct._GtkWidget* %3, %struct._GdkDragContext* %4, i32 %5, i32 %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %9 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %8, i32 0, i32 %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %10, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call1 = call %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget* %11, %struct._GdkDragContext* %12, %struct._GtkTargetList* null)
  %cmp = icmp ne %struct._GdkAtom* %call1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %handle, align 4
  %13 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %14 = load i32, i32* %handle, align 4
  %tobool2 = icmp ne i32 %14, 0
  %cond = select i1 %tobool2, i32 4, i32 0
  %15 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %13, i32 %cond, i32 %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = load i32, i32* %handle, align 4
  call void @gimp_highlight_widget(%struct._GtkWidget* %16, i32 %17)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_toolbox_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GimpToolbox* %toolbox) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %target = alloca %struct._GdkAtom*, align 8
  %dropped = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store i32 0, i32* %dropped, align 4
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %0, i32 0, i32 1
  %1 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %1, i32 0, i32 10
  %2 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %time.addr, align 4
  %call = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %2, %struct._GtkWidget* %3, %struct._GdkDragContext* %4, i32 %5, i32 %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call1 = call %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget* %8, %struct._GdkDragContext* %9, %struct._GtkTargetList* null)
  store %struct._GdkAtom* %call1, %struct._GdkAtom** %target, align 8
  %10 = load %struct._GdkAtom*, %struct._GdkAtom** %target, align 8
  %cmp = icmp ne %struct._GdkAtom* %10, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %13 = load %struct._GdkAtom*, %struct._GdkAtom** %target, align 8
  %14 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_get_data(%struct._GtkWidget* %11, %struct._GdkDragContext* %12, %struct._GdkAtom* %13, i32 %14)
  store i32 1, i32* %dropped, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %15 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %16 = load i32, i32* %dropped, align 4
  %17 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %action = getelementptr inbounds %struct._GdkDragContext, %struct._GdkDragContext* %17, i32 0, i32 8
  %18 = load i32, i32* %action, align 4
  %cmp4 = icmp eq i32 %18, 4
  %conv = zext i1 %cmp4 to i32
  %19 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %15, i32 %16, i32 %conv, i32 %19)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_size_request_wilber(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition, %struct._GimpToolbox* %toolbox) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %button_width = alloca i32, align 4
  %button_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolbox, %struct._GimpToolbox* %0, i32 0, i32 1
  %1 = load %struct._GimpToolboxPrivate*, %struct._GimpToolboxPrivate** %p, align 8
  %tool_palette = getelementptr inbounds %struct._GimpToolboxPrivate, %struct._GimpToolboxPrivate* %1, i32 0, i32 3
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_palette, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPalette*
  %call2 = call i32 @gimp_tool_palette_get_button_size(%struct._GimpToolPalette* %4, i32* %button_width, i32* %button_height)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %button_width, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 0x3FEAAAAAAAAAA97E
  %conv3 = fptosi double %mul to i32
  %6 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %6, i32 0, i32 0
  store i32 %conv3, i32* %width, align 4
  %7 = load i32, i32* %button_height, align 4
  %conv4 = sitofp i32 %7 to double
  %mul5 = fmul double %conv4, 0x3FEAAAAAAAAAA97E
  %conv6 = fptosi double %mul5 to i32
  %8 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %8, i32 0, i32 1
  store i32 %conv6, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width7 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %9, i32 0, i32 0
  store i32 16, i32* %width7, align 4
  %10 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height8 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %10, i32 0, i32 1
  store i32 16, i32* %height8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_toolbox_expose_wilber(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 4
  %3 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %1, %struct._GdkRegion* %3)
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_cairo_draw_toolbox_wilber(%struct._GtkWidget* %5, %struct._cairo* %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %7)
  ret i32 0
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @toolbox_wilber_notify(%struct._GimpGuiConfig* %config, %struct._GParamSpec* %pspec, %struct._GtkWidget* %wilber) #3 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %wilber.addr = alloca %struct._GtkWidget*, align 8
  %visible = alloca i32, align 4
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkWidget* %wilber, %struct._GtkWidget** %wilber.addr, align 8
  %0 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpGuiConfig* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %visible, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %wilber.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %6, i8* null)
  ret void
}

declare %struct._GtkWidget* @gimp_tool_palette_new() #1

declare void @gimp_tool_palette_set_toolbox(%struct._GimpToolPalette*, %struct._GimpToolbox*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_palette_get_type() #2

declare %struct._GtkWidget* @gtk_hwrap_box_new(i32) #1

declare void @gtk_wrap_box_set_justify(%struct._GtkWrapBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_wrap_box_get_type() #2

declare void @gtk_wrap_box_set_line_justify(%struct._GtkWrapBox*, i32) #1

declare void @gtk_wrap_box_set_aspect_ratio(%struct._GtkWrapBox*, float) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GList* @gdk_display_list_devices(%struct._GdkDisplay*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gimp_devices_add_widget(%struct._Gimp*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @toolbox_create_color_area(%struct._GimpToolbox* %toolbox, %struct._GimpContext* %context) #3 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %col_area = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %alignment, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %3, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  %4 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_toolbox_color_area_create(%struct._GimpToolbox* %4, i32 54, i32 42)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %col_area, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %col_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %col_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  ret %struct._GtkWidget* %10
}

declare void @gtk_wrap_box_pack_wrapped(%struct._GtkWrapBox*, %struct._GtkWidget*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @toolbox_area_notify(%struct._GimpGuiConfig* %config, %struct._GParamSpec* %pspec, %struct._GtkWidget* %area) #3 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %area.addr = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %visible = alloca i32, align 4
  %req = alloca %struct._GtkRequisition, align 4
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %1 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %toolbox_color_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %1, i32 0, i32 15
  %2 = load i32, i32* %toolbox_color_area, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %toolbox_foo_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %3, i32 0, i32 16
  %4 = load i32, i32* %toolbox_foo_area, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %toolbox_image_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %5, i32 0, i32 17
  %6 = load i32, i32* %toolbox_image_area, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %8, %struct._GtkRequisition* %req)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 0
  %10 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 1
  %11 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 %10, i32 %11)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpGuiConfig* %14 to i8*
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %15, i8* %17, i32* %visible, i8* null)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %20, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @toolbox_create_foo_area(%struct._GimpToolbox* %toolbox, %struct._GimpContext* %context) #3 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %foo_area = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %alignment, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %3, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
  %4 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_toolbox_indicator_area_create(%struct._GimpToolbox* %4)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %foo_area, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %foo_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  ret %struct._GtkWidget* %10
}

declare void @gtk_wrap_box_pack(%struct._GtkWrapBox*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @toolbox_create_image_area(%struct._GimpToolbox* %toolbox, %struct._GimpContext* %context) #3 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %image_area = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %alignment, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %3, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  %4 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_toolbox_image_area_create(%struct._GimpToolbox* %4, i32 52, i32 42)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %image_area, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %image_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  ret %struct._GtkWidget* %10
}

declare void @gimp_toolbox_dnd_init(%struct._GimpToolbox*, %struct._GtkWidget*) #1

declare void @gimp_highlight_widget(%struct._GtkWidget*, i32) #1

declare i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox*, %struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32) #1

declare void @gdk_drag_status(%struct._GdkDragContext*, i32, i32) #1

declare %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkTargetList*) #1

declare void @gtk_drag_get_data(%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GdkAtom*, i32) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare i32 @gimp_tool_palette_get_button_size(%struct._GimpToolPalette*, i32*, i32*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gimp_cairo_draw_toolbox_wilber(%struct._GtkWidget*, %struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_toolbox_color_area_create(%struct._GimpToolbox*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_toolbox_indicator_area_create(%struct._GimpToolbox*) #1

declare %struct._GtkWidget* @gimp_toolbox_image_area_create(%struct._GimpToolbox*, i32, i32) #1

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
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget*, %struct._GdkAtom*) #1

declare void @gtk_clipboard_request_text(%struct._GtkClipboard*, void (%struct._GtkClipboard*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toolbox_paste_received(%struct._GtkClipboard* %clipboard, i8* %text, i8* %data) #3 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %text.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %newline = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load i8*, i8** %text.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %text.addr, align 8
  %call2 = call i8* @strchr(i8* %4, i32 10) #9
  store i8* %call2, i8** %newline, align 8
  %5 = load i8*, i8** %newline, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load i8*, i8** %text.addr, align 8
  %7 = load i8*, i8** %newline, align 8
  %8 = load i8*, i8** %text.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call noalias i8* @g_strndup(i8* %6, i64 %sub.ptr.sub)
  store i8* %call5, i8** %copy, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load i8*, i8** %text.addr, align 8
  %call6 = call noalias i8* @g_strdup(i8* %9)
  store i8* %call6, i8** %copy, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %10 = load i8*, i8** %copy, align 8
  %call7 = call i8* @g_strchug(i8* %10)
  %call8 = call i8* @g_strchomp(i8* %call7)
  %11 = load i8*, i8** %copy, align 8
  %call9 = call i64 @strlen(i8* %11) #9
  %tobool10 = icmp ne i64 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = load i8*, i8** %copy, align 8
  %call12 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %13, %struct._GimpContext* %14, %struct._GimpProgress* null, i8* %15, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool13 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool13, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.11
  %17 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %17, 4
  br i1 %cmp, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %copy, align 8
  %call15 = call i8* @file_utils_uri_display_name(i8* %18)
  store i8* %call15, i8** %filename, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)) #7
  %21 = load i8*, i8** %filename, align 8
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %20, %struct._GObject* null, i32 2, i8* %call17, i8* %21, i8* %23)
  call void @g_clear_error(%struct._GError** %error)
  %24 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %25 = load i8*, i8** %copy, align 8
  call void @g_free(i8* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %27 = bitcast %struct._GimpContext* %26 to i8*
  call void @g_object_unref(i8* %27)
  ret void
}

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_strndup(i8*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @gtk_window_set_geometry_hints(%struct._GtkWindow*, %struct._GtkWidget*, %struct._GdkGeometry*, i32) #1

declare void @gimp_dialog_factory_set_has_min_size(%struct._GtkWindow*, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock*) #1

declare void @gimp_dock_invalidate_geometry(%struct._GimpDock*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

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
