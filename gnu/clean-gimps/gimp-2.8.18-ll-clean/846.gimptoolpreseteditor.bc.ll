; ModuleID = './app/widgets/gimptoolpreseteditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolPresetEditorClass = type { %struct._GimpDataEditorClass }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpToolPresetEditor = type { %struct._GimpDataEditor, %struct._GimpToolPresetEditorPrivate* }
%struct._GimpToolPresetEditorPrivate = type { %struct._GimpToolPreset*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpConfig = type opaque
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@gimp_tool_preset_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpToolPresetEditor\00", align 1
@gimp_tool_preset_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tool_preset_editor_new = private unnamed_addr constant [28 x i8] c"gimp_tool_preset_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"<ToolPresetEditor>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"/tool-preset-editor-popup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@gimp_tool_preset_editor_parent_class = internal global i8* null, align 8
@GimpToolPresetEditor_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"Tool Preset Editor\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Icon:\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"use-fg-bg\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Apply stored FG/BG\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"use-brush\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Apply stored brush\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"use-dynamics\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Apply stored dynamics\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"use-gradient\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Apply stored gradient\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"use-pattern\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Apply stored pattern\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"use-palette\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Apply stored palette\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"use-font\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Apply stored font\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"%s Preset\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_preset_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_preset_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_preset_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_preset_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_tool_preset_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_preset_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_tool_preset_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_preset_editor_parent_class, align 8
  %1 = load i32, i32* @GimpToolPresetEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolPresetEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolPresetEditorClass*
  call void @gimp_tool_preset_editor_class_init(%struct._GimpToolPresetEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_init(%struct._GimpToolPresetEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpToolPresetEditor*, align 8
  store %struct._GimpToolPresetEditor* %editor, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolPresetEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPresetEditorPrivate*
  %3 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %3, i32 0, i32 1
  store %struct._GimpToolPresetEditorPrivate* %2, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tool_preset_editor_new(%struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_preset_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_preset_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_tool_preset_editor_get_type() #6
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 42
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext* %31)
  %call41 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMenuFactory* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._GimpDataFactory* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContext* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GimpToolPreset* %call40, i8* null)
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

declare %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_class_init(%struct._GimpToolPresetEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolPresetEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpToolPresetEditorClass* %klass, %struct._GimpToolPresetEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpToolPresetEditorClass*, %struct._GimpToolPresetEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolPresetEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpToolPresetEditorClass*, %struct._GimpToolPresetEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpToolPresetEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_editor_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %5, %struct._GimpDataEditorClass** %editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_tool_preset_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tool_preset_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %8, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_tool_preset_editor_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #8
  %9 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %9, i32 0, i32 2
  store i8* %call3, i8** %title, align 8
  %10 = load %struct._GimpToolPresetEditorClass*, %struct._GimpToolPresetEditorClass** %klass.addr, align 8
  %11 = bitcast %struct._GimpToolPresetEditorClass* %10 to i8*
  call void @g_type_class_add_private(i8* %11, i64 80)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpToolPresetEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPresetEditor*
  store %struct._GimpToolPresetEditor* %2, %struct._GimpToolPresetEditor** %editor, align 8
  %3 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %4 = bitcast %struct._GimpToolPresetEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load i8*, i8** @gimp_tool_preset_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_tool_preset_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call i64 @gimp_tool_preset_get_type() #6
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._Gimp* %17, i8* null)
  %18 = bitcast i8* %call8 to %struct._GimpToolPreset*
  %19 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %20, i32 0, i32 0
  store %struct._GimpToolPreset* %18, %struct._GimpToolPreset** %tool_preset_model, align 8
  store %struct._GimpToolPreset* %18, %struct._GimpToolPreset** %preset, align 8
  %21 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %22 = bitcast %struct._GimpToolPreset* %21 to i8*
  %23 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %24 = bitcast %struct._GimpToolPresetEditor* %23 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_model to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %hbox, align 8
  %25 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %26 = bitcast %struct._GimpDataEditor* %25 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call11)
  %27 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call13 = call %struct._GtkWidget* @gtk_image_new()
  %30 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv14 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %30, i32 0, i32 1
  %31 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv14, align 8
  %tool_icon = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %31, i32 0, i32 1
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %tool_icon, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call15)
  %34 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %35 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv17 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %35, i32 0, i32 1
  %36 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv17, align 8
  %tool_icon18 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_icon18, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv19 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %38, i32 0, i32 1
  %39 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv19, align 8
  %tool_icon20 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_icon20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call21 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  %41 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv22 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %41, i32 0, i32 1
  %42 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv22, align 8
  %tool_label = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %42, i32 0, i32 2
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %tool_label, align 8
  %43 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv23 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %43, i32 0, i32 1
  %44 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv23, align 8
  %tool_label24 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %44, i32 0, i32 2
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_label24, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_label_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call25)
  %47 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %47, i32 3, i32 2, i32 -1)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call27)
  %50 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %51 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv29 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %51, i32 0, i32 1
  %52 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv29, align 8
  %tool_label30 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %52, i32 0, i32 2
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_label30, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv31 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %54, i32 0, i32 1
  %55 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv31, align 8
  %tool_label32 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_label32, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %hbox, align 8
  %57 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %58 = bitcast %struct._GimpDataEditor* %57 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call34)
  %59 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #8
  %call37 = call %struct._GtkWidget* @gtk_label_new(i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %label, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call38)
  %64 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %68 = bitcast %struct._GimpToolPreset* %67 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %70 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context41 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %70, i32 0, i32 2
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context41, align 8
  %gimp42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %71, i32 0, i32 1
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GtkWidget* @gimp_prop_icon_picker_new(%struct._GObject* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._Gimp* %72)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %button, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call44)
  %75 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %79 = bitcast %struct._GimpToolPreset* %78 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)) #8
  %call48 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %call47)
  %81 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv49 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %81, i32 0, i32 1
  %82 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv49, align 8
  %fg_bg_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %82, i32 0, i32 3
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %fg_bg_toggle, align 8
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %button, align 8
  %83 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %84 = bitcast %struct._GimpDataEditor* %83 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call50)
  %85 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %89 = bitcast %struct._GimpToolPreset* %88 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 80)
  %90 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #8
  %call54 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %call53)
  %91 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv55 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %91, i32 0, i32 1
  %92 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv55, align 8
  %brush_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %92, i32 0, i32 4
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %brush_toggle, align 8
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %button, align 8
  %93 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %94 = bitcast %struct._GimpDataEditor* %93 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call56)
  %95 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %96, i32 0, i32 0, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %98 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %99 = bitcast %struct._GimpToolPreset* %98 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 80)
  %100 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #8
  %call60 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* %call59)
  %101 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv61 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %101, i32 0, i32 1
  %102 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv61, align 8
  %dynamics_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %102, i32 0, i32 5
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %dynamics_toggle, align 8
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %button, align 8
  %103 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %104 = bitcast %struct._GimpDataEditor* %103 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call62)
  %105 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %106, i32 0, i32 0, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %108 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %109 = bitcast %struct._GimpToolPreset* %108 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 80)
  %110 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)) #8
  %call66 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* %call65)
  %111 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv67 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %111, i32 0, i32 1
  %112 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv67, align 8
  %gradient_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %112, i32 0, i32 6
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %gradient_toggle, align 8
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %button, align 8
  %113 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %114 = bitcast %struct._GimpDataEditor* %113 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call68)
  %115 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 0, i32 0, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %119 = bitcast %struct._GimpToolPreset* %118 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 80)
  %120 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0)) #8
  %call72 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* %call71)
  %121 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv73 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %121, i32 0, i32 1
  %122 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv73, align 8
  %pattern_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %122, i32 0, i32 7
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %pattern_toggle, align 8
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %button, align 8
  %123 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %124 = bitcast %struct._GimpDataEditor* %123 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call74)
  %125 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %125, %struct._GtkWidget* %126, i32 0, i32 0, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %128 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %129 = bitcast %struct._GimpToolPreset* %128 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 80)
  %130 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #8
  %call78 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* %call77)
  %131 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv79 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %131, i32 0, i32 1
  %132 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv79, align 8
  %palette_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %132, i32 0, i32 8
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %palette_toggle, align 8
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %button, align 8
  %133 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %134 = bitcast %struct._GimpDataEditor* %133 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call80)
  %135 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 0, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %138 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %139 = bitcast %struct._GimpToolPreset* %138 to %struct._GTypeInstance*
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 80)
  %140 = bitcast %struct._GTypeInstance* %call82 to %struct._GObject*
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #8
  %call84 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* %call83)
  %141 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv85 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %141, i32 0, i32 1
  %142 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv85, align 8
  %font_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %142, i32 0, i32 9
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %font_toggle, align 8
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %button, align 8
  %143 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %144 = bitcast %struct._GimpDataEditor* %143 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call86)
  %145 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %148, i32 0, i32 4
  %149 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool88 = icmp ne %struct._GimpData* %149, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end
  %150 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  call void @gimp_tool_preset_editor_sync_data(%struct._GimpToolPresetEditor* %150)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpToolPresetEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPresetEditor*
  store %struct._GimpToolPresetEditor* %2, %struct._GimpToolPresetEditor** %editor, align 8
  %3 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv2 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv2, align 8
  %tool_preset_model3 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model3, align 8
  %9 = bitcast %struct._GimpToolPreset* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor, align 8
  %priv4 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv4, align 8
  %tool_preset_model5 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %11, i32 0, i32 0
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %tool_preset_model5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** @gimp_tool_preset_editor_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %preset_editor = alloca %struct._GimpToolPresetEditor*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPresetEditor*
  store %struct._GimpToolPresetEditor* %2, %struct._GimpToolPresetEditor** %preset_editor, align 8
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
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_data to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_tool_preset_editor_parent_class, align 8
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
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpData*, %struct._GimpData** %data10, align 8
  %20 = bitcast %struct._GimpData* %19 to i8*
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpDataEditor* %21 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_data to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %preset_editor, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %23, i32 0, i32 1
  %24 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %24, i32 0, i32 0
  %25 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model, align 8
  %tobool12 = icmp ne %struct._GimpToolPreset* %25, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %26 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %preset_editor, align 8
  call void @gimp_tool_preset_editor_sync_data(%struct._GimpToolPresetEditor* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %27 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %28 = bitcast %struct._GimpDataEditor* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %30 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %30, i32 0, i32 5
  %31 = load i32, i32* %data_editable, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %29, i32 %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_notify_model(%struct._GimpToolPreset* %options, %struct._GParamSpec* %pspec, %struct._GimpToolPresetEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpToolPreset*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpToolPresetEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpToolPreset* %options, %struct._GimpToolPreset** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpToolPresetEditor* %editor, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolPresetEditor* %0 to %struct._GTypeInstance*
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
  %8 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpToolPresetEditor* %8 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_data to i8*), i8* %9)
  %10 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model, align 8
  %13 = bitcast %struct._GimpToolPreset* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data6, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %call9 = call i32 @gimp_config_copy(%struct._GimpConfig* %14, %struct._GimpConfig* %18, i32 256)
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 4
  %20 = load %struct._GimpData*, %struct._GimpData** %data10, align 8
  %21 = bitcast %struct._GimpData* %20 to i8*
  %22 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %23 = bitcast %struct._GimpToolPresetEditor* %22 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_data to i8*), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gimp_prop_icon_picker_new(%struct._GObject*, i8*, %struct._Gimp*) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_sync_data(%struct._GimpToolPresetEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpToolPresetEditor*, align 8
  %priv = alloca %struct._GimpToolPresetEditorPrivate*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %serialize_props = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  %label = alloca i8*, align 8
  store %struct._GimpToolPresetEditor* %editor, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv1, align 8
  store %struct._GimpToolPresetEditorPrivate* %1, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %2 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %3 = bitcast %struct._GimpToolPresetEditor* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %4, %struct._GimpDataEditor** %data_editor, align 8
  %5 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model, align 8
  %7 = bitcast %struct._GimpToolPreset* %6 to i8*
  %8 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpToolPresetEditor* %8 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_model to i8*), i8* %9)
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %12 = bitcast %struct._GimpData* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %14 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model6 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model6, align 8
  %16 = bitcast %struct._GimpToolPreset* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %call9 = call i32 @gimp_config_copy(%struct._GimpConfig* %13, %struct._GimpConfig* %17, i32 256)
  %18 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model10 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model10, align 8
  %20 = bitcast %struct._GimpToolPreset* %19 to i8*
  %21 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpToolPresetEditor* %21 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_model to i8*), i8* %22)
  %23 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model12 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %23, i32 0, i32 0
  %24 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model12, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %24, i32 0, i32 2
  %25 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %tool_info13 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %25, i32 0, i32 1
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  store %struct._GimpToolInfo* %26, %struct._GimpToolInfo** %tool_info, align 8
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %28 = bitcast %struct._GimpToolInfo* %27 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_viewable_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call14)
  %29 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpViewable*
  %call16 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %29)
  store i8* %call16, i8** %stock_id, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %30, i32 0, i32 5
  %31 = load i8*, i8** %blurb, align 8
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call17, i8* %31)
  store i8* %call18, i8** %label, align 8
  %32 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_icon = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_icon, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_image_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkImage*
  %36 = load i8*, i8** %stock_id, align 8
  call void @gtk_image_set_from_stock(%struct._GtkImage* %35, i8* %36, i32 1)
  %37 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_label = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_label, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_label_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call21)
  %40 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkLabel*
  %41 = load i8*, i8** %label, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %40, i8* %41)
  %42 = load i8*, i8** %label, align 8
  call void @g_free(i8* %42)
  %43 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data23 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %43, i32 0, i32 4
  %44 = load %struct._GimpData*, %struct._GimpData** %data23, align 8
  %45 = bitcast %struct._GimpData* %44 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_tool_preset_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call24)
  %46 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %46, %struct._GimpToolPreset** %preset, align 8
  %47 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tool_options26 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %47, i32 0, i32 2
  %48 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options26, align 8
  %49 = bitcast %struct._GimpToolOptions* %48 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_context_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call27)
  %50 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpContext*
  %call29 = call i32 @gimp_context_get_serialize_properties(%struct._GimpContext* %50)
  store i32 %call29, i32* %serialize_props, align 4
  %51 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %fg_bg_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %51, i32 0, i32 3
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_bg_toggle, align 8
  %53 = load i32, i32* %serialize_props, align 4
  %and = and i32 %53, 64
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %52, i32 %conv)
  %54 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %brush_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %54, i32 0, i32 4
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_toggle, align 8
  %56 = load i32, i32* %serialize_props, align 4
  %and30 = and i32 %56, 1024
  %cmp31 = icmp ne i32 %and30, 0
  %conv32 = zext i1 %cmp31 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %55, i32 %conv32)
  %57 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %dynamics_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %57, i32 0, i32 5
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dynamics_toggle, align 8
  %59 = load i32, i32* %serialize_props, align 4
  %and33 = and i32 %59, 2048
  %cmp34 = icmp ne i32 %and33, 0
  %conv35 = zext i1 %cmp34 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %58, i32 %conv35)
  %60 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %gradient_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %60, i32 0, i32 6
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_toggle, align 8
  %62 = load i32, i32* %serialize_props, align 4
  %and36 = and i32 %62, 8192
  %cmp37 = icmp ne i32 %and36, 0
  %conv38 = zext i1 %cmp37 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %61, i32 %conv38)
  %63 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %pattern_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %63, i32 0, i32 7
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_toggle, align 8
  %65 = load i32, i32* %serialize_props, align 4
  %and39 = and i32 %65, 4096
  %cmp40 = icmp ne i32 %and39, 0
  %conv41 = zext i1 %cmp40 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %64, i32 %conv41)
  %66 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %palette_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %66, i32 0, i32 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_toggle, align 8
  %68 = load i32, i32* %serialize_props, align 4
  %and42 = and i32 %68, 16384
  %cmp43 = icmp ne i32 %and42, 0
  %conv44 = zext i1 %cmp43 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %67, i32 %conv44)
  %69 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %font_toggle = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %69, i32 0, i32 9
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %font_toggle, align 8
  %71 = load i32, i32* %serialize_props, align 4
  %and45 = and i32 %71, 65536
  %cmp46 = icmp ne i32 %and45, 0
  %conv47 = zext i1 %cmp46 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %70, i32 %conv47)
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_editor_notify_data(%struct._GimpToolPreset* %options, %struct._GParamSpec* %pspec, %struct._GimpToolPresetEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpToolPreset*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpToolPresetEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpToolPreset* %options, %struct._GimpToolPreset** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpToolPresetEditor* %editor, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %0 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpToolPresetEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv, align 8
  %tool_preset_model = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model, align 8
  %6 = bitcast %struct._GimpToolPreset* %5 to i8*
  %7 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpToolPresetEditor* %7 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_model to i8*), i8* %8)
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 4
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %11 = bitcast %struct._GimpData* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %13 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv5, align 8
  %tool_preset_model6 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model6, align 8
  %16 = bitcast %struct._GimpToolPreset* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %call9 = call i32 @gimp_config_copy(%struct._GimpConfig* %12, %struct._GimpConfig* %17, i32 256)
  %18 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpToolPresetEditor, %struct._GimpToolPresetEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpToolPresetEditorPrivate*, %struct._GimpToolPresetEditorPrivate** %priv10, align 8
  %tool_preset_model11 = getelementptr inbounds %struct._GimpToolPresetEditorPrivate, %struct._GimpToolPresetEditorPrivate* %19, i32 0, i32 0
  %20 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset_model11, align 8
  %21 = bitcast %struct._GimpToolPreset* %20 to i8*
  %22 = load %struct._GimpToolPresetEditor*, %struct._GimpToolPresetEditor** %editor.addr, align 8
  %23 = bitcast %struct._GimpToolPresetEditor* %22 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GParamSpec*, %struct._GimpToolPresetEditor*)* @gimp_tool_preset_editor_notify_model to i8*), i8* %23)
  ret void
}

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_context_get_serialize_properties(%struct._GimpContext*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

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
