; ModuleID = './app/widgets/gimpdevicestatus.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDeviceStatusClass = type { %struct._GimpEditorClass }
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
%struct._GimpDeviceStatus = type { %struct._GimpEditor, %struct._Gimp*, %struct._GimpDeviceInfo*, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GimpCurve = type opaque
%struct._GimpDeviceManager = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDeviceStatusEntry = type { %struct._GimpDeviceInfo*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpWindowStrategy = type opaque

@gimp_device_status_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpDeviceStatus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_device_status_new = private unnamed_addr constant [23 x i8] c"gimp_device_status_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@gimp_device_status_parent_class = internal global i8* null, align 8
@GimpDeviceStatus_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"gimpdevicestatus.c\00", align 1
@__func__.gimp_device_status_constructed = private unnamed_addr constant [31 x i8] c"gimp_device_status_constructed\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GIMP (status->gimp)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"notify::current-device\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"gimp-brush-grid|gimp-brush-list\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"gimp-pattern-grid|gimp-pattern-list\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"gimp-gradient-list|gimp-gradient-grid\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Foreground: %d, %d, %d\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Background: %d, %d, %d\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Save device status\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_device_status_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_device_status_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_device_status_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_device_status_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDeviceStatus*)* @gimp_device_status_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_device_status_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_device_status_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_device_status_parent_class, align 8
  %1 = load i32, i32* @GimpDeviceStatus_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDeviceStatus_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDeviceStatusClass*
  call void @gimp_device_status_class_init(%struct._GimpDeviceStatusClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_init(%struct._GimpDeviceStatus* %status) #3 {
entry:
  %status.addr = alloca %struct._GimpDeviceStatus*, align 8
  store %struct._GimpDeviceStatus* %status, %struct._GimpDeviceStatus** %status.addr, align 8
  %0 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %1 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %1, i32 0, i32 2
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %current_device, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %2 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %vbox = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %2, i32 0, i32 4
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %vbox1 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox1, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 2)
  %7 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %8 = bitcast %struct._GimpDeviceStatus* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %10 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %vbox6 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox6, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %vbox7 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %12, i32 0, i32 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %15 = bitcast %struct._GimpDeviceStatus* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #7
  %17 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %18 = bitcast %struct._GimpDeviceStatus* %17 to i8*
  %call11 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* %call10, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDeviceStatus*)* @gimp_device_status_save_clicked to void ()*), void ()* null, i8* %18)
  %19 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %save_button = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %19, i32 0, i32 5
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %save_button, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_device_status_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_device_status_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_device_status_get_type() #8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_class_init(%struct._GimpDeviceStatusClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDeviceStatusClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDeviceStatusClass* %klass, %struct._GimpDeviceStatusClass** %klass.addr, align 8
  %0 = load %struct._GimpDeviceStatusClass*, %struct._GimpDeviceStatusClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDeviceStatusClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_device_status_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_device_status_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_status_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %status = alloca %struct._GimpDeviceStatus*, align 8
  %devices = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_status_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceStatus*
  store %struct._GimpDeviceStatus* %2, %struct._GimpDeviceStatus** %status, align 8
  %3 = load i8*, i8** @gimp_device_status_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_device_status_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_device_status_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp19 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %27)
  %28 = bitcast %struct._GimpDeviceManager* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_container_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpContainer*
  store %struct._GimpContainer* %29, %struct._GimpContainer** %devices, align 8
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %31 = bitcast %struct._GimpContainer* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_list_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpList*
  %list25 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %list25, align 8
  store %struct._GList* %33, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %34, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to %struct._GimpDeviceInfo*
  %39 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  call void @gimp_device_status_device_add(%struct._GimpContainer* %35, %struct._GimpDeviceInfo* %38, %struct._GimpDeviceStatus* %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %41, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %43 = bitcast %struct._GimpContainer* %42 to i8*
  %44 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %45 = bitcast %struct._GimpDeviceStatus* %44 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceStatus*)* @gimp_device_status_device_add to void ()*), i8* %45, i32 0)
  %46 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %47 = bitcast %struct._GimpContainer* %46 to i8*
  %48 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %49 = bitcast %struct._GimpDeviceStatus* %48 to i8*
  %call28 = call i64 @g_signal_connect_object(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceStatus*)* @gimp_device_status_device_remove to void ()*), i8* %49, i32 0)
  %50 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %51 = bitcast %struct._GimpContainer* %50 to i8*
  %52 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %53 = bitcast %struct._GimpDeviceStatus* %52 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceManager*, %struct._GParamSpec*, %struct._GimpDeviceStatus*)* @gimp_device_status_notify_device to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %55 = bitcast %struct._GimpContainer* %54 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_device_manager_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call30)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDeviceManager*
  %57 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  call void @gimp_device_status_notify_device(%struct._GimpDeviceManager* %56, %struct._GParamSpec* null, %struct._GimpDeviceStatus* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %status = alloca %struct._GimpDeviceStatus*, align 8
  %list = alloca %struct._GList*, align 8
  %entry4 = alloca %struct._GimpDeviceStatusEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_status_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceStatus*
  store %struct._GimpDeviceStatus* %2, %struct._GimpDeviceStatus** %status, align 8
  %3 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %devices = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %3, i32 0, i32 3
  %4 = load %struct._GList*, %struct._GList** %devices, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %devices2 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %devices2, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpDeviceStatusEntry*
  store %struct._GimpDeviceStatusEntry* %10, %struct._GimpDeviceStatusEntry** %entry4, align 8
  %11 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry4, align 8
  %device_info = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %11, i32 0, i32 0
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %13 = bitcast %struct._GimpDeviceInfo* %12 to i8*
  %14 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry4, align 8
  %15 = bitcast %struct._GimpDeviceStatusEntry* %14 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDeviceInfo*, %struct._GimpDeviceStatusEntry*)* @gimp_device_status_update_entry to i8*), i8* %15)
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry4, align 8
  %17 = bitcast %struct._GimpDeviceStatusEntry* %16 to i8*
  call void @g_slice_free1(i64 64, i8* %17)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %devices6 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %20, i32 0, i32 3
  %21 = load %struct._GList*, %struct._GList** %devices6, align 8
  call void @g_list_free(%struct._GList* %21)
  %22 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %devices7 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %22, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %devices7, align 8
  %23 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %24)
  %25 = bitcast %struct._GimpDeviceManager* %call8 to i8*
  %26 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %27 = bitcast %struct._GimpDeviceStatus* %26 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDeviceManager*, %struct._GParamSpec*, %struct._GimpDeviceStatus*)* @gimp_device_status_notify_device to i8*), i8* %27)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %28 = load i8*, i8** @gimp_device_status_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 80)
  %30 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %30, i32 0, i32 5
  %31 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %31(%struct._GObject* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %status = alloca %struct._GimpDeviceStatus*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_status_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceStatus*
  store %struct._GimpDeviceStatus* %2, %struct._GimpDeviceStatus** %status, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_device_add(%struct._GimpContainer* %devices, %struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceStatus* %status) #3 {
entry:
  %devices.addr = alloca %struct._GimpContainer*, align 8
  %device_info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %status.addr = alloca %struct._GimpDeviceStatus*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %entry2 = alloca %struct._GimpDeviceStatusEntry*, align 8
  %closure = alloca %struct._GClosure*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpContainer* %devices, %struct._GimpContainer** %devices.addr, align 8
  store %struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceInfo** %device_info.addr, align 8
  store %struct._GimpDeviceStatus* %status, %struct._GimpDeviceStatus** %status.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %call3 = call noalias i8* @g_slice_alloc0(i64 64)
  %3 = bitcast i8* %call3 to %struct._GimpDeviceStatusEntry*
  store %struct._GimpDeviceStatusEntry* %3, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %4 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices4 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %4, i32 0, i32 3
  %5 = load %struct._GList*, %struct._GList** %devices4, align 8
  %6 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %7 = bitcast %struct._GimpDeviceStatusEntry* %6 to i8*
  %call5 = call %struct._GList* @g_list_prepend(%struct._GList* %5, i8* %7)
  %8 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices6 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %8, i32 0, i32 3
  store %struct._GList* %call5, %struct._GList** %devices6, align 8
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %10 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %device_info7 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %10, i32 0, i32 0
  store %struct._GimpDeviceInfo* %9, %struct._GimpDeviceInfo** %device_info7, align 8
  %11 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %12 = bitcast %struct._GimpDeviceStatusEntry* %11 to i8*
  %call8 = call %struct._GClosure* @g_cclosure_new(void ()* bitcast (void (%struct._GimpDeviceInfo*, %struct._GimpDeviceStatusEntry*)* @gimp_device_status_update_entry to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null)
  store %struct._GClosure* %call8, %struct._GClosure** %closure, align 8
  %13 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %14 = bitcast %struct._GimpDeviceStatus* %13 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %16 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_object_watch_closure(%struct._GObject* %15, %struct._GClosure* %16)
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %18 = bitcast %struct._GimpDeviceInfo* %17 to i8*
  %19 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call10 = call i64 @g_signal_connect_closure(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GClosure* %19, i32 0)
  %call11 = call %struct._GtkWidget* @gtk_event_box_new()
  %20 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %ebox = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %20, i32 0, i32 1
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %ebox, align 8
  %21 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %vbox12 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %21, i32 0, i32 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox12, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %25 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %ebox15 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox15, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %ebox16 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox16, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %31, i32 4)
  %32 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %ebox20 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox20, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %38, i32 0, i32 2
  %39 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %cmp = icmp eq %struct._GdkDisplay* %39, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %40 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %display23 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %40, i32 0, i32 2
  %41 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display23, align 8
  %call24 = call %struct._GdkDisplay* @gdk_display_get_default()
  %cmp25 = icmp eq %struct._GdkDisplay* %41, %call24
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %42 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %43 = bitcast %struct._GimpDeviceInfo* %42 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %43)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  store i8* %call27, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %44 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %45 = bitcast %struct._GimpDeviceInfo* %44 to i8*
  %call28 = call i8* @gimp_object_get_name(i8* %45)
  %46 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %display29 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %46, i32 0, i32 2
  %47 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display29, align 8
  %call30 = call i8* @gdk_display_get_name(%struct._GdkDisplay* %47)
  %call31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %call28, i8* %call30)
  store i8* %call31, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %48 = load i8*, i8** %name, align 8
  %call32 = call %struct._GtkWidget* @gtk_label_new(i8* %48)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %label, align 8
  %49 = load i8*, i8** %name, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_label_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %52, i32 3)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_label_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call35)
  %55 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %55, i32 4, i32 700, i32 -1)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_misc_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %58, float 0.000000e+00, float 5.000000e-01)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call39)
  %61 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call41 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %hbox, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call42)
  %66 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 0, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %69 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %70 = bitcast %struct._GimpContext* %69 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 80)
  %71 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call45 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GimpContext* %72, i32 20)
  %73 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %tool = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %73, i32 0, i32 2
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %tool, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call46)
  %76 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %77 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %tool48 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %tool48, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %78, i32 0, i32 0, i32 0)
  %79 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %tool49 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %79, i32 0, i32 2
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %tool49, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %82 = bitcast %struct._GimpContext* %81 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %call51 = call %struct._GtkWidget* @gimp_prop_color_area_new(%struct._GObject* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 20, i32 20, i32 0)
  %84 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %foreground = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %84, i32 0, i32 3
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %foreground, align 8
  %85 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %foreground52 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %85, i32 0, i32 3
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %foreground52, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %86, i32 12288)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call53)
  %89 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %90 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %foreground55 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %90, i32 0, i32 3
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %foreground55, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %89, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %foreground56 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %92, i32 0, i32 3
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %foreground56, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  %94 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %95 = bitcast %struct._GimpContext* %94 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 80)
  %96 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  %call58 = call %struct._GtkWidget* @gimp_prop_color_area_new(%struct._GObject* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 20, i32 20, i32 0)
  %97 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %background = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %97, i32 0, i32 4
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %background, align 8
  %98 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %background59 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %98, i32 0, i32 4
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %background59, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %99, i32 12288)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call60)
  %102 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %103 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %background62 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %103, i32 0, i32 4
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %background62, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %104, i32 0, i32 0, i32 0)
  %105 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %background63 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %105, i32 0, i32 4
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %background63, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %108 = bitcast %struct._GimpContext* %107 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 80)
  %109 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %110 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call65 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %struct._GimpContext* %110, i32 20)
  %111 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %111, i32 0, i32 5
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %brush, align 8
  %112 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush66 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %112, i32 0, i32 5
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %brush66, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_view_get_type() #8
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call67)
  %115 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpView*
  %clickable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %115, i32 0, i32 4
  %bf.load = load i8, i8* %clickable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %clickable, align 8
  %116 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush69 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %116, i32 0, i32 5
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %brush69, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_view_get_type() #8
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call70)
  %119 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpView*
  %show_popup = getelementptr inbounds %struct._GimpView, %struct._GimpView* %119, i32 0, i32 4
  %bf.load72 = load i8, i8* %show_popup, align 8
  %bf.clear73 = and i8 %bf.load72, -5
  %bf.set74 = or i8 %bf.clear73, 4
  store i8 %bf.set74, i8* %show_popup, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #8
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call75)
  %122 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %123 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush77 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %123, i32 0, i32 5
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %brush77, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %124, i32 0, i32 0, i32 0)
  %125 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush78 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %125, i32 0, i32 5
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %brush78, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %brush79 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %127, i32 0, i32 5
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %brush79, align 8
  %129 = bitcast %struct._GtkWidget* %128 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @gimp_device_status_view_clicked to void ()*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %130 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %131 = bitcast %struct._GimpContext* %130 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 80)
  %132 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %133 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call82 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._GimpContext* %133, i32 20)
  %134 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %134, i32 0, i32 6
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %pattern, align 8
  %135 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern83 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %135, i32 0, i32 6
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern83, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_view_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call84)
  %138 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpView*
  %clickable86 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %138, i32 0, i32 4
  %bf.load87 = load i8, i8* %clickable86, align 8
  %bf.clear88 = and i8 %bf.load87, -2
  %bf.set89 = or i8 %bf.clear88, 1
  store i8 %bf.set89, i8* %clickable86, align 8
  %139 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern90 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %139, i32 0, i32 6
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern90, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_view_get_type() #8
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call91)
  %142 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpView*
  %show_popup93 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %142, i32 0, i32 4
  %bf.load94 = load i8, i8* %show_popup93, align 8
  %bf.clear95 = and i8 %bf.load94, -5
  %bf.set96 = or i8 %bf.clear95, 4
  store i8 %bf.set96, i8* %show_popup93, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call97)
  %145 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %146 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern99 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %146, i32 0, i32 6
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern99, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %147, i32 0, i32 0, i32 0)
  %148 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern100 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %148, i32 0, i32 6
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern100, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %pattern101 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %150, i32 0, i32 6
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern101, align 8
  %152 = bitcast %struct._GtkWidget* %151 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @gimp_device_status_view_clicked to void ()*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %153 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %154 = bitcast %struct._GimpContext* %153 to %struct._GTypeInstance*
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 80)
  %155 = bitcast %struct._GTypeInstance* %call103 to %struct._GObject*
  %156 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call104 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._GimpContext* %156, i32 40)
  %157 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %157, i32 0, i32 7
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %gradient, align 8
  %158 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient105 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %158, i32 0, i32 7
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient105, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_view_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call106)
  %161 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpView*
  %clickable108 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %161, i32 0, i32 4
  %bf.load109 = load i8, i8* %clickable108, align 8
  %bf.clear110 = and i8 %bf.load109, -2
  %bf.set111 = or i8 %bf.clear110, 1
  store i8 %bf.set111, i8* %clickable108, align 8
  %162 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient112 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %162, i32 0, i32 7
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient112, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_view_get_type() #8
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call113)
  %165 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpView*
  %show_popup115 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %165, i32 0, i32 4
  %bf.load116 = load i8, i8* %show_popup115, align 8
  %bf.clear117 = and i8 %bf.load116, -5
  %bf.set118 = or i8 %bf.clear117, 4
  store i8 %bf.set118, i8* %show_popup115, align 8
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_box_get_type() #8
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call119)
  %168 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkBox*
  %169 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient121 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %169, i32 0, i32 7
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient121, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %168, %struct._GtkWidget* %170, i32 0, i32 0, i32 0)
  %171 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient122 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %171, i32 0, i32 7
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient122, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %172)
  %173 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %gradient123 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %173, i32 0, i32 7
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient123, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %call124 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @gimp_device_status_view_clicked to void ()*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %176 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %177 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  call void @gimp_device_status_update_entry(%struct._GimpDeviceInfo* %176, %struct._GimpDeviceStatusEntry* %177)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_device_remove(%struct._GimpContainer* %devices, %struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceStatus* %status) #3 {
entry:
  %devices.addr = alloca %struct._GimpContainer*, align 8
  %device_info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %status.addr = alloca %struct._GimpDeviceStatus*, align 8
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpDeviceStatusEntry*, align 8
  store %struct._GimpContainer* %devices, %struct._GimpContainer** %devices.addr, align 8
  store %struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceInfo** %device_info.addr, align 8
  store %struct._GimpDeviceStatus* %status, %struct._GimpDeviceStatus** %status.addr, align 8
  %0 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices1 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %0, i32 0, i32 3
  %1 = load %struct._GList*, %struct._GList** %devices1, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpDeviceStatusEntry*
  store %struct._GimpDeviceStatusEntry* %5, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %6 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %device_info3 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %6, i32 0, i32 0
  %7 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info3, align 8
  %8 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %cmp = icmp eq %struct._GimpDeviceInfo* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices4 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %9, i32 0, i32 3
  %10 = load %struct._GList*, %struct._GList** %devices4, align 8
  %11 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %12 = bitcast %struct._GimpDeviceStatusEntry* %11 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %10, i8* %12)
  %13 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices5 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %13, i32 0, i32 3
  store %struct._GList* %call, %struct._GList** %devices5, align 8
  %14 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %device_info6 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %14, i32 0, i32 0
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info6, align 8
  %16 = bitcast %struct._GimpDeviceInfo* %15 to i8*
  %17 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %18 = bitcast %struct._GimpDeviceStatusEntry* %17 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDeviceInfo*, %struct._GimpDeviceStatusEntry*)* @gimp_device_status_update_entry to i8*), i8* %18)
  br label %do.body

do.body:                                          ; preds = %if.then
  %19 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry2, align 8
  %20 = bitcast %struct._GimpDeviceStatusEntry* %19 to i8*
  call void @g_slice_free1(i64 64, i8* %20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_notify_device(%struct._GimpDeviceManager* %manager, %struct._GParamSpec* %pspec, %struct._GimpDeviceStatus* %status) #3 {
entry:
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %status.addr = alloca %struct._GimpDeviceStatus*, align 8
  %list = alloca %struct._GList*, align 8
  %entry1 = alloca %struct._GimpDeviceStatusEntry*, align 8
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDeviceStatus* %status, %struct._GimpDeviceStatus** %status.addr, align 8
  %0 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %call = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %0)
  %1 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %1, i32 0, i32 2
  store %struct._GimpDeviceInfo* %call, %struct._GimpDeviceInfo** %current_device, align 8
  %2 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %devices = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %2, i32 0, i32 3
  %3 = load %struct._GList*, %struct._GList** %devices, align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpDeviceStatusEntry*
  store %struct._GimpDeviceStatusEntry* %7, %struct._GimpDeviceStatusEntry** %entry1, align 8
  %8 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry1, align 8
  %ebox = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %10 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry1, align 8
  %device_info = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %10, i32 0, i32 0
  %11 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %12 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %current_device2 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %12, i32 0, i32 2
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device2, align 8
  %cmp = icmp eq %struct._GimpDeviceInfo* %11, %13
  %cond = select i1 %cmp, i32 3, i32 0
  call void @gtk_widget_set_state(%struct._GtkWidget* %9, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_device_manager_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GClosure* @g_cclosure_new(void ()*, i8*, void (i8*, %struct._GClosure*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_update_entry(%struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceStatusEntry* %entry1) #3 {
entry:
  %device_info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %entry.addr = alloca %struct._GimpDeviceStatusEntry*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %buf = alloca [64 x i8], align 16
  store %struct._GimpDeviceInfo* %device_info, %struct._GimpDeviceInfo** %device_info.addr, align 8
  store %struct._GimpDeviceStatusEntry* %entry1, %struct._GimpDeviceStatusEntry** %entry.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %call = call %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo* %0, %struct._GdkDisplay** null)
  %tobool = icmp ne %struct._GdkDevice* %call, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %call2 = call i32 @gimp_device_info_get_mode(%struct._GimpDeviceInfo* %1)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry.addr, align 8
  %ebox = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %3)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info.addr, align 8
  %5 = bitcast %struct._GimpDeviceInfo* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  store %struct._GimpContext* %6, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %7, %struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #7
  %8 = load i8, i8* %r, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* %g, align 1
  %conv6 = zext i8 %9 to i32
  %10 = load i8, i8* %b, align 1
  %conv7 = zext i8 %10 to i32
  %call8 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 64, i8* %call5, i32 %conv, i32 %conv6, i32 %conv7)
  %11 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry.addr, align 8
  %foreground = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %11, i32 0, i32 3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %foreground, align 8
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  call void @gimp_help_set_help_data(%struct._GtkWidget* %12, i8* %arraydecay9, i8* null)
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %13, %struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #7
  %14 = load i8, i8* %r, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8, i8* %g, align 1
  %conv13 = zext i8 %15 to i32
  %16 = load i8, i8* %b, align 1
  %conv14 = zext i8 %16 to i32
  %call15 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay10, i64 64, i8* %call11, i32 %conv12, i32 %conv13, i32 %conv14)
  %17 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry.addr, align 8
  %background = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %background, align 8
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  call void @gimp_help_set_help_data(%struct._GtkWidget* %18, i8* %arraydecay16, i8* null)
  %19 = load %struct._GimpDeviceStatusEntry*, %struct._GimpDeviceStatusEntry** %entry.addr, align 8
  %ebox17 = getelementptr inbounds %struct._GimpDeviceStatusEntry, %struct._GimpDeviceStatusEntry* %19, i32 0, i32 1
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_watch_closure(%struct._GObject*, %struct._GClosure*) #1

declare i64 @g_signal_connect_closure(i8*, i8*, %struct._GClosure*, i32) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GdkDisplay* @gdk_display_get_default() #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gdk_display_get_name(%struct._GdkDisplay*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject*, i8*, %struct._GimpContext*, i32) #1

declare %struct._GtkWidget* @gimp_prop_color_area_new(%struct._GObject*, i8*, i32, i32, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_view_clicked(%struct._GtkWidget* %widget, i32 %state, i8* %identifier) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %state.addr = alloca i32, align 4
  %identifier.addr = alloca i8*, align 8
  %status = alloca %struct._GimpDeviceStatus*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i64 @gimp_device_status_get_type() #8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %0, i64 %call)
  %1 = bitcast %struct._GtkWidget* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_device_status_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDeviceStatus*
  store %struct._GimpDeviceStatus* %2, %struct._GimpDeviceStatus** %status, align 8
  %call4 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  store %struct._GimpDialogFactory* %call4, %struct._GimpDialogFactory** %dialog_factory, align 8
  %3 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %4)
  %5 = bitcast %struct._GimpObject* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_window_strategy_interface_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpWindowStrategy*
  %7 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status, align 8
  %gimp8 = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %9 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %11 = load i8*, i8** %identifier.addr, align 8
  %call10 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %6, %struct._Gimp* %8, %struct._GimpDialogFactory* %9, %struct._GdkScreen* %call9, i8* %11)
  ret void
}

declare %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo*, %struct._GdkDisplay**) #1

declare i32 @gimp_device_info_get_mode(%struct._GimpDeviceInfo*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget*, i64) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager*) #1

declare void @gtk_widget_set_state(%struct._GtkWidget*, i32) #1

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
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_status_save_clicked(%struct._GtkWidget* %button, %struct._GimpDeviceStatus* %status) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %status.addr = alloca %struct._GimpDeviceStatus*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpDeviceStatus* %status, %struct._GimpDeviceStatus** %status.addr, align 8
  %0 = load %struct._GimpDeviceStatus*, %struct._GimpDeviceStatus** %status.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceStatus, %struct._GimpDeviceStatus* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_devices_save(%struct._Gimp* %1, i32 1)
  ret void
}

declare void @gimp_devices_save(%struct._Gimp*, i32) #1

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