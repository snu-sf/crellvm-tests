; ModuleID = './app/widgets/gimptooloptionseditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolOptionsEditorClass = type { %struct._GimpEditorClass }
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
%struct._GimpToolOptionsEditor = type { %struct._GimpEditor, %struct._GimpToolOptionsEditorPrivate* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpToolOptionsEditorPrivate = type { %struct._Gimp*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpToolOptions* }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkViewport = type { %struct._GtkBin, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque

@gimp_tool_options_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpToolOptionsEditor\00", align 1
@gimp_tool_options_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_tool_options_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tool_options_editor_new = private unnamed_addr constant [29 x i8] c"gimp_tool_options_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<ToolOptions>\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"/tool-options-popup\00", align 1
@__func__.gimp_tool_options_editor_get_tool_options = private unnamed_addr constant [42 x i8] c"gimp_tool_options_editor_get_tool_options\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"GIMP_IS_TOOL_OPTIONS_EDITOR (editor)\00", align 1
@gimp_tool_options_editor_parent_class = internal global i8* null, align 8
@GimpToolOptionsEditor_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Save Tool Preset...\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"gimp-tool-options-save\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Restore Tool Preset...\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"gimp-tool-options-restore\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Delete Tool Preset...\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"gimp-tool-options-delete\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"tool-options-reset\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"tool-options-reset-all\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"tool-changed\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"/tool-options-popup/Save\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"tool-options-save-new-preset\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"/tool-options-popup/Restore\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"/tool-options-popup/Delete\00", align 1
@__func__.gimp_tool_options_editor_tool_changed = private unnamed_addr constant [38 x i8] c"gimp_tool_options_editor_tool_changed\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TOOL_INFO(tool_info)\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"gimptooloptionseditor.c\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tool\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_options_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_options_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_options_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_options_editor_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_tool_options_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_options_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_tool_options_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_options_editor_parent_class, align 8
  %1 = load i32, i32* @GimpToolOptionsEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolOptionsEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolOptionsEditorClass*
  call void @gimp_tool_options_editor_class_init(%struct._GimpToolOptionsEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_init(%struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  %scrolled_window = alloca %struct._GtkScrolledWindow*, align 8
  %viewport = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolOptionsEditorPrivate*
  %3 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %3, i32 0, i32 1
  store %struct._GimpToolOptionsEditorPrivate* %2, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %4 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpToolOptionsEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %6, i32 -1, i32 200)
  %7 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpToolOptionsEditor* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i64 @gimp_tool_info_get_type() #7
  %10 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %11 = bitcast %struct._GimpToolOptionsEditor* %10 to i8*
  %call7 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %9, i64 %call6, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_tool_options_editor_drop_tool, i8* %11)
  %call8 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %12 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p9 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p9, align 8
  %title_label = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %13, i32 0, i32 3
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %title_label, align 8
  %14 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p10 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p10, align 8
  %title_label11 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label11, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_misc_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %18, float 0.000000e+00, float 0.000000e+00)
  %19 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p14, align 8
  %title_label15 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label15, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_label_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %23, i32 4, i32 700, i32 -1)
  %24 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %25 = bitcast %struct._GimpToolOptionsEditor* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %27 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p20 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %27, i32 0, i32 1
  %28 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p20, align 8
  %title_label21 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %28, i32 0, i32 3
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label21, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p22 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %30, i32 0, i32 1
  %31 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p22, align 8
  %title_label23 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call24 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  %33 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p25 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %33, i32 0, i32 1
  %34 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p25, align 8
  %scrolled_window26 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %34, i32 0, i32 1
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %scrolled_window26, align 8
  %35 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p27 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %35, i32 0, i32 1
  %36 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p27, align 8
  %scrolled_window28 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window28, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_scrolled_window_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkScrolledWindow*
  store %struct._GtkScrolledWindow* %39, %struct._GtkScrolledWindow** %scrolled_window, align 8
  %40 = load %struct._GtkScrolledWindow*, %struct._GtkScrolledWindow** %scrolled_window, align 8
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %40, i32 1, i32 1)
  %41 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %42 = bitcast %struct._GimpToolOptionsEditor* %41 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call31)
  %43 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %44 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p33 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %44, i32 0, i32 1
  %45 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p33, align 8
  %scrolled_window34 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %45, i32 0, i32 1
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window34, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %46, i32 1, i32 1, i32 0)
  %47 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p35 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %47, i32 0, i32 1
  %48 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p35, align 8
  %scrolled_window36 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %48, i32 0, i32 1
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window36, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkScrolledWindow*, %struct._GtkScrolledWindow** %scrolled_window, align 8
  %call37 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow* %50)
  %51 = load %struct._GtkScrolledWindow*, %struct._GtkScrolledWindow** %scrolled_window, align 8
  %call38 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow* %51)
  %call39 = call %struct._GtkWidget* @gtk_viewport_new(%struct._GtkAdjustment* %call37, %struct._GtkAdjustment* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %viewport, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_viewport_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call40)
  %54 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkViewport*
  call void @gtk_viewport_set_shadow_type(%struct._GtkViewport* %54, i32 0)
  %55 = load %struct._GtkScrolledWindow*, %struct._GtkScrolledWindow** %scrolled_window, align 8
  %56 = bitcast %struct._GtkScrolledWindow* %55 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call42)
  %57 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  call void @gtk_container_add(%struct._GtkContainer* %57, %struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call44 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %60 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p45 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %60, i32 0, i32 1
  %61 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p45, align 8
  %options_vbox = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %61, i32 0, i32 2
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %options_vbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call46)
  %64 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %65 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p48 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %65, i32 0, i32 1
  %66 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p48, align 8
  %options_vbox49 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %66, i32 0, i32 2
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox49, align 8
  call void @gtk_container_add(%struct._GtkContainer* %64, %struct._GtkWidget* %67)
  %68 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p50 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %68, i32 0, i32 1
  %69 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p50, align 8
  %options_vbox51 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %69, i32 0, i32 2
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox51, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_docked_iface_init(%struct._GimpDockedInterface* %docked_iface) #3 {
entry:
  %docked_iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %docked_iface, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 4
  store %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* @gimp_tool_options_editor_get_preview, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %1 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %get_title = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %1, i32 0, i32 7
  store i8* (%struct._GimpDocked*)* @gimp_tool_options_editor_get_title, i8* (%struct._GimpDocked*)** %get_title, align 8
  %2 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %get_prefer_icon = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %2, i32 0, i32 5
  store i32 (%struct._GimpDocked*)* @gimp_tool_options_editor_get_prefer_icon, i32 (%struct._GimpDocked*)** %get_prefer_icon, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tool_options_editor_new(%struct._Gimp* %gimp, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = bitcast %struct._GimpMenuFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_menu_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_tool_options_editor_get_type() #7
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %27 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct._GimpMenuFactory* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* null)
  %28 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpToolOptions* @gimp_tool_options_editor_get_tool_options(%struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GimpToolOptions*, align 8
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_options_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_tool_options_editor_get_tool_options, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %visible_tool_options = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %14, i32 0, i32 8
  %15 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options, align 8
  store %struct._GimpToolOptions* %15, %struct._GimpToolOptions** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %retval
  ret %struct._GimpToolOptions* %16
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_class_init(%struct._GimpToolOptionsEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolOptionsEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpToolOptionsEditorClass* %klass, %struct._GimpToolOptionsEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpToolOptionsEditorClass*, %struct._GimpToolOptionsEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_tool_options_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tool_options_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_options_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_options_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GimpToolOptionsEditorClass*, %struct._GimpToolOptionsEditorClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpToolOptionsEditorClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_tool_options_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_tool_options_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %13 = bitcast %struct._GimpToolOptionsEditor* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #6
  %15 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %16 = bitcast %struct._GimpToolOptionsEditor* %15 to i8*
  %call8 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %call7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_save_clicked to void ()*), void ()* null, i8* %16)
  %17 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %save_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %18, i32 0, i32 4
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %save_button, align 8
  %19 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %20 = bitcast %struct._GimpToolOptionsEditor* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_editor_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpEditor*
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0)) #6
  %22 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %23 = bitcast %struct._GimpToolOptionsEditor* %22 to i8*
  %call12 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_restore_clicked to void ()*), void ()* null, i8* %23)
  %24 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p13 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %24, i32 0, i32 1
  %25 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p13, align 8
  %restore_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %25, i32 0, i32 5
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %restore_button, align 8
  %26 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %27 = bitcast %struct._GimpToolOptionsEditor* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_editor_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpEditor*
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #6
  %29 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %30 = bitcast %struct._GimpToolOptionsEditor* %29 to i8*
  %call17 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %call16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_delete_clicked to void ()*), void ()* null, i8* %30)
  %31 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p18 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %31, i32 0, i32 1
  %32 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p18, align 8
  %delete_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %32, i32 0, i32 6
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %delete_button, align 8
  %33 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %34 = bitcast %struct._GimpToolOptionsEditor* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_editor_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpEditor*
  %call21 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* null)
  %36 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p22 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %36, i32 0, i32 1
  %37 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p22, align 8
  %reset_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %37, i32 0, i32 7
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %reset_button, align 8
  %38 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p23 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %38, i32 0, i32 1
  %39 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p23, align 8
  %gimp = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %39, i32 0, i32 0
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call24 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %40)
  store %struct._GimpContext* %call24, %struct._GimpContext** %user_context, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %42 = bitcast %struct._GimpContext* %41 to i8*
  %43 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %44 = bitcast %struct._GimpToolOptionsEditor* %43 to i8*
  %call25 = call i64 @g_signal_connect_object(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_tool_changed to void ()*), i8* %44, i32 0)
  %45 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %call26 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %46)
  %47 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  call void @gimp_tool_options_editor_tool_changed(%struct._GimpContext* %45, %struct._GimpToolInfo* %call26, %struct._GimpToolOptionsEditor* %47)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %options_vbox = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %4, i32 0, i32 2
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p2 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p2, align 8
  %options_vbox3 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox3, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %call6 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %10)
  store %struct._GList* %call6, %struct._GList** %options, align 8
  %11 = load %struct._GList*, %struct._GList** %options, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %12, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %call8 = call i8* @g_object_ref(i8* %14)
  %15 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p9 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p9, align 8
  %options_vbox10 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data13, align 8
  %22 = bitcast i8* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  call void @gtk_container_remove(%struct._GtkContainer* %19, %struct._GtkWidget* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %24, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GList*, %struct._GList** %options, align 8
  call void @g_list_free(%struct._GList* %27)
  %28 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p17 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p17, align 8
  %options_vbox18 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %29, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %options_vbox18, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %30 = load i8*, i8** @gimp_tool_options_editor_parent_class, align 8
  %31 = bitcast i8* %30 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %31, i64 80)
  %32 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %32, i32 0, i32 5
  %33 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %33(%struct._GObject* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %7, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %11, i8* %13, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %6, i32 0, i32 0
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = bitcast %struct._Gimp* %7 to i8*
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i32 305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %12, i8* %14, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_save_clicked(%struct._GtkWidget* %widget, %struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %restore_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %1, i32 0, i32 5
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %restore_button, align 8
  %call = call i32 @gtk_widget_get_sensitive(%struct._GtkWidget* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_tool_options_editor_menu_popup(%struct._GimpToolOptionsEditor* %3, %struct._GtkWidget* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpToolOptionsEditor* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  %call3 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %7)
  %call4 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_restore_clicked(%struct._GtkWidget* %widget, %struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_tool_options_editor_menu_popup(%struct._GimpToolOptionsEditor* %0, %struct._GtkWidget* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_delete_clicked(%struct._GtkWidget* %widget, %struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_tool_options_editor_menu_popup(%struct._GimpToolOptionsEditor* %0, %struct._GtkWidget* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_tool_changed(%struct._GimpContext* %context, %struct._GimpToolInfo* %tool_info, %struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  %presets = alloca %struct._GimpContainer*, align 8
  %options_gui = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %title = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %1 = bitcast %struct._GimpToolInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_tool_options_editor_tool_changed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool11 = icmp ne %struct._GimpToolInfo* %13, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %14, i32 0, i32 12
  %15 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %16 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %visible_tool_options = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %17, i32 0, i32 8
  %18 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options, align 8
  %cmp13 = icmp eq %struct._GimpToolOptions* %15, %18
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.12, %do.end
  %19 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p16 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p16, align 8
  %visible_tool_options17 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %20, i32 0, i32 8
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options17, align 8
  %tobool18 = icmp ne %struct._GimpToolOptions* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end.36

if.then.19:                                       ; preds = %if.end.15
  %22 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p20 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p20, align 8
  %visible_tool_options21 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %23, i32 0, i32 8
  %24 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options21, align 8
  %tool_info22 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %24, i32 0, i32 1
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info22, align 8
  %presets23 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 14
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %presets23, align 8
  store %struct._GimpContainer* %26, %struct._GimpContainer** %presets, align 8
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %tobool24 = icmp ne %struct._GimpContainer* %27, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.19
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %29 = bitcast %struct._GimpContainer* %28 to i8*
  %30 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %31 = bitcast %struct._GimpToolOptionsEditor* %30 to i8*
  %call26 = call i32 @g_signal_handlers_disconnect_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_presets_update to i8*), i8* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.19
  %32 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p28 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %32, i32 0, i32 1
  %33 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p28, align 8
  %visible_tool_options29 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %33, i32 0, i32 8
  %34 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options29, align 8
  %call30 = call %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions* %34)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %options_gui, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  %tobool31 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.27
  %37 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p34 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %37, i32 0, i32 1
  %38 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p34, align 8
  %visible_tool_options35 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %38, i32 0, i32 8
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %visible_tool_options35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.33, %if.end.15
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool37 = icmp ne %struct._GimpToolInfo* %39, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.65

land.lhs.true.38:                                 ; preds = %if.end.36
  %40 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options39 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %40, i32 0, i32 12
  %41 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options39, align 8
  %tobool40 = icmp ne %struct._GimpToolOptions* %41, null
  br i1 %tobool40, label %if.then.41, label %if.end.65

if.then.41:                                       ; preds = %land.lhs.true.38
  %42 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %presets42 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %42, i32 0, i32 14
  %43 = load %struct._GimpContainer*, %struct._GimpContainer** %presets42, align 8
  store %struct._GimpContainer* %43, %struct._GimpContainer** %presets, align 8
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %tobool43 = icmp ne %struct._GimpContainer* %44, null
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.then.41
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %46 = bitcast %struct._GimpContainer* %45 to i8*
  %47 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %48 = bitcast %struct._GimpToolOptionsEditor* %47 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %50 = bitcast %struct._GObject* %49 to i8*
  %call46 = call i64 @g_signal_connect_object(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_presets_update to void ()*), i8* %50, i32 2)
  %51 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %52 = bitcast %struct._GimpContainer* %51 to i8*
  %53 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %54 = bitcast %struct._GimpToolOptionsEditor* %53 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %56 = bitcast %struct._GObject* %55 to i8*
  %call48 = call i64 @g_signal_connect_object(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_presets_update to void ()*), i8* %56, i32 2)
  %57 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %58 = bitcast %struct._GimpContainer* %57 to i8*
  %59 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %60 = bitcast %struct._GimpToolOptionsEditor* %59 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %62 = bitcast %struct._GObject* %61 to i8*
  %call50 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolOptionsEditor*)* @gimp_tool_options_editor_presets_update to void ()*), i8* %62, i32 2)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %if.then.41
  %63 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options52 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %63, i32 0, i32 12
  %64 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options52, align 8
  %call53 = call %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions* %64)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %options_gui, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  %call54 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %65)
  %tobool55 = icmp ne %struct._GtkWidget* %call54, null
  br i1 %tobool55, label %if.end.60, label %if.then.56

if.then.56:                                       ; preds = %if.end.51
  %66 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p57 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %66, i32 0, i32 1
  %67 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p57, align 8
  %options_vbox = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %67, i32 0, i32 2
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %options_vbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call58)
  %70 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 0, i32 0, i32 0)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.end.51
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options61 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %73, i32 0, i32 12
  %74 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options61, align 8
  %75 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p62 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %75, i32 0, i32 1
  %76 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p62, align 8
  %visible_tool_options63 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %76, i32 0, i32 8
  store %struct._GimpToolOptions* %74, %struct._GimpToolOptions** %visible_tool_options63, align 8
  %77 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p64 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %77, i32 0, i32 1
  %78 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p64, align 8
  %scrolled_window = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %78, i32 0, i32 1
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %80 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %80, i32 0, i32 10
  %81 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %79, i8* null, i8* %81)
  %82 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  call void @gimp_tool_options_editor_presets_update(%struct._GimpToolOptionsEditor* %82)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.60, %land.lhs.true.38, %if.end.36
  %83 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p66 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %83, i32 0, i32 1
  %84 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p66, align 8
  %title_label = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %84, i32 0, i32 3
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label, align 8
  %cmp67 = icmp ne %struct._GtkWidget* %85, null
  br i1 %cmp67, label %if.then.68, label %if.end.77

if.then.68:                                       ; preds = %if.end.65
  %86 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %87 = bitcast %struct._GimpToolOptionsEditor* %86 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_docked_interface_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call70)
  %88 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpDocked*
  %call72 = call i8* @gimp_docked_get_title(%struct._GimpDocked* %88)
  store i8* %call72, i8** %title, align 8
  %89 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p73 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %89, i32 0, i32 1
  %90 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p73, align 8
  %title_label74 = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %90, i32 0, i32 3
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %title_label74, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_label_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call75)
  %93 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkLabel*
  %94 = load i8*, i8** %title, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %93, i8* %94)
  %95 = load i8*, i8** %title, align 8
  call void @g_free(i8* %95)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.68, %if.end.65
  %96 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %97 = bitcast %struct._GimpToolOptionsEditor* %96 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_docked_interface_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call78)
  %98 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpDocked*
  call void @gimp_docked_title_changed(%struct._GimpDocked* %98)
  br label %return

return:                                           ; preds = %if.end.77, %if.then.14, %if.else.9
  ret void
}

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare i32 @gtk_widget_get_sensitive(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_menu_popup(%struct._GimpToolOptionsEditor* %editor, %struct._GtkWidget* %button, i8* %path) #3 {
entry:
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %path.addr = alloca i8*, align 8
  %gimp_editor = alloca %struct._GimpEditor*, align 8
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %gimp_editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %gimp_editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %4 = bitcast %struct._GimpUIManager* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_ui_manager_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkUIManager*
  %6 = load %struct._GimpEditor*, %struct._GimpEditor** %gimp_editor, align 8
  %call5 = call i8* @gimp_editor_get_ui_path(%struct._GimpEditor* %6)
  %call6 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %5, i8* %call5)
  %7 = load %struct._GimpEditor*, %struct._GimpEditor** %gimp_editor, align 8
  %call7 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %7)
  %8 = load %struct._GimpEditor*, %struct._GimpEditor** %gimp_editor, align 8
  %call8 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %8)
  %9 = bitcast i8** %call8 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call7, i8* %9)
  %10 = load %struct._GimpEditor*, %struct._GimpEditor** %gimp_editor, align 8
  %call9 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %10)
  %11 = load i8*, i8** %path.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %call9, i8* %11, %struct._GtkWidget* %12, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_tool_options_editor_menu_pos, i8* %14, void (i8*)* null, i8* null)
  ret void
}

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare i8* @gimp_editor_get_ui_path(%struct._GimpEditor*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_menu_pos(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %3 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %4 = load i32*, i32** %x.addr, align 8
  %5 = load i32*, i32** %y.addr, align 8
  call void @gimp_button_menu_position(%struct._GtkWidget* %2, %struct._GtkMenu* %3, i32 1, i32* %4, i32* %5)
  ret void
}

declare void @gimp_button_menu_position(%struct._GtkWidget*, %struct._GtkMenu*, i32, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_presets_update(%struct._GimpToolOptionsEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpToolOptionsEditor*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %save_sensitive = alloca i32, align 4
  %restore_sensitive = alloca i32, align 4
  %delete_sensitive = alloca i32, align 4
  %reset_sensitive = alloca i32, align 4
  store %struct._GimpToolOptionsEditor* %editor, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %visible_tool_options = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %1, i32 0, i32 8
  %2 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %visible_tool_options, align 8
  %tool_info1 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %2, i32 0, i32 1
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info1, align 8
  store %struct._GimpToolInfo* %3, %struct._GimpToolInfo** %tool_info, align 8
  store i32 0, i32* %save_sensitive, align 4
  store i32 0, i32* %restore_sensitive, align 4
  store i32 0, i32* %delete_sensitive, align 4
  store i32 0, i32* %reset_sensitive, align 4
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 14
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %tobool = icmp ne %struct._GimpContainer* %5, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  store i32 1, i32* %save_sensitive, align 4
  store i32 1, i32* %reset_sensitive, align 4
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets2 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %6, i32 0, i32 14
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %presets2, align 8
  %call = call i32 @gimp_container_is_empty(%struct._GimpContainer* %7)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %restore_sensitive, align 4
  store i32 1, i32* %delete_sensitive, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p6 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p6, align 8
  %save_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %save_button, align 8
  %11 = load i32, i32* %save_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %10, i32 %11)
  %12 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p7 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p7, align 8
  %restore_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %13, i32 0, i32 5
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %restore_button, align 8
  %15 = load i32, i32* %restore_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %14, i32 %15)
  %16 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p8, align 8
  %delete_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %17, i32 0, i32 6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  %19 = load i32, i32* %delete_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %18, i32 %19)
  %20 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor.addr, align 8
  %p9 = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %20, i32 0, i32 1
  %21 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p9, align 8
  %reset_button = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button, align 8
  %23 = load i32, i32* %reset_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %22, i32 %23)
  ret void
}

declare %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i8* @gimp_docked_get_title(%struct._GimpDocked*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_free(i8*) #1

declare void @gimp_docked_title_changed(%struct._GimpDocked*) #1

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i8* @g_object_ref(i8*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_tool_options_editor_get_preview(%struct._GimpDocked* %docked, %struct._GimpContext* %context, i32 %size) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %size.addr = alloca i32, align 4
  %settings = alloca %struct._GtkSettings*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %2)
  store %struct._GtkSettings* %call2, %struct._GtkSettings** %settings, align 8
  %3 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %4 = load i32, i32* %size.addr, align 4
  %call3 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %3, i32 %4, i32* %width, i32* %height)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = bitcast %struct._GimpContext* %5 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load i32, i32* %height, align 4
  %call5 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), %struct._GimpContext* %8, i32 %9)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %view, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_view_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 3
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %size8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 14
  store i32 -1, i32* %size8, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpView*
  %renderer11 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 3
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer11, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %17, i32 %18, i32 %19, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  ret %struct._GtkWidget* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tool_options_editor_get_title(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %6)
  store %struct._GimpToolInfo* %call3, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %8, i32 0, i32 5
  %9 = load i8*, i8** %blurb, align 8
  %call4 = call noalias i8* @g_strdup(i8* %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_options_editor_get_prefer_icon(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  ret i32 1
}

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject*, i8*, %struct._GimpContext*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer*, i32, i32, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_editor_drop_tool(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpToolOptionsEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptionsEditor*
  store %struct._GimpToolOptionsEditor* %2, %struct._GimpToolOptionsEditor** %editor, align 8
  %3 = load %struct._GimpToolOptionsEditor*, %struct._GimpToolOptionsEditor** %editor, align 8
  %p = getelementptr inbounds %struct._GimpToolOptionsEditor, %struct._GimpToolOptionsEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpToolOptionsEditorPrivate*, %struct._GimpToolOptionsEditorPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpToolOptionsEditorPrivate, %struct._GimpToolOptionsEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_info_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpToolInfo*
  call void @gimp_context_set_tool(%struct._GimpContext* %6, %struct._GimpToolInfo* %9)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkWidget* @gtk_viewport_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow*) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow*) #1

declare void @gtk_viewport_set_shadow_type(%struct._GtkViewport*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_viewport_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
