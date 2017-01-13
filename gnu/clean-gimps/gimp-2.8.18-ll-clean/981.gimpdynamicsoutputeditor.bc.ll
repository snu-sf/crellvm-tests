; ModuleID = './app/widgets/gimpdynamicsoutputeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDynamicsOutputEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpDynamicsOutputEditor = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDynamicsOutputEditorPrivate = type { %struct._GimpDynamicsOutput*, %struct._GtkListStore*, [7 x %struct._GtkTreeIter], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpCurve* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpVector2 = type { double, double }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpCurveView = type { %struct._GimpHistogramView, %struct._Gimp*, %struct._GimpCurve*, %struct._GimpRGB*, %struct._GList*, i32, i32, i32, i32, double, double, double, double, i32, i32, double, %struct._PangoLayout*, double, double, double, double, double, double, %struct._PangoLayout*, %struct._PangoRectangle, i8*, i8* }
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHistogram = type opaque
%struct._Gimp = type opaque
%struct._PangoLayout = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"use-pressure\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pressure-curve\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"use-velocity\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"velocity-curve\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Velocity\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"use-direction\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"direction-curve\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"use-tilt\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"tilt-curve\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"use-wheel\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"wheel-curve\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Wheel\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"use-random\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"random-curve\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"use-fade\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fade-curve\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Fade\00", align 1
@inputs = global [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GimpRGB { double 1.000000e+00, double 5.000000e-01, double 0.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._GimpRGB { double 2.000000e-01, double 2.000000e-01, double 2.000000e-01, double 1.000000e+00 } }], align 16
@gimp_dynamics_output_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"GimpDynamicsOutputEditor\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dynamics_output_editor_new = private unnamed_addr constant [32 x i8] c"gimp_dynamics_output_editor_new\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DYNAMICS_OUTPUT (output)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@gimp_dynamics_output_editor_parent_class = internal global i8* null, align 8
@GimpDynamicsOutputEditor_private_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"gimpdynamicsoutputeditor.c\00", align 1
@__func__.gimp_dynamics_output_editor_constructed = private unnamed_addr constant [40 x i8] c"gimp_dynamics_output_editor_constructed\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"GIMP_IS_DYNAMICS_OUTPUT (private->output)\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"y-axis-label\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"_Reset Curve\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"activatable\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.40 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dynamics_output_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dynamics_output_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dynamics_output_editor_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDynamicsOutputEditor*)* @gimp_dynamics_output_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dynamics_output_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dynamics_output_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dynamics_output_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDynamicsOutputEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDynamicsOutputEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDynamicsOutputEditorClass*
  call void @gimp_dynamics_output_editor_class_init(%struct._GimpDynamicsOutputEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_init(%struct._GimpDynamicsOutputEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpDynamicsOutputEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 6)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dynamics_output_editor_new(%struct._GimpDynamicsOutput* %output) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dynamics_output_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dynamics_output_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_dynamics_output_editor_get_type() #8
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._GimpDynamicsOutput* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_output_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_class_init(%struct._GimpDynamicsOutputEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDynamicsOutputEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDynamicsOutputEditorClass* %klass, %struct._GimpDynamicsOutputEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDynamicsOutputEditorClass*, %struct._GimpDynamicsOutputEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_dynamics_output_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dynamics_output_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_output_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_output_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_dynamics_output_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 264)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %tree_sel = alloca %struct._GtkTreeSelection*, align 8
  %i = alloca i32, align 4
  %output_type = alloca i32, align 4
  %type_desc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %use_input = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDynamicsOutputEditor*
  store %struct._GimpDynamicsOutputEditor* %2, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %5, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_dynamics_output_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_dynamics_output_editor_parent_class, align 8
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
  %15 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %17 = bitcast %struct._GimpDynamicsOutput* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_dynamics_output_get_type() #8
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dynamics_output_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %call21 = call %struct._GtkWidget* @gimp_curve_view_new()
  %29 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %29, i32 0, i32 3
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %curve_view, align 8
  %30 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view22 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %30, i32 0, i32 3
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view22, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 4, i8* null)
  %33 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output23 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %33, i32 0, i32 0
  %34 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output23, align 8
  %35 = bitcast %struct._GimpDynamicsOutput* %34 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32* %output_type, i8* null)
  %call24 = call i64 @gimp_dynamics_output_type_get_type() #8
  %36 = load i32, i32* %output_type, align 4
  %call25 = call i32 @gimp_enum_get_value(i64 %call24, i32 %36, i8** null, i8** null, i8** %type_desc, i8** null)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %37 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view28 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %37, i32 0, i32 3
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view28, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load i8*, i8** %type_desc, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* %40, i8* null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  %41 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view30 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %41, i32 0, i32 3
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view30, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %42, i32 193, i32 193)
  %43 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %44 = bitcast %struct._GimpDynamicsOutputEditor* %43 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %46 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view33 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %46, i32 0, i32 3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %47, i32 1, i32 1, i32 0)
  %48 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view34 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %48, i32 0, i32 3
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  call void @gimp_dynamics_output_editor_activate_input(%struct._GimpDynamicsOutputEditor* %50, i32 0)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #7
  %call36 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %button, align 8
  %51 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %52 = bitcast %struct._GimpDynamicsOutputEditor* %51 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call37)
  %53 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %59 = bitcast %struct._GimpDynamicsOutputEditor* %58 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDynamicsOutputEditor*)* @gimp_dynamics_output_editor_curve_reset to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %call40 = call i64 @gimp_rgb_get_type() #8
  %call41 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 24, i64 20, i64 64, i64 %call40)
  %60 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %60, i32 0, i32 1
  store %struct._GtkListStore* %call41, %struct._GtkListStore** %input_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %61 = load i32, i32* %i, align 4
  %conv = sext i32 %61 to i64
  %cmp42 = icmp ult i64 %conv, 7
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output45 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %62, i32 0, i32 0
  %63 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output45, align 8
  %64 = bitcast %struct._GimpDynamicsOutput* %63 to i8*
  %65 = load i32, i32* %i, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom
  %use_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %66 = load i8*, i8** %use_property, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %64, i8* %66, i32* %use_input, i8* null)
  %67 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list46 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %67, i32 0, i32 1
  %68 = load %struct._GtkListStore*, %struct._GtkListStore** %input_list46, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %69 to i64
  %70 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_iters = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %70, i32 0, i32 2
  %arrayidx48 = getelementptr inbounds [7 x %struct._GtkTreeIter], [7 x %struct._GtkTreeIter]* %input_iters, i32 0, i64 %idxprom47
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %use_input, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %73 to i64
  %arrayidx50 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom49
  %label = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx50, i32 0, i32 2
  %74 = load i8*, i8** %label, align 8
  %call51 = call i8* @gettext(i8* %74) #7
  %75 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %75 to i64
  %arrayidx53 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom52
  %color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx53, i32 0, i32 3
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) @gtk_list_store_insert_with_values(%struct._GtkListStore* %68, %struct._GtkTreeIter* %arrayidx48, i32 -1, i32 0, i32 %71, i32 1, i32 %72, i32 2, i8* %call51, i32 3, %struct._GimpRGB* %color, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list54 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %77, i32 0, i32 1
  %78 = load %struct._GtkListStore*, %struct._GtkListStore** %input_list54, align 8
  %79 = bitcast %struct._GtkListStore* %78 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_tree_model_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call55)
  %80 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTreeModel*
  %call57 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %80)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %view, align 8
  %81 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list58 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %81, i32 0, i32 1
  %82 = load %struct._GtkListStore*, %struct._GtkListStore** %input_list58, align 8
  %83 = bitcast %struct._GtkListStore* %82 to i8*
  call void @g_object_unref(i8* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_tree_view_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call59)
  %86 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %86, i32 0)
  %call61 = call %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new()
  store %struct._GtkCellRenderer* %call61, %struct._GtkCellRenderer** %cell, align 8
  %87 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %88 = bitcast %struct._GtkCellRenderer* %87 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* null)
  %89 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %90 = bitcast %struct._GtkCellRenderer* %89 to %struct._GTypeInstance*
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 80)
  %91 = bitcast %struct._GTypeInstance* %call62 to %struct._GObject*
  %92 = bitcast %struct._GObject* %91 to i8*
  %93 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %94 = bitcast %struct._GimpDynamicsOutputEditor* %93 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRenderer*, i8*, %struct._GimpDynamicsOutputEditor*)* @gimp_dynamics_output_editor_input_toggled to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_tree_view_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call64)
  %97 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTreeView*
  %call66 = call %struct._GtkCellRenderer* @gimp_cell_renderer_color_new()
  %call67 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %97, i32 -1, i8* null, %struct._GtkCellRenderer* %call66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 3, i8* null)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_tree_view_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call68)
  %100 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTreeView*
  %101 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %call70 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %100, i32 -1, i8* null, %struct._GtkCellRenderer* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* null)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_tree_view_get_type() #8
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call71)
  %104 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTreeView*
  %call73 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call74 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %104, i32 -1, i8* null, %struct._GtkCellRenderer* %call73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 2, i8* null)
  %105 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %106 = bitcast %struct._GimpDynamicsOutputEditor* %105 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #8
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call75)
  %107 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %111 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_view = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %111, i32 0, i32 4
  store %struct._GtkWidget* %110, %struct._GtkWidget** %input_view, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_tree_view_get_type() #8
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call77)
  %114 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTreeView*
  %call79 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %114)
  store %struct._GtkTreeSelection* %call79, %struct._GtkTreeSelection** %tree_sel, align 8
  %115 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_sel, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %115, i32 2)
  %116 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_sel, align 8
  %117 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_iters80 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %117, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [7 x %struct._GtkTreeIter], [7 x %struct._GtkTreeIter]* %input_iters80, i32 0, i64 0
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %116, %struct._GtkTreeIter* %arrayidx81)
  %118 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_sel, align 8
  %119 = bitcast %struct._GtkTreeSelection* %118 to %struct._GTypeInstance*
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 80)
  %120 = bitcast %struct._GTypeInstance* %call82 to %struct._GObject*
  %121 = bitcast %struct._GObject* %120 to i8*
  %122 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %123 = bitcast %struct._GimpDynamicsOutputEditor* %122 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpDynamicsOutputEditor*)* @gimp_dynamics_output_editor_input_selected to void ()*), i8* %123, void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output84 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %124, i32 0, i32 0
  %125 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output84, align 8
  %126 = bitcast %struct._GimpDynamicsOutput* %125 to i8*
  %127 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor, align 8
  %128 = bitcast %struct._GimpDynamicsOutputEditor* %127 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDynamicsOutput*, %struct._GParamSpec*, %struct._GimpDynamicsOutputEditor*)* @gimp_dynamics_output_editor_notify_output to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %tobool = icmp ne %struct._GimpDynamicsOutput* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output2 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output2, align 8
  %7 = bitcast %struct._GimpDynamicsOutput* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output3 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %8, i32 0, i32 0
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %output3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_dynamics_output_editor_parent_class, align 8
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
define internal void @gimp_dynamics_output_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDynamicsOutput*
  %6 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %6, i32 0, i32 0
  store %struct._GimpDynamicsOutput* %5, %struct._GimpDynamicsOutput** %output, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %7 = bitcast %struct._GimpDynamicsOutput* %6 to i8*
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i32 342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
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

declare %struct._GtkWidget* @gimp_curve_view_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_output_type_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_activate_input(%struct._GimpDynamicsOutputEditor* %editor, i32 %input) #3 {
entry:
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %input.addr = alloca i32, align 4
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %i = alloca i32, align 4
  %use_input = alloca i32, align 4
  %input_curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  store i32 %input, i32* %input.addr, align 4
  %0 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_curve_view_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCurveView*
  call void @gimp_curve_view_set_curve(%struct._GimpCurveView* %6, %struct._GimpCurve* null, %struct._GimpRGB* null)
  %7 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view4 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view4, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_curve_view_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCurveView*
  call void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView* %10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %conv = sext i32 %11 to i64
  %cmp = icmp ult i64 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %14 = bitcast %struct._GimpDynamicsOutput* %13 to i8*
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom
  %use_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %16 = load i8*, i8** %use_property, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom8
  %curve_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 1
  %18 = load i8*, i8** %curve_property, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* %16, i32* %use_input, i8* %18, %struct._GimpCurve** %input_curve, i8* null)
  %19 = load i32, i32* %input.addr, align 4
  %20 = load i32, i32* %i, align 4
  %cmp10 = icmp eq i32 %19, %20
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view12 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %21, i32 0, i32 3
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view12, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_curve_view_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpCurveView*
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom15
  %color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 3
  call void @gimp_curve_view_set_curve(%struct._GimpCurveView* %24, %struct._GimpCurve* %25, %struct._GimpRGB* %color)
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %28 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %active_curve = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %28, i32 0, i32 5
  store %struct._GimpCurve* %27, %struct._GimpCurve** %active_curve, align 8
  %29 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view17 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view17, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_curve_view_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpCurveView*
  %33 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom20
  %label = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 2
  %34 = load i8*, i8** %label, align 8
  call void @gimp_curve_view_set_x_axis_label(%struct._GimpCurveView* %32, i8* %34)
  br label %if.end.29

if.else:                                          ; preds = %for.body
  %35 = load i32, i32* %use_input, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  %36 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view23 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %36, i32 0, i32 3
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view23, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_curve_view_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpCurveView*
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom26
  %color28 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx27, i32 0, i32 3
  call void @gimp_curve_view_add_background(%struct._GimpCurveView* %39, %struct._GimpCurve* %40, %struct._GimpRGB* %color28)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %43 = bitcast %struct._GimpCurve* %42 to i8*
  call void @g_object_unref(i8* %43)
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_curve_reset(%struct._GtkWidget* %button, %struct._GimpDynamicsOutputEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %active_curve = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %3, i32 0, i32 5
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %active_curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %active_curve2 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %5, i32 0, i32 5
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %active_curve2, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

declare void @gtk_list_store_insert_with_values(%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_input_toggled(%struct._GtkCellRenderer* %cell, i8* %path, %struct._GimpDynamicsOutputEditor* %editor) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %path.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %input = alloca i32, align 4
  %use = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %0 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %2, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GtkListStore*, %struct._GtkListStore** %input_list, align 8
  %5 = bitcast %struct._GtkListStore* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_tree_model_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %6, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = load i8*, i8** %path.addr, align 8
  %call4 = call i32 @gtk_tree_model_get_iter_from_string(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i8* %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 0, i32* %input, i32 1, i32* %use, i32 -1)
  %10 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %output = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %12 = bitcast %struct._GimpDynamicsOutput* %11 to i8*
  %13 = load i32, i32* %input, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom
  %use_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %14 = load i8*, i8** %use_property, align 8
  %15 = load i32, i32* %use, align 4
  %tobool5 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i32 %lnot.ext, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_color_new() #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_input_selected(%struct._GtkTreeSelection* %selection, %struct._GimpDynamicsOutputEditor* %editor) #3 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %input = alloca i32, align 4
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 0, i32* %input, i32 -1)
  %2 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %3 = load i32, i32* %input, align 4
  call void @gimp_dynamics_output_editor_activate_input(%struct._GimpDynamicsOutputEditor* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_editor_notify_output(%struct._GimpDynamicsOutput* %output, %struct._GParamSpec* %pspec, %struct._GimpDynamicsOutputEditor* %editor) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpDynamicsOutputEditor*, align 8
  %i = alloca i32, align 4
  %private = alloca %struct._GimpDynamicsOutputEditorPrivate*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %use_input = alloca i32, align 4
  %input_curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDynamicsOutputEditor* %editor, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom
  %use_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %use_property, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.28, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct._GimpDynamicsOutputEditor*, %struct._GimpDynamicsOutputEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpDynamicsOutputEditor* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dynamics_output_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast i8* %call3 to %struct._GimpDynamicsOutputEditorPrivate*
  store %struct._GimpDynamicsOutputEditorPrivate* %7, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %8 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_view = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %input_view, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_view_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeView*
  %call6 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %11)
  store %struct._GtkTreeSelection* %call6, %struct._GtkTreeSelection** %sel, align 8
  %12 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %13 = bitcast %struct._GimpDynamicsOutput* %12 to i8*
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name7, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom8
  %curve_property = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 1
  %17 = load i8*, i8** %curve_property, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %13, i8* %15, i32* %use_input, i8* %17, %struct._GimpCurve** %input_curve, i8* null)
  %18 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_list = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %18, i32 0, i32 1
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %input_list, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_iters = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %21, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [7 x %struct._GtkTreeIter], [7 x %struct._GtkTreeIter]* %input_iters, i32 0, i64 %idxprom10
  %22 = load i32, i32* %use_input, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %19, %struct._GtkTreeIter* %arrayidx11, i32 1, i32 %22, i32 -1)
  %23 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %input_iters13 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %25, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [7 x %struct._GtkTreeIter], [7 x %struct._GtkTreeIter]* %input_iters13, i32 0, i64 %idxprom12
  %call15 = call i32 @gtk_tree_selection_iter_is_selected(%struct._GtkTreeSelection* %23, %struct._GtkTreeIter* %arrayidx14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.27, label %if.then.17

if.then.17:                                       ; preds = %if.then
  %26 = load i32, i32* %use_input, align 4
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %27 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %27, i32 0, i32 3
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_curve_view_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpCurveView*
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %arrayidx23 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @inputs, i32 0, i64 %idxprom22
  %color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx23, i32 0, i32 3
  call void @gimp_curve_view_add_background(%struct._GimpCurveView* %30, %struct._GimpCurve* %31, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %if.then.17
  %33 = load %struct._GimpDynamicsOutputEditorPrivate*, %struct._GimpDynamicsOutputEditorPrivate** %private, align 8
  %curve_view24 = getelementptr inbounds %struct._GimpDynamicsOutputEditorPrivate, %struct._GimpDynamicsOutputEditorPrivate* %33, i32 0, i32 3
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_view24, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_curve_view_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call25)
  %36 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpCurveView*
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  call void @gimp_curve_view_remove_background(%struct._GimpCurveView* %36, %struct._GimpCurve* %37)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %input_curve, align 8
  %39 = bitcast %struct._GimpCurve* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  br label %for.end

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.27, %for.cond
  ret void
}

declare void @gimp_curve_view_set_curve(%struct._GimpCurveView*, %struct._GimpCurve*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_view_get_type() #2

declare void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView*) #1

declare void @gimp_curve_view_set_x_axis_label(%struct._GimpCurveView*, i8*) #1

declare void @gimp_curve_view_add_background(%struct._GimpCurveView*, %struct._GimpCurve*, %struct._GimpRGB*) #1

declare void @gimp_curve_reset(%struct._GimpCurve*, i32) #1

declare i32 @gtk_tree_model_get_iter_from_string(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_selection_iter_is_selected(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @gimp_curve_view_remove_background(%struct._GimpCurveView*, %struct._GimpCurve*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

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
