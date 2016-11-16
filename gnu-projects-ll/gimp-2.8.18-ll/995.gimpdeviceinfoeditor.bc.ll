; ModuleID = './app/widgets/gimpdeviceinfoeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDeviceInfoEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpDeviceInfoEditor = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDeviceInfoEditorPrivate = type { %struct._GimpDeviceInfo*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkListStore*, [6 x %struct._GtkTreeIter], %struct._GtkListStore*, %struct._GtkWidget* }
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpCurveView = type { %struct._GimpHistogramView, %struct._Gimp*, %struct._GimpCurve*, %struct._GimpRGB*, %struct._GList*, i32, i32, i32, i32, double, double, double, double, i32, i32, double, %struct._PangoLayout*, double, double, double, double, double, double, %struct._PangoLayout*, %struct._PangoRectangle, i8*, i8* }
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHistogram = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GimpEnumComboBox = type { %struct._GimpIntComboBox }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkCellRendererCombo = type { %struct._GtkCellRendererText, %struct._GtkTreeModel*, i32, i32, i32 }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._GtkCellRendererAccel = type { %struct._GtkCellRendererText, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@gimp_device_info_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpDeviceInfoEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_device_info_editor_new = private unnamed_addr constant [28 x i8] c"gimp_device_info_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GIMP_IS_DEVICE_INFO (info)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@gimp_device_info_editor_parent_class = internal global i8* null, align 8
@GimpDeviceInfoEditor_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"gimpdeviceinfoeditor.c\00", align 1
@__func__.gimp_device_info_editor_constructed = private unnamed_addr constant [36 x i8] c"gimp_device_info_editor_constructed\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"GIMP_IS_DEVICE_INFO (private->info)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"_Mode:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s Curve\00", align 1
@axis_use_strings = internal constant [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Curve _type:\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"curve-type\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gimp-curve\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"_Reset Curve\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"The axis '%s' has no curve\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"X tilt\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Y tilt\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Wheel\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Axes\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"text-column\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"has-entry\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Keys\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"accel-key\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"accel-mods\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"accel-edited\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"accel-cleared\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_device_info_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_device_info_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_device_info_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_device_info_editor_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDeviceInfoEditor*)* @gimp_device_info_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_device_info_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_device_info_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_device_info_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDeviceInfoEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDeviceInfoEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDeviceInfoEditorClass*
  call void @gimp_device_info_editor_class_init(%struct._GimpDeviceInfoEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_init(%struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %frame2 = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %key_view = alloca %struct._GtkWidget*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %i = alloca i32, align 4
  %string = alloca i8*, align 8
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpDeviceInfoEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %5, i32 0)
  %6 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpDeviceInfoEditor* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %8, i32 12)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %9 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %9, i32 0, i32 1
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %10 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %11 = bitcast %struct._GimpDeviceInfoEditor* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %13 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox9 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox10 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #7
  %call12 = call %struct._GtkWidget* @gimp_frame_new(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %17 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox13 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call16 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %frame2, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_frame_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %25, i32 1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 24, i64 64, i64 64)
  %31 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %31, i32 0, i32 3
  store %struct._GtkListStore* %call21, %struct._GtkListStore** %axis_store, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %32 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %32, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %33, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @axis_use_strings, i32 0, i64 %idxprom
  %34 = load i8*, i8** %arrayidx, align 8
  %call22 = call i8* @gettext(i8* %34) #7
  store i8* %call22, i8** %string, align 8
  %35 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store23 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %35, i32 0, i32 3
  %36 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store23, align 8
  %37 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 %37, 1
  %idxprom25 = sext i32 %sub24 to i64
  %38 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_iters = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %38, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [6 x %struct._GtkTreeIter], [6 x %struct._GtkTreeIter]* %axis_iters, i32 0, i64 %idxprom25
  %39 = load i32, i32* %i, align 4
  %40 = load i8*, i8** %string, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) @gtk_list_store_insert_with_values(%struct._GtkListStore* %36, %struct._GtkTreeIter* %arrayidx26, i32 -1, i32 0, i32 %39, i32 1, i8* %40, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store27 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %42, i32 0, i32 3
  %43 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store27, align 8
  %44 = bitcast %struct._GtkListStore* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_tree_model_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTreeModel*
  %call30 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %45)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %view, align 8
  %46 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store31 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %46, i32 0, i32 3
  %47 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store31, align 8
  %48 = bitcast %struct._GtkListStore* %47 to i8*
  call void @g_object_unref(i8* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_tree_view_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call32)
  %51 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %51, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_tree_view_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTreeView*
  %call36 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call37 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %54, i32 -1, i8* null, %struct._GtkCellRenderer* %call36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 1, i8* null)
  %call38 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 24, i64 64)
  %55 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %input_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %55, i32 0, i32 2
  store %struct._GtkListStore* %call38, %struct._GtkListStore** %input_store, align 8
  %call39 = call %struct._GtkCellRenderer* @gtk_cell_renderer_combo_new()
  store %struct._GtkCellRenderer* %call39, %struct._GtkCellRenderer** %cell, align 8
  %56 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %57 = bitcast %struct._GtkCellRenderer* %56 to i8*
  %58 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %input_store40 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %58, i32 0, i32 2
  %59 = load %struct._GtkListStore*, %struct._GtkListStore** %input_store40, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), %struct._GtkListStore* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i8* null)
  %60 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %input_store41 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %60, i32 0, i32 2
  %61 = load %struct._GtkListStore*, %struct._GtkListStore** %input_store41, align 8
  %62 = bitcast %struct._GtkListStore* %61 to i8*
  call void @g_object_unref(i8* %62)
  %63 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %64 = bitcast %struct._GtkCellRenderer* %63 to i8*
  %65 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %66 = bitcast %struct._GimpDeviceInfoEditor* %65 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererCombo*, i8*, %struct._GtkTreeIter*, %struct._GimpDeviceInfoEditor*)* @gimp_device_info_editor_axis_changed to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_tree_view_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call43)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTreeView*
  %70 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %call45 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %69, i32 -1, i8* null, %struct._GtkCellRenderer* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 2, i8* null)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call46)
  %73 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %73, %struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_tree_view_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call48)
  %78 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTreeView*
  %call50 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %78)
  store %struct._GtkTreeSelection* %call50, %struct._GtkTreeSelection** %sel, align 8
  %79 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %79, i32 2)
  %80 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %81 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_iters51 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %81, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [6 x %struct._GtkTreeIter], [6 x %struct._GtkTreeIter]* %axis_iters51, i32 0, i64 0
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %80, %struct._GtkTreeIter* %arrayidx52)
  %82 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %83 = bitcast %struct._GtkTreeSelection* %82 to i8*
  %84 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %85 = bitcast %struct._GimpDeviceInfoEditor* %84 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpDeviceInfoEditor*)* @gimp_device_info_editor_axis_selected to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #7
  %call55 = call %struct._GtkWidget* @gimp_frame_new(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %frame, align 8
  %86 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox56 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %86, i32 0, i32 1
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox56, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call57)
  %89 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %89, %struct._GtkWidget* %90, i32 1, i32 1, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call59 = call i64 @gdk_modifier_type_get_type() #8
  %call60 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 24, i64 64, i64 28, i64 %call59)
  %92 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %92, i32 0, i32 5
  store %struct._GtkListStore* %call60, %struct._GtkListStore** %key_store, align 8
  %93 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store61 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %93, i32 0, i32 5
  %94 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store61, align 8
  %95 = bitcast %struct._GtkListStore* %94 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_tree_model_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call62)
  %96 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTreeModel*
  %call64 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %96)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %key_view, align 8
  %97 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store65 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %97, i32 0, i32 5
  %98 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store65, align 8
  %99 = bitcast %struct._GtkListStore* %98 to i8*
  call void @g_object_unref(i8* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %key_view, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_tree_view_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call66)
  %102 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %102, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %key_view, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_tree_view_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call68)
  %105 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTreeView*
  %call70 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call71 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %105, i32 -1, i8* null, %struct._GtkCellRenderer* %call70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 1, i8* null)
  %call72 = call %struct._GtkCellRenderer* @gtk_cell_renderer_accel_new()
  store %struct._GtkCellRenderer* %call72, %struct._GtkCellRenderer** %cell, align 8
  %106 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %107 = bitcast %struct._GtkCellRenderer* %106 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* null)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %key_view, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_tree_view_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call73)
  %110 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTreeView*
  %111 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %call75 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %110, i32 -1, i8* null, %struct._GtkCellRenderer* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 3, i8* null)
  %112 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %113 = bitcast %struct._GtkCellRenderer* %112 to i8*
  %114 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %115 = bitcast %struct._GimpDeviceInfoEditor* %114 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererAccel*, i8*, i32, i32, i32, %struct._GimpDeviceInfoEditor*)* @gimp_device_info_editor_key_edited to void ()*), i8* %115, void (i8*, %struct._GClosure*)* null, i32 0)
  %116 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %117 = bitcast %struct._GtkCellRenderer* %116 to i8*
  %118 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %119 = bitcast %struct._GimpDeviceInfoEditor* %118 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererAccel*, i8*, %struct._GimpDeviceInfoEditor*)* @gimp_device_info_editor_key_cleared to void ()*), i8* %119, void (i8*, %struct._GClosure*)* null, i32 0)
  %call78 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %scrolled_win, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_scrolled_window_get_type() #8
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call79)
  %122 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %122, i32 1)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_scrolled_window_get_type() #8
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call81)
  %125 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %125, i32 1, i32 1)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_container_get_type() #8
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call83)
  %128 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkContainer*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_container_add(%struct._GtkContainer* %128, %struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #8
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call85)
  %133 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %key_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %133, %struct._GtkWidget* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %key_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_device_info_editor_new(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_device_info_editor_get_type() #8
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDeviceInfo* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_device_info_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_class_init(%struct._GimpDeviceInfoEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDeviceInfoEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDeviceInfoEditorClass* %klass, %struct._GimpDeviceInfoEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditorClass*, %struct._GimpDeviceInfoEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_device_info_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_device_info_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_info_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_info_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_device_info_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 240)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %n_axes = alloca i32, align 4
  %n_keys = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %name = alloca [16 x i8], align 16
  %string = alloca [16 x i8], align 16
  %keyval = alloca i32, align 4
  %modifiers = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %title = alloca i8*, align 8
  %vbox96 = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %label99 = alloca %struct._GtkWidget*, align 8
  %combo101 = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label145 = alloca %struct._GtkWidget*, align 8
  %string147 = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceInfoEditor*
  store %struct._GimpDeviceInfoEditor* %2, %struct._GimpDeviceInfoEditor** %editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_device_info_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %5, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_device_info_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_device_info_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %17 = bitcast %struct._GimpDeviceInfo* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_device_info_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_device_info_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %hbox, align 8
  %29 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %vbox24 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %34, i32 0, i32 1
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox24, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #7
  %call28 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %label, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info31 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %45, i32 0, i32 0
  %46 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info31, align 8
  %47 = bitcast %struct._GimpDeviceInfo* %46 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %combo, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call34)
  %51 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_label_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call36)
  %56 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkLabel*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %56, %struct._GtkWidget* %57)
  %58 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info38 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %58, i32 0, i32 0
  %59 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info38, align 8
  %call39 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %59)
  store i32 %call39, i32* %n_axes, align 4
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %n_axes, align 4
  %cmp40 = icmp slt i32 %60, %61
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4
  %cmp42 = icmp eq i32 %62, -1
  br i1 %cmp42, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i32 0, i32 0
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #7
  %call45 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 16, i8* %call44)
  br label %if.end.49

if.else.46:                                       ; preds = %for.body
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i32 0, i32 0
  %63 = load i32, i32* %i, align 4
  %add = add nsw i32 %63, 1
  %call48 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay47, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %add)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.43
  %64 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %input_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %64, i32 0, i32 2
  %65 = load %struct._GtkListStore*, %struct._GtkListStore** %input_store, align 8
  %66 = load i32, i32* %i, align 4
  %arraydecay50 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i32 0, i32 0
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) @gtk_list_store_insert_with_values(%struct._GtkListStore* %65, %struct._GtkTreeIter* null, i32 -1, i32 0, i32 %66, i32 1, i8* %arraydecay50, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor, align 8
  call void @gimp_device_info_editor_set_axes(%struct._GimpDeviceInfoEditor* %68)
  %69 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info51 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %69, i32 0, i32 0
  %70 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info51, align 8
  %call52 = call i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo* %70)
  store i32 %call52, i32* %n_keys, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.64, %for.end
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %n_keys, align 4
  %cmp54 = icmp slt i32 %71, %72
  br i1 %cmp54, label %for.body.55, label %for.end.66

for.body.55:                                      ; preds = %for.cond.53
  %arraydecay59 = getelementptr inbounds [16 x i8], [16 x i8]* %string, i32 0, i32 0
  %73 = load i32, i32* %i, align 4
  %add60 = add nsw i32 %73, 1
  %call61 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay59, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %add60)
  %74 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info62 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %74, i32 0, i32 0
  %75 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info62, align 8
  %76 = load i32, i32* %i, align 4
  call void @gimp_device_info_get_key(%struct._GimpDeviceInfo* %75, i32 %76, i32* %keyval, i32* %modifiers)
  %77 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %77, i32 0, i32 5
  %78 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store, align 8
  %79 = load i32, i32* %i, align 4
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %string, i32 0, i32 0
  %80 = load i32, i32* %keyval, align 4
  %81 = load i32, i32* %modifiers, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) @gtk_list_store_insert_with_values(%struct._GtkListStore* %78, %struct._GtkTreeIter* null, i32 -1, i32 0, i32 %79, i32 1, i8* %arraydecay63, i32 2, i32 %80, i32 3, i32 %81, i32 -1)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.55
  %82 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %82, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.53

for.end.66:                                       ; preds = %for.cond.53
  %call67 = call %struct._GtkWidget* @gtk_notebook_new()
  %83 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %83, i32 0, i32 6
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %notebook, align 8
  %84 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook68 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %84, i32 0, i32 6
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook68, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_notebook_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call69)
  %87 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %87, i32 0)
  %88 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook71 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %88, i32 0, i32 6
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook71, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_notebook_get_type() #8
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call72)
  %91 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %91, i32 0)
  %92 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor, align 8
  %93 = bitcast %struct._GimpDeviceInfoEditor* %92 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #8
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call74)
  %94 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %95 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook76 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %95, i32 0, i32 6
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook76, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %96, i32 1, i32 1, i32 0)
  %97 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook77 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %97, i32 0, i32 6
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook77, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  store i32 1, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.157, %for.end.66
  %99 = load i32, i32* %i, align 4
  %cmp79 = icmp slt i32 %99, 7
  br i1 %cmp79, label %for.body.80, label %for.end.159

for.body.80:                                      ; preds = %for.cond.78
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #7
  %100 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %100, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @axis_use_strings, i32 0, i64 %idxprom
  %101 = load i8*, i8** %arrayidx, align 8
  %call85 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call84, i8* %101)
  store i8* %call85, i8** %title, align 8
  %102 = load i8*, i8** %title, align 8
  %call86 = call %struct._GtkWidget* @gimp_frame_new(i8* %102)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %frame, align 8
  %103 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook87 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %103, i32 0, i32 6
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook87, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_notebook_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call88)
  %106 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkNotebook*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call90 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %106, %struct._GtkWidget* %107, %struct._GtkWidget* null)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %109 = load i8*, i8** %title, align 8
  call void @g_free(i8* %109)
  %110 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info91 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %110, i32 0, i32 0
  %111 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info91, align 8
  %112 = load i32, i32* %i, align 4
  %call92 = call %struct._GimpCurve* @gimp_device_info_get_curve(%struct._GimpDeviceInfo* %111, i32 %112)
  store %struct._GimpCurve* %call92, %struct._GimpCurve** %curve, align 8
  %113 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool93 = icmp ne %struct._GimpCurve* %113, null
  br i1 %tobool93, label %if.then.94, label %if.else.143

if.then.94:                                       ; preds = %for.body.80
  %call103 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %vbox96, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox96, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #8
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call104)
  %116 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %116, i32 6)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_container_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call106)
  %119 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkContainer*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox96, align 8
  call void @gtk_container_add(%struct._GtkContainer* %119, %struct._GtkWidget* %120)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox96, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %121)
  %call108 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %frame, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_frame_get_type() #8
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call109)
  %124 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %124, i32 1)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox96, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #8
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call111)
  %127 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %127, %struct._GtkWidget* %128, i32 1, i32 1, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %call113 = call %struct._GtkWidget* @gimp_curve_view_new()
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %view, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %132 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info114 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %132, i32 0, i32 0
  %133 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info114, align 8
  %134 = bitcast %struct._GimpDeviceInfo* %133 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_context_get_type() #8
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call115)
  %135 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpContext*
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %135, i32 0, i32 1
  %136 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._Gimp* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 4, i8* null)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %137, i32 264, i32 264)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_container_get_type() #8
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call117)
  %140 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkContainer*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %140, %struct._GtkWidget* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_curve_view_get_type() #8
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call119)
  %145 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpCurveView*
  %146 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_view_set_curve(%struct._GimpCurveView* %145, %struct._GimpCurve* %146, %struct._GimpRGB* null)
  %call121 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call121, %struct._GtkWidget** %hbox, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_box_get_type() #8
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call122)
  %149 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %149, i32 6)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox96, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #8
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call124)
  %152 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %152, %struct._GtkWidget* %153, i32 1, i32 1, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %154)
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #7
  %call127 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call126)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %label99, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_box_get_type() #8
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call128)
  %157 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBox*
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %label99, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %157, %struct._GtkWidget* %158, i32 0, i32 0, i32 0)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %label99, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  %160 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %161 = bitcast %struct._GimpCurve* %160 to %struct._GTypeInstance*
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 80)
  %162 = bitcast %struct._GTypeInstance* %call130 to %struct._GObject*
  %call131 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %combo101, align 8
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %combo101, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_enum_combo_box_get_type() #8
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call132)
  %165 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #8
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call134)
  %168 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %combo101, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %168, %struct._GtkWidget* %169, i32 1, i32 1, i32 0)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %combo101, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %label99, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_label_get_type() #8
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call136)
  %173 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkLabel*
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %combo101, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %173, %struct._GtkWidget* %174)
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #7
  %call139 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call138)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %button, align 8
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_box_get_type() #8
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call140)
  %177 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkBox*
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %177, %struct._GtkWidget* %178, i32 0, i32 0, i32 0)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %181 = bitcast %struct._GtkWidget* %180 to i8*
  %182 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %183 = bitcast %struct._GimpCurve* %182 to i8*
  %call142 = call i64 @g_signal_connect_data(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpCurve*)* @gimp_device_info_editor_curve_reset to void ()*), i8* %183, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.156

if.else.143:                                      ; preds = %for.body.80
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0)) #7
  %184 = load i32, i32* %i, align 4
  %sub149 = sub nsw i32 %184, 1
  %idxprom150 = sext i32 %sub149 to i64
  %arrayidx151 = getelementptr inbounds [6 x i8*], [6 x i8*]* @axis_use_strings, i32 0, i64 %idxprom150
  %185 = load i8*, i8** %arrayidx151, align 8
  %call152 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call148, i8* %185)
  store i8* %call152, i8** %string147, align 8
  %186 = load i8*, i8** %string147, align 8
  %call153 = call %struct._GtkWidget* @gtk_label_new(i8* %186)
  store %struct._GtkWidget* %call153, %struct._GtkWidget** %label145, align 8
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call154 = call i64 @gtk_container_get_type() #8
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call154)
  %189 = bitcast %struct._GTypeInstance* %call155 to %struct._GtkContainer*
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %label145, align 8
  call void @gtk_container_add(%struct._GtkContainer* %189, %struct._GtkWidget* %190)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %label145, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %191)
  %192 = load i8*, i8** %string147, align 8
  call void @g_free(i8* %192)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.143, %if.then.94
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %193 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %193, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.78

for.end.159:                                      ; preds = %for.cond.78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %tobool = icmp ne %struct._GimpDeviceInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info2 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info2, align 8
  %7 = bitcast %struct._GimpDeviceInfo* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info3 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %8, i32 0, i32 0
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_device_info_editor_parent_class, align 8
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
define internal void @gimp_device_info_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDeviceInfo*
  %6 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %6, i32 0, i32 0
  store %struct._GimpDeviceInfo* %5, %struct._GimpDeviceInfo** %info, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 532, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %7 = bitcast %struct._GimpDeviceInfo* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
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
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 554, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
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

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_list_store_insert_with_values(%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_set_axes(%struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %n_axes = alloca i32, align 4
  %i = alloca i32, align 4
  %input_name = alloca [16 x i8], align 16
  %j = alloca i32, align 4
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call2 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %4)
  store i32 %call2, i32* %n_axes, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 7
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n_axes, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info6 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info6, align 8
  %10 = load i32, i32* %j, align 4
  %call7 = call i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %9, i32 %10)
  %11 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %call7, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n_axes, align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  store i32 -1, i32* %j, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %15 = load i32, i32* %j, align 4
  %cmp12 = icmp eq i32 %15, -1
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %input_name, i32 0, i32 0
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #7
  %call15 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 16, i8* %call14)
  br label %if.end.18

if.else:                                          ; preds = %if.end.11
  %arraydecay16 = getelementptr inbounds [16 x i8], [16 x i8]* %input_name, i32 0, i32 0
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 1
  %call17 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay16, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %add)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.13
  %17 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %17, i32 0, i32 3
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store, align 8
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub to i64
  %20 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_iters = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %20, i32 0, i32 4
  %arrayidx = getelementptr inbounds [6 x %struct._GtkTreeIter], [6 x %struct._GtkTreeIter]* %axis_iters, i32 0, i64 %idxprom
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %input_name, i32 0, i32 0
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %18, %struct._GtkTreeIter* %arrayidx, i32 2, i8* %arraydecay19, i32 -1)
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.18
  %21 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo*) #1

declare void @gimp_device_info_get_key(%struct._GimpDeviceInfo*, i32, i32*, i32*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare %struct._GimpCurve* @gimp_device_info_get_curve(%struct._GimpDeviceInfo*, i32) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_curve_view_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_curve_view_set_curve(%struct._GimpCurveView*, %struct._GimpCurve*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_view_get_type() #2

declare void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #2

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_curve_reset(%struct._GtkWidget* %button, %struct._GimpCurve* %curve) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %0, i32 1)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo*, i32) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_curve_reset(%struct._GimpCurve*, i32) #1

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

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_combo_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_axis_changed(%struct._GtkCellRendererCombo* %combo, i8* %path_string, %struct._GtkTreeIter* %new_iter, %struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %combo.addr = alloca %struct._GtkCellRendererCombo*, align 8
  %path_string.addr = alloca i8*, align 8
  %new_iter.addr = alloca %struct._GtkTreeIter*, align 8
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %new_use_iter = alloca %struct._GtkTreeIter, align 8
  %new_use = alloca i32, align 4
  %old_use = alloca i32, align 4
  %new_axis = alloca i32, align 4
  %old_axis = alloca i32, align 4
  %n_axes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkCellRendererCombo* %combo, %struct._GtkCellRendererCombo** %combo.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct._GtkTreeIter* %new_iter, %struct._GtkTreeIter** %new_iter.addr, align 8
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load i8*, i8** %path_string.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %4, i32 0, i32 3
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %new_use_iter, %struct._GtkTreePath* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  store i32 0, i32* %new_use, align 4
  store i32 0, i32* %old_use, align 4
  store i32 -1, i32* %new_axis, align 4
  store i32 -1, i32* %old_axis, align 4
  %9 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store6 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %9, i32 0, i32 3
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store6, align 8
  %11 = bitcast %struct._GtkListStore* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %new_use_iter, i32 0, i32* %new_use, i32 -1)
  %13 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %input_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %13, i32 0, i32 2
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %input_store, align 8
  %15 = bitcast %struct._GtkListStore* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %new_iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %17, i32 0, i32* %new_axis, i32 -1)
  %18 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call11 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %19)
  store i32 %call11, i32* %n_axes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n_axes, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info12 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %22, i32 0, i32 0
  %23 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info12, align 8
  %24 = load i32, i32* %i, align 4
  %call13 = call i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %23, i32 %24)
  %25 = load i32, i32* %new_use, align 4
  %cmp14 = icmp eq i32 %call13, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %old_axis, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %28 = load i32, i32* %new_axis, align 4
  %29 = load i32, i32* %old_axis, align 4
  %cmp16 = icmp eq i32 %28, %29
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  br label %out

if.end.18:                                        ; preds = %for.end
  %30 = load i32, i32* %new_axis, align 4
  %cmp19 = icmp ne i32 %30, -1
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %31 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info21 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %31, i32 0, i32 0
  %32 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info21, align 8
  %33 = load i32, i32* %new_axis, align 4
  %call22 = call i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %32, i32 %33)
  store i32 %call22, i32* %old_use, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %34 = load i32, i32* %new_axis, align 4
  %cmp24 = icmp eq i32 %34, -1
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false.27

land.lhs.true:                                    ; preds = %if.end.23
  %35 = load i32, i32* %new_use, align 4
  %cmp25 = icmp eq i32 %35, 1
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %36 = load i32, i32* %new_use, align 4
  %cmp26 = icmp eq i32 %36, 2
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false, %if.end.23
  %37 = load i32, i32* %old_axis, align 4
  %cmp28 = icmp eq i32 %37, -1
  br i1 %cmp28, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %38 = load i32, i32* %old_use, align 4
  %cmp30 = icmp eq i32 %38, 1
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.29
  %39 = load i32, i32* %old_use, align 4
  %cmp32 = icmp eq i32 %39, 2
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.29, %lor.lhs.false, %land.lhs.true
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.27
  %40 = load i32, i32* %new_axis, align 4
  %cmp34 = icmp ne i32 %40, -1
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else
  %41 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info36 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %41, i32 0, i32 0
  %42 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info36, align 8
  %43 = load i32, i32* %new_axis, align 4
  %44 = load i32, i32* %new_use, align 4
  call void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %42, i32 %43, i32 %44)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else
  %45 = load i32, i32* %old_axis, align 4
  %cmp38 = icmp ne i32 %45, -1
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %46 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info40 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %46, i32 0, i32 0
  %47 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info40, align 8
  %48 = load i32, i32* %old_axis, align 4
  %49 = load i32, i32* %old_use, align 4
  call void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %47, i32 %48, i32 %49)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %50 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  call void @gimp_device_info_editor_set_axes(%struct._GimpDeviceInfoEditor* %50)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %entry
  br label %out

out:                                              ; preds = %if.end.43, %if.then.17
  %51 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %51)
  ret void
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_axis_selected(%struct._GtkTreeSelection* %selection, %struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %use = alloca i32, align 4
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %3, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %axis_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %4, i32 0, i32 3
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %axis_store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 0, i32* %use, i32 -1)
  %8 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_notebook_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkNotebook*
  %12 = load i32, i32* %use, align 4
  %sub = sub i32 %12, 1
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %11, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare %struct._GtkCellRenderer* @gtk_cell_renderer_accel_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_key_edited(%struct._GtkCellRendererAccel* %accel, i8* %path_string, i32 %accel_key, i32 %accel_mask, i32 %hardware_keycode, %struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %accel.addr = alloca %struct._GtkCellRendererAccel*, align 8
  %path_string.addr = alloca i8*, align 8
  %accel_key.addr = alloca i32, align 4
  %accel_mask.addr = alloca i32, align 4
  %hardware_keycode.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %index = alloca i32, align 4
  store %struct._GtkCellRendererAccel* %accel, %struct._GtkCellRendererAccel** %accel.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store i32 %accel_key, i32* %accel_key.addr, align 4
  store i32 %accel_mask, i32* %accel_mask.addr, align 4
  store i32 %hardware_keycode, i32* %hardware_keycode.addr, align 4
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load i8*, i8** %path_string.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %4, i32 0, i32 5
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store6 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %9, i32 0, i32 5
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store6, align 8
  %11 = bitcast %struct._GtkListStore* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 0, i32* %index, i32 -1)
  %13 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store9 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %13, i32 0, i32 5
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store9, align 8
  %15 = load i32, i32* %accel_key.addr, align 4
  %16 = load i32, i32* %accel_mask.addr, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 2, i32 %15, i32 3, i32 %16, i32 -1)
  %17 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %19 = load i32, i32* %index, align 4
  %20 = load i32, i32* %accel_key.addr, align 4
  %21 = load i32, i32* %accel_mask.addr, align 4
  call void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %18, i32 %19, i32 %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_editor_key_cleared(%struct._GtkCellRendererAccel* %accel, i8* %path_string, %struct._GimpDeviceInfoEditor* %editor) #3 {
entry:
  %accel.addr = alloca %struct._GtkCellRendererAccel*, align 8
  %path_string.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpDeviceInfoEditor*, align 8
  %private = alloca %struct._GimpDeviceInfoEditorPrivate*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %index = alloca i32, align 4
  store %struct._GtkCellRendererAccel* %accel, %struct._GtkCellRendererAccel** %accel.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct._GimpDeviceInfoEditor* %editor, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceInfoEditor*, %struct._GimpDeviceInfoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceInfoEditorPrivate*
  store %struct._GimpDeviceInfoEditorPrivate* %2, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %3 = load i8*, i8** %path_string.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %4, i32 0, i32 5
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store6 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %9, i32 0, i32 5
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store6, align 8
  %11 = bitcast %struct._GtkListStore* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 0, i32* %index, i32 -1)
  %13 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %key_store9 = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %13, i32 0, i32 5
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %key_store9, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 2, i32 0, i32 3, i32 0, i32 -1)
  %15 = load %struct._GimpDeviceInfoEditorPrivate*, %struct._GimpDeviceInfoEditorPrivate** %private, align 8
  %info = getelementptr inbounds %struct._GimpDeviceInfoEditorPrivate, %struct._GimpDeviceInfoEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %17 = load i32, i32* %index, align 4
  call void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %16, i32 %17, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %18)
  ret void
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo*, i32, i32) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare void @gimp_device_info_set_key(%struct._GimpDeviceInfo*, i32, i32, i32) #1

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
