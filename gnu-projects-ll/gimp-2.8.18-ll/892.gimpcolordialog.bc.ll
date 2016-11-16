; ModuleID = './app/widgets/gimpcolordialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorDialogClass = type { %struct._GimpViewableDialogClass, void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32)* }
%struct._GimpViewableDialogClass = type { %struct._GimpDialogClass }
%struct._GimpDialogClass = type { %struct._GtkDialogClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpColorSelection = type { %struct._GtkBox, i32, %struct._GimpHSV, %struct._GimpRGB, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpColorNotebook = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GList*, %struct._GimpColorSelector* }
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@gimp_color_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorDialog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_color_dialog_new = private unnamed_addr constant [22 x i8] c"gimp_color_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"dialog_factory == NULL || GIMP_IS_DIALOG_FACTORY (dialog_factory)\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"dialog_factory == NULL || dialog_identifier != NULL\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"gimp_color_dialog_new() called with a NULL context\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimp-color-selector\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"gimp-color-dialog\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"gimp-context\00", align 1
@__func__.gimp_color_dialog_set_color = private unnamed_addr constant [28 x i8] c"gimp_color_dialog_set_color\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"GIMP_IS_COLOR_DIALOG (dialog)\00", align 1
@__func__.gimp_color_dialog_get_color = private unnamed_addr constant [28 x i8] c"gimp_color_dialog_get_color\00", align 1
@gimp_color_dialog_parent_class = internal global i8* null, align 8
@GimpColorDialog_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@color_dialog_signals = internal global [1 x i32] zeroinitializer, align 4
@color_dialogs = internal global %struct._GList* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Add the current color to the color history\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_dialog_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 992, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_dialog_class_intern_init to void (i8*, i8*)*), i32 416, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorDialog*)* @gimp_color_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpColorDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorDialogClass*
  call void @gimp_color_dialog_class_init(%struct._GimpColorDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_init(%struct._GimpColorDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %arrow = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %history_color = alloca %struct._GimpRGB, align 8
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @color_dialogs, align 8
  %1 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpColorDialog* %1 to i8*
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %0, i8* %2)
  store %struct._GList* %call, %struct._GList** @color_dialogs, align 8
  %3 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %4 = bitcast %struct._GimpColorDialog* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_dialog_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 -5, i8* null)
  %6 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %7 = bitcast %struct._GimpColorDialog* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %8, i32 -5)
  %9 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %10 = bitcast %struct._GimpColorDialog* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %11, i32 1, i32 -5, i32 -6, i32 -1)
  %call7 = call %struct._GtkWidget* @gimp_color_selection_new()
  %12 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %12, i32 0, i32 2
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %selection, align 8
  %13 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection8 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %selection8, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %16, i32 12)
  %17 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %18 = bitcast %struct._GimpColorDialog* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %19)
  %20 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %22 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %selection16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  %24 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection17 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %selection17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection18 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %selection18, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %30 = bitcast %struct._GimpColorDialog* %29 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelection*, %struct._GimpColorDialog*)* @gimp_color_dialog_color_changed to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 7, i32 1)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %table, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %33, i32 2)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %36, i32 2)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %39, i32 0, i32 4)
  %40 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection27 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %selection27, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_color_selection_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpColorSelection*
  %right_vbox = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %43, i32 0, i32 6
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %call32 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %button, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %51, %struct._GtkWidget* %52, i32 0, i32 1, i32 0, i32 1)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %53, i8* %call35, i8* null)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %58 = bitcast %struct._GimpColorDialog* %57 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDialog*)* @gimp_color_history_add_clicked to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %call37 = call %struct._GtkWidget* @gtk_arrow_new(i32 3, i32 2)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %arrow, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call38)
  %61 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_container_add(%struct._GtkContainer* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %64 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %64, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %i, align 4
  %rem = srem i32 %65, 6
  store i32 %rem, i32* %column, align 4
  %66 = load i32, i32* %i, align 4
  %div = sdiv i32 %66, 6
  store i32 %div, i32* %row, align 4
  %call40 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %button, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %67, i32 20, i32 20)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call41)
  %70 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = load i32, i32* %column, align 4
  %add = add nsw i32 %72, 1
  %73 = load i32, i32* %column, align 4
  %add43 = add nsw i32 %73, 2
  %74 = load i32, i32* %row, align 4
  %75 = load i32, i32* %row, align 4
  %add44 = add nsw i32 %75, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 %add, i32 %add43, i32 %74, i32 %add44)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load i32, i32* %i, align 4
  call void @color_history_get(i32 %77, %struct._GimpRGB* %history_color)
  %call45 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %history_color, i32 1, i32 512)
  %78 = load i32, i32* %i, align 4
  %idxprom = sext i32 %78 to i64
  %79 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %history = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %79, i32 0, i32 3
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history, i32 0, i64 %idxprom
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %arrayidx, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call46)
  %82 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %83 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %83 to i64
  %84 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %history49 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %84, i32 0, i32 3
  %arrayidx50 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history49, i32 0, i64 %idxprom48
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx50, align 8
  call void @gtk_container_add(%struct._GtkContainer* %82, %struct._GtkWidget* %85)
  %86 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %86 to i64
  %87 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %history52 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %87, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history52, i32 0, i64 %idxprom51
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx53, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %91 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %92 = bitcast %struct._GimpColorDialog* %91 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDialog*)* @gimp_color_history_color_clicked to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %93 to i64
  %94 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %history56 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %94, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history56, i32 0, i64 %idxprom55
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx57, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %97 = load i32, i32* %i, align 4
  %conv = sext i32 %97 to i64
  %98 = inttoptr i64 %conv to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_color_history_color_changed to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i8* %title, i8* %stock_id, i8* %desc, %struct._GtkWidget* %parent, %struct._GimpDialogFactory* %dialog_factory, i8* %dialog_identifier, %struct._GimpRGB* %color, i32 %wants_updates, i32 %show_alpha) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %title.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %dialog_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog_identifier.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %wants_updates.addr = alloca i32, align 4
  %show_alpha.addr = alloca i32, align 4
  %dialog = alloca %struct._GimpColorDialog*, align 8
  %role = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %__inst74 = alloca %struct._GTypeInstance*, align 8
  %__t76 = alloca i64, align 8
  %__r79 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %parent126 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store %struct._GimpDialogFactory* %dialog_factory, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  store i8* %dialog_identifier, i8** %dialog_identifier.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %wants_updates, i32* %wants_updates.addr, align 4
  store i32 %show_alpha, i32* %show_alpha.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp = icmp eq %struct._GimpViewable* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_viewable_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp13 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp13, label %if.then.38, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_context_get_type() #7
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35, %do.body.12
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gtk_widget_get_type() #7
  store i64 %call47, i64* %__t46, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %do.body.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %do.body.42
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type57, align 8
  %36 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %35, %36
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %38 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #8
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %39 = load i32, i32* %__r49, align 4
  store i32 %39, i32* %tmp64
  %40 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  %41 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %cmp71 = icmp eq %struct._GimpDialogFactory* %41, null
  br i1 %cmp71, label %if.then.96, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %do.body.70
  %42 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %43 = bitcast %struct._GimpDialogFactory* %42 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %43, %struct._GTypeInstance** %__inst74, align 8
  %call77 = call i64 @gimp_dialog_factory_get_type() #7
  store i64 %call77, i64* %__t76, align 8
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %tobool80 = icmp ne %struct._GTypeInstance* %44, null
  br i1 %tobool80, label %if.else.82, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false.72
  store i32 0, i32* %__r79, align 4
  br label %if.end.93

if.else.82:                                       ; preds = %lor.lhs.false.72
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %g_class83 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class83, align 8
  %tobool84 = icmp ne %struct._GTypeClass* %46, null
  br i1 %tobool84, label %land.lhs.true.85, label %if.else.90

land.lhs.true.85:                                 ; preds = %if.else.82
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %g_class86 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class86, align 8
  %g_type87 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type87, align 8
  %50 = load i64, i64* %__t76, align 8
  %cmp88 = icmp eq i64 %49, %50
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.85
  store i32 1, i32* %__r79, align 4
  br label %if.end.92

if.else.90:                                       ; preds = %land.lhs.true.85, %if.else.82
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %52 = load i64, i64* %__t76, align 8
  %call91 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %51, i64 %52) #8
  store i32 %call91, i32* %__r79, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.81
  %53 = load i32, i32* %__r79, align 4
  store i32 %53, i32* %tmp94
  %54 = load i32, i32* %tmp94
  %tobool95 = icmp ne i32 %54, 0
  br i1 %tobool95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.93, %do.body.70
  br label %if.end.98

if.else.97:                                       ; preds = %if.end.93
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.98:                                        ; preds = %if.then.96
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %55 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %cmp101 = icmp eq %struct._GimpDialogFactory* %55, null
  br i1 %cmp101, label %if.then.104, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %do.body.100
  %56 = load i8*, i8** %dialog_identifier.addr, align 8
  %cmp103 = icmp ne i8* %56, null
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %lor.lhs.false.102, %do.body.100
  br label %if.end.106

if.else.105:                                      ; preds = %lor.lhs.false.102
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %57 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp109 = icmp ne %struct._GimpRGB* %57, null
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.108
  br label %if.end.112

if.else.111:                                      ; preds = %do.body.108
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.112:                                       ; preds = %if.then.110
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool114 = icmp ne %struct._GimpContext* %58, null
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %do.end.113
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %do.end.113
  %59 = load i8*, i8** %dialog_identifier.addr, align 8
  %tobool117 = icmp ne i8* %59, null
  br i1 %tobool117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.116
  %60 = load i8*, i8** %dialog_identifier.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.116
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %60, %cond.true ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %role, align 8
  %call118 = call i64 @gimp_color_dialog_get_type() #7
  %61 = load i8*, i8** %title.addr, align 8
  %62 = load i8*, i8** %role, align 8
  %63 = load i8*, i8** %stock_id.addr, align 8
  %64 = load i8*, i8** %desc.addr, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call119 = call i8* (i64, i8*, ...) @g_object_new(i64 %call118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*)* @gimp_color_dialog_help_func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._GtkWidget* %65, i8* null)
  %66 = bitcast i8* %call119 to %struct._GimpColorDialog*
  store %struct._GimpColorDialog* %66, %struct._GimpColorDialog** %dialog, align 8
  %67 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool120 = icmp ne %struct._GimpViewable* %67, null
  br i1 %tobool120, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %cond.end
  %68 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %69 = bitcast %struct._GimpColorDialog* %68 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_viewable_dialog_get_type() #7
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call122)
  %70 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpViewableDialog*
  %71 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %70, %struct._GimpViewable* %71, %struct._GimpContext* %72)
  br label %if.end.131

if.else.124:                                      ; preds = %cond.end
  %73 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %74 = bitcast %struct._GimpColorDialog* %73 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_viewable_dialog_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call127)
  %75 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpViewableDialog*
  %icon = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %75, i32 0, i32 2
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  %call129 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %76)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %parent126, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %parent126, align 8
  %call130 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %77)
  store %struct._GtkWidget* %call130, %struct._GtkWidget** %parent126, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %parent126, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %78)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.124, %if.then.121
  %79 = load i32, i32* %wants_updates.addr, align 4
  %80 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %wants_updates132 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %80, i32 0, i32 1
  store i32 %79, i32* %wants_updates132, align 4
  %81 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %tobool133 = icmp ne %struct._GimpDialogFactory* %81, null
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.end.131
  %82 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %83 = load i8*, i8** %dialog_identifier.addr, align 8
  %84 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %85 = bitcast %struct._GimpColorDialog* %84 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_widget_get_type() #7
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call135)
  %86 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkWidget*
  call void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %82, i8* %83, %struct._GtkWidget* %86)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.end.131
  %87 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %87, i32 0, i32 2
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_color_selection_get_type() #7
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call138)
  %90 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpColorSelection*
  %91 = load i32, i32* %show_alpha.addr, align 4
  call void @gimp_color_selection_set_show_alpha(%struct._GimpColorSelection* %90, i32 %91)
  %92 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool140 = icmp ne %struct._GimpContext* %92, null
  br i1 %tobool140, label %if.then.141, label %if.end.153

if.then.141:                                      ; preds = %if.end.137
  %93 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %93, i32 0, i32 1
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %94, i32 0, i32 1
  %95 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %95, i32 0, i32 46
  %96 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %97 = bitcast %struct._GimpColorConfig* %96 to %struct._GTypeInstance*
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 80)
  %98 = bitcast %struct._GTypeInstance* %call142 to %struct._GObject*
  %99 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %100 = bitcast %struct._GimpContext* %99 to i8*
  call void @g_object_set_data(%struct._GObject* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* %100)
  %101 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection143 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %101, i32 0, i32 2
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %selection143, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call144 = call i64 @gimp_color_selection_get_type() #7
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call144)
  %104 = bitcast %struct._GTypeInstance* %call145 to %struct._GimpColorSelection*
  %105 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp146 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %105, i32 0, i32 1
  %106 = load %struct._Gimp*, %struct._Gimp** %gimp146, align 8
  %config147 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %106, i32 0, i32 1
  %107 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config147, align 8
  %color_management148 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %107, i32 0, i32 46
  %108 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management148, align 8
  call void @gimp_color_selection_set_config(%struct._GimpColorSelection* %104, %struct._GimpColorConfig* %108)
  %109 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp149 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %109, i32 0, i32 1
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp149, align 8
  %config150 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %110, i32 0, i32 1
  %111 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config150, align 8
  %color_management151 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %111, i32 0, i32 46
  %112 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management151, align 8
  %113 = bitcast %struct._GimpColorConfig* %112 to %struct._GTypeInstance*
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 80)
  %114 = bitcast %struct._GTypeInstance* %call152 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* null)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.141, %if.end.137
  %115 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection154 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %115, i32 0, i32 2
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %selection154, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call155 = call i64 @gimp_color_selection_get_type() #7
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call155)
  %118 = bitcast %struct._GTypeInstance* %call156 to %struct._GimpColorSelection*
  %119 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %118, %struct._GimpRGB* %119)
  %120 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection157 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %120, i32 0, i32 2
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %selection157, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_color_selection_get_type() #7
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call158)
  %123 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpColorSelection*
  %124 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_selection_set_old_color(%struct._GimpColorSelection* %123, %struct._GimpRGB* %124)
  %125 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %126 = bitcast %struct._GimpColorDialog* %125 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_widget_get_type() #7
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call160)
  %127 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkWidget*
  store %struct._GtkWidget* %127, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.153, %if.else.111, %if.else.105, %if.else.97, %if.else.67, %if.else.39, %if.else.10
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %128
}

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

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

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_help_func(i8* %help_id, i8* %help_data) #3 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpColorDialog*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDialog*
  store %struct._GimpColorDialog* %2, %struct._GimpColorDialog** %dialog, align 8
  %3 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_selection_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorSelection*
  %notebook4 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %6, i32 0, i32 7
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook4, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_notebook_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %9, %struct._GimpColorNotebook** %notebook, align 8
  %10 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %10, i32 0, i32 3
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %12 = bitcast %struct._GimpColorSelector* %11 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %14 = bitcast %struct._GTypeClass* %13 to %struct._GimpColorSelectorClass*
  %help_id7 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %14, i32 0, i32 2
  %15 = load i8*, i8** %help_id7, align 8
  store i8* %15, i8** %help_id.addr, align 8
  %16 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_standard_help_func(i8* %16, i8* null)
  ret void
}

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory*, i8*, %struct._GtkWidget*) #1

declare void @gimp_color_selection_set_show_alpha(%struct._GimpColorSelection*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selection_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_color_selection_set_config(%struct._GimpColorSelection*, %struct._GimpColorConfig*) #1

declare void @gimp_color_selection_set_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #1

declare void @gimp_color_selection_set_old_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_dialog_set_color(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color) #3 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpColorDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_dialog_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_dialog_set_color, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_dialog_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %18 = bitcast %struct._GimpColorDialog* %17 to i8*
  %call17 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelection*, %struct._GimpColorDialog*)* @gimp_color_dialog_color_changed to i8*), i8* %18)
  %19 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection18 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %selection18, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_color_selection_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpColorSelection*
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %22, %struct._GimpRGB* %23)
  %24 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection21 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %selection21, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_color_selection_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpColorSelection*
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_selection_set_old_color(%struct._GimpColorSelection* %27, %struct._GimpRGB* %28)
  %29 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection24 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %29, i32 0, i32 2
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %selection24, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %33 = bitcast %struct._GimpColorDialog* %32 to i8*
  %call25 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelection*, %struct._GimpColorDialog*)* @gimp_color_dialog_color_changed to i8*), i8* %33)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_color_changed(%struct._GimpColorSelection* %selection, %struct._GimpColorDialog* %dialog) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  %0 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %wants_updates = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %wants_updates, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %2, %struct._GimpRGB* %color)
  %3 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %4 = bitcast %struct._GimpColorDialog* %3 to i8*
  %5 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @color_dialog_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %4, i32 %5, i32 0, %struct._GimpRGB* %color, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_dialog_get_color(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color) #3 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpColorDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_dialog_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_dialog_get_color, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_dialog_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_selection_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorSelection*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %17, %struct._GimpRGB* %18)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_color_selection_get_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_class_init(%struct._GimpColorDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %dialog_class = alloca %struct._GtkDialogClass*, align 8
  store %struct._GimpColorDialogClass* %klass, %struct._GimpColorDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpColorDialogClass*, %struct._GimpColorDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorDialogClass*, %struct._GimpColorDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorDialogClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_dialog_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkDialogClass*
  store %struct._GtkDialogClass* %5, %struct._GtkDialogClass** %dialog_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GtkDialogClass*, %struct._GtkDialogClass** %dialog_class, align 8
  %response = getelementptr inbounds %struct._GtkDialogClass, %struct._GtkDialogClass* %7, i32 0, i32 1
  store void (%struct._GtkDialog*, i32)* @gimp_color_dialog_response, void (%struct._GtkDialog*, i32)** %response, align 8
  %8 = load %struct._GimpColorDialogClass*, %struct._GimpColorDialogClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpColorDialogClass* %8 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_rgb_get_type() #7
  %call4 = call i64 @gimp_color_dialog_state_get_type() #7
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i64 %10, i32 2, i32 984, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__BOXED_ENUM, i64 4, i32 2, i64 %call3, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @color_dialog_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpColorDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDialog*
  store %struct._GimpColorDialog* %2, %struct._GimpColorDialog** %dialog, align 8
  %3 = load %struct._GList*, %struct._GList** @color_dialogs, align 8
  %4 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %5 = bitcast %struct._GimpColorDialog* %4 to i8*
  %call2 = call %struct._GList* @g_list_remove(%struct._GList* %3, i8* %5)
  store %struct._GList* %call2, %struct._GList** @color_dialogs, align 8
  %6 = load i8*, i8** @gimp_color_dialog_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 5
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_dialog_response(%struct._GtkDialog* %gtk_dialog, i32 %response_id) #3 {
entry:
  %gtk_dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog = alloca %struct._GimpColorDialog*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkDialog* %gtk_dialog, %struct._GtkDialog** %gtk_dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %gtk_dialog.addr, align 8
  %1 = bitcast %struct._GtkDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDialog*
  store %struct._GimpColorDialog* %2, %struct._GimpColorDialog** %dialog, align 8
  %3 = load i32, i32* %response_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %4, i32 0, i32 2
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_selection_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorSelection*
  call void @gimp_color_selection_reset(%struct._GimpColorSelection* %7)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  call void @gimp_color_history_add_clicked(%struct._GtkWidget* null, %struct._GimpColorDialog* %8)
  %9 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection5 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %selection5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_selection_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %12, %struct._GimpRGB* %color)
  %13 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %14 = bitcast %struct._GimpColorDialog* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @color_dialog_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpRGB* %color, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %selection8 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %selection8, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_color_selection_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_old_color(%struct._GimpColorSelection* %19, %struct._GimpRGB* %color)
  %20 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %21 = bitcast %struct._GimpColorDialog* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @color_dialog_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %21, i32 %22, i32 0, %struct._GimpRGB* %color, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__BOXED_ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_dialog_state_get_type() #2

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_color_selection_reset(%struct._GimpColorSelection*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_history_add_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDialog* %dialog) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %shift_begin = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  %0 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %3, %struct._GimpRGB* %color)
  %call2 = call i32 @color_history_add(%struct._GimpRGB* %color)
  store i32 %call2, i32* %shift_begin, align 4
  %4 = load i32, i32* %shift_begin, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  call void @color_history_get(i32 %6, %struct._GimpRGB* %color)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %history = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %8, i32 0, i32 3
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history, i32 0, i64 %idxprom
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_area_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %11, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gimp_color_selection_get_old_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #1

declare i32 @color_history_add(%struct._GimpRGB*) #1

declare void @color_history_get(i32, %struct._GimpRGB*) #1

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GtkWidget* @gimp_color_selection_new() #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GtkWidget* @gtk_arrow_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_history_color_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDialog* %dialog) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color_area = alloca %struct._GimpColorArea*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  %3 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_area_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %4, %struct._GimpColorArea** %color_area, align 8
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %color_area, align 8
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog.addr, align 8
  %selection = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_selection_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorSelection*
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %9, %struct._GimpRGB* %color)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_history_color_changed(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %changed_color = alloca %struct._GimpRGB, align 8
  %color_index = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %dialog = alloca %struct._GimpColorDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %2, %struct._GimpRGB* %changed_color)
  %3 = load i8*, i8** %data.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %color_index, align 4
  %5 = load i32, i32* %color_index, align 4
  call void @color_history_set(i32 %5, %struct._GimpRGB* %changed_color)
  %6 = load %struct._GList*, %struct._GList** @color_dialogs, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data2, align 8
  %10 = bitcast i8* %9 to %struct._GimpColorDialog*
  store %struct._GimpColorDialog* %10, %struct._GimpColorDialog** %dialog, align 8
  %11 = load i32, i32* %color_index, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %history = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %12, i32 0, i32 3
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history, i32 0, i64 %idxprom
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp ne %struct._GtkWidget* %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %color_index, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %history5 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %16, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history5, i32 0, i64 %idxprom4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx6, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load i8*, i8** %data.addr, align 8
  %call7 = call i32 @g_signal_handlers_block_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_color_history_color_changed to i8*), i8* %19)
  %20 = load i32, i32* %color_index, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %history9 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %21, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history9, i32 0, i64 %idxprom8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx10, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_area_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %24, %struct._GimpRGB* %changed_color)
  %25 = load i32, i32* %color_index, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct._GimpColorDialog*, %struct._GimpColorDialog** %dialog, align 8
  %history14 = getelementptr inbounds %struct._GimpColorDialog, %struct._GimpColorDialog* %26, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %history14, i32 0, i64 %idxprom13
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx15, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load i8*, i8** %data.addr, align 8
  %call16 = call i32 @g_signal_handlers_unblock_matched(i8* %28, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_color_history_color_changed to i8*), i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %30, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gimp_color_area_get_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

declare void @color_history_set(i32, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone
declare i64 @gimp_color_notebook_get_type() #2

declare void @gimp_standard_help_func(i8*, i8*) #1

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
