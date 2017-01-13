; ModuleID = './app/widgets/gimphistogrameditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpHistogramEditorClass = type { %struct._GimpImageEditorClass }
%struct._GimpImageEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpImageEditor*, %struct._GimpImage*)* }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkArg = type opaque
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
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpHistogramEditor = type { %struct._GimpImageEditor, %struct._GimpDrawable*, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, [6 x %struct._GtkWidget*] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpHistogram = type opaque
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHistogramBox = type { %struct._GtkBox, %struct._GimpHistogramView*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpEnumComboBox = type { %struct._GimpIntComboBox }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpLayer = type opaque
%struct._PixelRegion = type opaque

@gimp_histogram_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpHistogramEditor\00", align 1
@gimp_histogram_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_histogram_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_histogram_editor_parent_class = internal global i8* null, align 8
@GimpHistogramEditor_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"active-layer-changed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"notify::frozen\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"alpha-changed\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Mean:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Std dev:\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Median:\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Pixels:\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Count:\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Percentile:\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Channel:\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"range-changed\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"notify::histogram-channel\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"width-chars\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_histogram_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_histogram_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_histogram_editor_class_intern_init to void (i8*, i8*)*), i32 248, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_histogram_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_histogram_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_histogram_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_histogram_editor_parent_class, align 8
  %1 = load i32, i32* @GimpHistogramEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHistogramEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHistogramEditorClass*
  call void @gimp_histogram_editor_class_init(%struct._GimpHistogramEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_init(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %gimp_histogram_editor_labels = alloca [6 x i8*], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = bitcast [6 x i8*]* %gimp_histogram_editor_labels to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 48, i32 16, i1 false)
  %1 = bitcast i8* %0 to [6 x i8*]*
  %2 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %2
  %3 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** %3
  %4 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8** %4
  %5 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8** %5
  %6 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8** %6
  %7 = getelementptr [6 x i8*], [6 x i8*]* %1, i32 0, i32 5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8** %7
  %8 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %8, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %9, i32 0, i32 2
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram, align 8
  %10 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %10, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram, align 8
  %11 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %11, i32 0, i32 5
  store i32 0, i32* %valid, align 4
  %12 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %12, i32 0, i32 4
  store i32 0, i32* %idle_id, align 4
  %call = call %struct._GtkWidget* @gimp_histogram_box_new()
  %13 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %13, i32 0, i32 7
  store %struct._GtkWidget* %call, %struct._GtkWidget** %box, align 8
  %14 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpHistogramEditor* %14 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_editor_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call1)
  %16 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  call void @gimp_editor_set_show_name(%struct._GimpEditor* %16, i32 1)
  %17 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box3 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %17, i32 0, i32 7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_histogram_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call4)
  %20 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpHistogramBox*
  %view6 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %20, i32 0, i32 1
  %21 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view6, align 8
  store %struct._GimpHistogramView* %21, %struct._GimpHistogramView** %view, align 8
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %hbox, align 8
  %22 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %23 = bitcast %struct._GimpHistogramEditor* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #4
  %call11 = call %struct._GtkWidget* @gtk_label_new(i8* %call10)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %label, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call12)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %33 = bitcast %struct._GimpHistogramView* %32 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %call15 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %menu, align 8
  %35 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %menu16 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %35, i32 0, i32 6
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %menu16, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_enum_combo_box_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call17)
  %38 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %39 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %menu19 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %39, i32 0, i32 6
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %menu19, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_int_combo_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call20)
  %42 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpIntComboBox*
  %43 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %44 = bitcast %struct._GimpHistogramEditor* %43 to i8*
  call void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox* %42, i32 (i32, i8*)* @gimp_histogram_menu_sensitivity, i8* %44, void (i8*)* null)
  %45 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %menu22 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %45, i32 0, i32 6
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %menu22, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_int_combo_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call23)
  %48 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpIntComboBox*
  %49 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %49, i32 0, i32 3
  %50 = load i32, i32* %channel, align 4
  %call25 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %48, i32 %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call26)
  %53 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %57 = bitcast %struct._GimpHistogramView* %56 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %call29 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %menu, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call30)
  %61 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %65 = bitcast %struct._GimpHistogramEditor* %64 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call32)
  %66 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %67 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box34 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %67, i32 0, i32 7
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %box34, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %68, i32 1, i32 1, i32 0)
  %69 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box35 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %69, i32 0, i32 7
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %box35, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_widget_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call36)
  %72 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %74 = bitcast %struct._GimpHistogramView* %73 to i8*
  %75 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %76 = bitcast %struct._GimpHistogramEditor* %75 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_info_update to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %78 = bitcast %struct._GimpHistogramView* %77 to i8*
  %79 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %80 = bitcast %struct._GimpHistogramEditor* %79 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_info_update to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 2)
  %81 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %82 = bitcast %struct._GimpHistogramView* %81 to i8*
  %83 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %84 = bitcast %struct._GimpHistogramEditor* %83 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpHistogramEditor*)* @gimp_histogram_view_expose to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 2)
  %call41 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %table, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call42)
  %87 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %87, i32 2)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call44)
  %90 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %90, i32 1, i32 6)
  %91 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %92 = bitcast %struct._GimpHistogramEditor* %91 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call46)
  %93 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %96 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %96, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4
  %div = sdiv i32 %97, 3
  %mul = mul nsw i32 %div, 2
  store i32 %mul, i32* %x, align 4
  %98 = load i32, i32* %i, align 4
  %rem = srem i32 %98, 3
  store i32 %rem, i32* %y, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom = sext i32 %99 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %gimp_histogram_editor_labels, i32 0, i64 %idxprom
  %100 = load i8*, i8** %arrayidx, align 8
  %call48 = call i8* @gettext(i8* %100) #4
  %call49 = call %struct._GtkWidget* @gtk_label_new(i8* %call48)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %label, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_label_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call50)
  %103 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %103, i32 4, i32 700, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_misc_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call52)
  %106 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %106, float 1.000000e+00, float 5.000000e-01)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call54)
  %109 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* %x, align 4
  %add = add nsw i32 %112, 1
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %y, align 4
  %add56 = add nsw i32 %114, 1
  call void @gtk_table_attach(%struct._GtkTable* %109, %struct._GtkWidget* %110, i32 %111, i32 %add, i32 %113, i32 %add56, i32 5, i32 4, i32 2, i32 2)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call57 = call i64 @gtk_label_get_type() #6
  %116 = load i32, i32* %i, align 4
  %cmp58 = icmp sgt i32 %116, 2
  %cond = select i1 %cmp58, i32 9, i32 5
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 %cond, i8* null)
  %117 = bitcast i8* %call59 to %struct._GtkWidget*
  store %struct._GtkWidget* %117, %struct._GtkWidget** %label, align 8
  %118 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %118 to i64
  %119 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %119, i32 0, i32 8
  %arrayidx61 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels, i32 0, i64 %idxprom60
  store %struct._GtkWidget* %117, %struct._GtkWidget** %arrayidx61, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %120 to i64
  %121 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels63 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %121, i32 0, i32 8
  %arrayidx64 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels63, i32 0, i64 %idxprom62
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx64, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_label_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call65)
  %124 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %124, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call67)
  %127 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %129 = load i32, i32* %x, align 4
  %add69 = add nsw i32 %129, 1
  %130 = load i32, i32* %x, align 4
  %add70 = add nsw i32 %130, 2
  %131 = load i32, i32* %y, align 4
  %132 = load i32, i32* %y, align 4
  %add71 = add nsw i32 %132, 1
  call void @gtk_table_attach(%struct._GtkTable* %127, %struct._GtkWidget* %128, i32 %add69, i32 %add70, i32 %131, i32 %add71, i32 4, i32 4, i32 2, i32 2)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_docked_iface_init(%struct._GimpDockedInterface* %docked_iface) #3 {
entry:
  %docked_iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %docked_iface, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %1 = bitcast %struct._GimpDockedInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %2, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %tobool = icmp ne %struct._GimpDockedInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_docked_interface_get_type() #6
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 2
  store void (%struct._GimpDocked*, %struct._GList*)* @gimp_histogram_editor_set_aux_info, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 3
  store %struct._GList* (%struct._GimpDocked*)* @gimp_histogram_editor_get_aux_info, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_histogram_editor_new() #3 {
entry:
  %call = call i64 @gimp_histogram_editor_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_class_init(%struct._GimpHistogramEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHistogramEditorClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpHistogramEditorClass* %klass, %struct._GimpHistogramEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpHistogramEditorClass*, %struct._GimpHistogramEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHistogramEditorClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %2, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %3 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %3, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_histogram_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_set_image(%struct._GimpImageEditor* %image_editor, %struct._GimpImage* %image) #3 {
entry:
  %image_editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpImageEditor* %image_editor, %struct._GimpImageEditor** %image_editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramEditor*
  store %struct._GimpHistogramEditor* %2, %struct._GimpHistogramEditor** %editor, align 8
  %3 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_histogram_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHistogramBox*
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %6, i32 0, i32 1
  %7 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  store %struct._GimpHistogramView* %7, %struct._GimpHistogramView** %view, align 8
  %8 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %8, i32 0, i32 2
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %tobool = icmp ne %struct._GimpImage* %9, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %idle_id = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %10, i32 0, i32 4
  %11 = load i32, i32* %idle_id, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %idle_id8 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %12, i32 0, i32 4
  %13 = load i32, i32* %idle_id8, align 4
  %call9 = call i32 @g_source_remove(i32 %13)
  %14 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %idle_id10 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %14, i32 0, i32 4
  store i32 0, i32* %idle_id10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %15 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image11 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image11, align 8
  %17 = bitcast %struct._GimpImage* %16 to i8*
  %18 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %19 = bitcast %struct._GimpHistogramEditor* %18 to i8*
  %call12 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_update to i8*), i8* %19)
  %20 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image13 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  %22 = bitcast %struct._GimpImage* %21 to i8*
  %23 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %24 = bitcast %struct._GimpHistogramEditor* %23 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpHistogramEditor*)* @gimp_histogram_editor_layer_changed to i8*), i8* %24)
  %25 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image15 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %25, i32 0, i32 2
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  %27 = bitcast %struct._GimpImage* %26 to i8*
  %28 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %29 = bitcast %struct._GimpHistogramEditor* %28 to i8*
  %call16 = call i32 @g_signal_handlers_disconnect_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_menu_update to i8*), i8* %29)
  %30 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %30, i32 0, i32 2
  %31 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool17 = icmp ne %struct._GimpHistogram* %31, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %32 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %histogram19 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %32, i32 0, i32 2
  %33 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram19, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %33)
  %34 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %histogram20 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %34, i32 0, i32 2
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram20, align 8
  %35 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  call void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView* %35, %struct._GimpHistogram* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %36 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %36, i32 0, i32 3
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool22 = icmp ne %struct._GimpHistogram* %37, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %38 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %bg_histogram24 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %38, i32 0, i32 3
  %39 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram24, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %39)
  %40 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %bg_histogram25 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %40, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram25, align 8
  %41 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  call void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %41, %struct._GimpHistogram* null)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %42 = load i8*, i8** @gimp_histogram_editor_parent_class, align 8
  %43 = bitcast i8* %42 to %struct._GTypeClass*
  %call28 = call i64 @gimp_image_editor_get_type() #6
  %call29 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %43, i64 %call28)
  %44 = bitcast %struct._GTypeClass* %call29 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %44, i32 0, i32 1
  %45 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %46 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %45(%struct._GimpImageEditor* %46, %struct._GimpImage* %47)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool30 = icmp ne %struct._GimpImage* %48, null
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.end.27
  %call32 = call %struct._GimpHistogram* @gimp_histogram_new()
  %49 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %histogram33 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %49, i32 0, i32 2
  store %struct._GimpHistogram* %call32, %struct._GimpHistogram** %histogram33, align 8
  %50 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %51 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %histogram34 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %51, i32 0, i32 2
  %52 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram34, align 8
  call void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView* %50, %struct._GimpHistogram* %52)
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %54 = bitcast %struct._GimpImage* %53 to i8*
  %55 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %56 = bitcast %struct._GimpHistogramEditor* %55 to i8*
  %call35 = call i64 @g_signal_connect_object(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_menu_update to void ()*), i8* %56, i32 2)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %58 = bitcast %struct._GimpImage* %57 to i8*
  %59 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %60 = bitcast %struct._GimpHistogramEditor* %59 to i8*
  %call36 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpHistogramEditor*)* @gimp_histogram_editor_layer_changed to void ()*), i8* %60, i32 0)
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = bitcast %struct._GimpImage* %61 to i8*
  %63 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %64 = bitcast %struct._GimpHistogramEditor* %63 to i8*
  %call37 = call i64 @g_signal_connect_object(i8* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_update to void ()*), i8* %64, i32 2)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %if.end.27
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %66 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  call void @gimp_histogram_editor_layer_changed(%struct._GimpImage* %65, %struct._GimpHistogramEditor* %66)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_box_get_type() #2

declare i32 @g_source_remove(i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_update(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 4
  %1 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %idle_id1 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %2, i32 0, i32 4
  %3 = load i32, i32* %idle_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpHistogramEditor* %4 to i8*
  %call2 = call i32 @g_timeout_add_full(i32 300, i32 200, i32 (i8*)* bitcast (i32 (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_idle_update to i32 (i8*)*), i8* %5, void (i8*)* null)
  %6 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %idle_id3 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %6, i32 0, i32 4
  store i32 %call2, i32* %idle_id3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_layer_changed(%struct._GimpImage* %image, %struct._GimpHistogramEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %2, i32 0, i32 3
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool1 = icmp ne %struct._GimpHistogram* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHistogramBox*
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %7, i32 0, i32 1
  %8 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  store %struct._GimpHistogramView* %8, %struct._GimpHistogramView** %view, align 8
  %9 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram5 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %9, i32 0, i32 3
  %10 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram5, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %10)
  %11 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram6 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %11, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram6, align 8
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  call void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %12, %struct._GimpHistogram* null)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %13 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable7 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable7, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to i8*
  %16 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %17 = bitcast %struct._GimpHistogramEditor* %16 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_name_update to i8*), i8* %17)
  %18 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable9 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable9, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to i8*
  %21 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpHistogramEditor* %21 to i8*
  %call10 = call i32 @g_signal_handlers_disconnect_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_menu_update to i8*), i8* %22)
  %23 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %23, i32 0, i32 1
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %26 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpHistogramEditor* %26 to i8*
  %call12 = call i32 @g_signal_handlers_disconnect_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_update to i8*), i8* %27)
  %28 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable13 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable13, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to i8*
  %31 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpHistogramEditor* %31 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpHistogramEditor*, %struct._GParamSpec*)* @gimp_histogram_editor_frozen_update to i8*), i8* %32)
  %33 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable15 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %33, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool17 = icmp ne %struct._GimpImage* %34, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call19 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %35)
  %36 = bitcast %struct._GimpLayer* %call19 to %struct._GimpDrawable*
  %37 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %37, i32 0, i32 1
  store %struct._GimpDrawable* %36, %struct._GimpDrawable** %drawable20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %38 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  call void @gimp_histogram_editor_menu_update(%struct._GimpHistogramEditor* %38)
  %39 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable22 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %39, i32 0, i32 1
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable22, align 8
  %tobool23 = icmp ne %struct._GimpDrawable* %40, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %41 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable25 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %41, i32 0, i32 1
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable25, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to i8*
  %44 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %45 = bitcast %struct._GimpHistogramEditor* %44 to i8*
  %call26 = call i64 @g_signal_connect_object(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*, %struct._GParamSpec*)* @gimp_histogram_editor_frozen_update to void ()*), i8* %45, i32 2)
  %46 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable27 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %46, i32 0, i32 1
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable27, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to i8*
  %49 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %50 = bitcast %struct._GimpHistogramEditor* %49 to i8*
  %call28 = call i64 @g_signal_connect_object(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_update to void ()*), i8* %50, i32 2)
  %51 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable29 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %51, i32 0, i32 1
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable29, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to i8*
  %54 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %55 = bitcast %struct._GimpHistogramEditor* %54 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_menu_update to void ()*), i8* %55, i32 2)
  %56 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable31 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %56, i32 0, i32 1
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable31, align 8
  %58 = bitcast %struct._GimpDrawable* %57 to i8*
  %59 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %60 = bitcast %struct._GimpHistogramEditor* %59 to i8*
  %call32 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramEditor*)* @gimp_histogram_editor_name_update to void ()*), i8* %60, i32 2)
  %61 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  call void @gimp_histogram_editor_update(%struct._GimpHistogramEditor* %61)
  br label %if.end.39

if.else:                                          ; preds = %if.end.21
  %62 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %62, i32 0, i32 2
  %63 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool33 = icmp ne %struct._GimpHistogram* %63, null
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.else
  %64 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %64, i32 0, i32 5
  store i32 0, i32* %valid, align 4
  %65 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box35 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %65, i32 0, i32 7
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %box35, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_widget_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call36)
  %68 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %68)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.24
  %69 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  call void @gimp_histogram_editor_info_update(%struct._GimpHistogramEditor* %69)
  %70 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  call void @gimp_histogram_editor_name_update(%struct._GimpHistogramEditor* %70)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_menu_update(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramBox*
  %view2 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %3, i32 0, i32 1
  %4 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view2, align 8
  store %struct._GimpHistogramView* %4, %struct._GimpHistogramView** %view, align 8
  %5 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %menu = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %6)
  %7 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %8 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %8, i32 0, i32 3
  %9 = load i32, i32* %channel, align 4
  %call3 = call i32 @gimp_histogram_editor_channel_valid(%struct._GimpHistogramEditor* %7, i32 %9)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %10, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

declare void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView*, %struct._GimpHistogram*) #1

declare void @gimp_histogram_view_set_background(%struct._GimpHistogramView*, %struct._GimpHistogram*) #1

declare %struct._GimpHistogram* @gimp_histogram_new() #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_editor_idle_update(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 4
  store i32 0, i32* %idle_id, align 4
  %1 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %1, i32 0, i32 5
  store i32 0, i32* %valid, align 4
  %2 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %2, i32 0, i32 7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  ret i32 0
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_name_update(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable1 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to i8*
  %call = call i8* @gimp_object_get_name(i8* %4)
  store i8* %call, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpHistogramEditor* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %8 = load i8*, i8** %name, align 8
  call void @gimp_editor_set_name(%struct._GimpEditor* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_frozen_update(%struct._GimpHistogramEditor* %editor, %struct._GParamSpec* %pspec) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramBox*
  %view2 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %3, i32 0, i32 1
  %4 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view2, align 8
  store %struct._GimpHistogramView* %4, %struct._GimpHistogramView** %view, align 8
  %5 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  %call5 = call i32 @gimp_viewable_preview_is_frozen(%struct._GimpViewable* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %9, i32 0, i32 3
  %10 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool6 = icmp ne %struct._GimpHistogram* %10, null
  br i1 %tobool6, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %12 = bitcast %struct._GimpHistogramEditor* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %call12 = call i32 @gimp_histogram_editor_validate(%struct._GimpHistogramEditor* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.11
  %15 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %call15 = call %struct._GimpHistogram* @gimp_histogram_duplicate(%struct._GimpHistogram* %16)
  %17 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram16 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %17, i32 0, i32 3
  store %struct._GimpHistogram* %call15, %struct._GimpHistogram** %bg_histogram16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.11
  %18 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %19 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram17 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %19, i32 0, i32 3
  %20 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram17, align 8
  call void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %18, %struct._GimpHistogram* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.25

if.else:                                          ; preds = %entry
  %21 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram19 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %21, i32 0, i32 3
  %22 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram19, align 8
  %tobool20 = icmp ne %struct._GimpHistogram* %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.else
  %23 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram22 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %23, i32 0, i32 3
  %24 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram22, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %24)
  %25 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %bg_histogram23 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %25, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram23, align 8
  %26 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  call void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %26, %struct._GimpHistogram* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.18
  ret void
}

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_info_update(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %hist = alloca %struct._GimpHistogram*, align 8
  %pixels = alloca double, align 8
  %count = alloca double, align 8
  %text = alloca [12 x i8], align 1
  %i = alloca i32, align 4
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramBox*
  %view2 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %3, i32 0, i32 1
  %4 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view2, align 8
  store %struct._GimpHistogramView* %4, %struct._GimpHistogramView** %view, align 8
  %5 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  store %struct._GimpHistogram* %6, %struct._GimpHistogram** %hist, align 8
  %7 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %tobool = icmp ne %struct._GimpHistogram* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %9 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %9, i32 0, i32 3
  %10 = load i32, i32* %channel, align 4
  %call3 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %8, i32 %10, i32 0, i32 255)
  store double %call3, double* %pixels, align 8
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel4 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %12, i32 0, i32 3
  %13 = load i32, i32* %channel4, align 4
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 5
  %15 = load i32, i32* %start, align 4
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %16, i32 0, i32 6
  %17 = load i32, i32* %end, align 4
  %call5 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %11, i32 %13, i32 %15, i32 %17)
  store double %call5, double* %count, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %18 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %19 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel6 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %19, i32 0, i32 3
  %20 = load i32, i32* %channel6, align 4
  %21 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start7 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %21, i32 0, i32 5
  %22 = load i32, i32* %start7, align 4
  %23 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end8 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %23, i32 0, i32 6
  %24 = load i32, i32* %end8, align 4
  %call9 = call double @gimp_histogram_get_mean(%struct._GimpHistogram* %18, i32 %20, i32 %22, i32 %24)
  %call10 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double %call9)
  %25 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %25, i32 0, i32 8
  %arrayidx = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels, i32 0, i64 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %arraydecay13 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %28, i8* %arraydecay13)
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %29 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %30 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel15 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %30, i32 0, i32 3
  %31 = load i32, i32* %channel15, align 4
  %32 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start16 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %32, i32 0, i32 5
  %33 = load i32, i32* %start16, align 4
  %34 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end17 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %34, i32 0, i32 6
  %35 = load i32, i32* %end17, align 4
  %call18 = call double @gimp_histogram_get_std_dev(%struct._GimpHistogram* %29, i32 %31, i32 %33, i32 %35)
  %call19 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay14, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double %call18)
  %36 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels20 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %36, i32 0, i32 8
  %arrayidx21 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels20, i32 0, i64 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx21, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_label_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call22)
  %39 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkLabel*
  %arraydecay24 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %39, i8* %arraydecay24)
  %arraydecay25 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %40 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist, align 8
  %41 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel26 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %41, i32 0, i32 3
  %42 = load i32, i32* %channel26, align 4
  %43 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start27 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %43, i32 0, i32 5
  %44 = load i32, i32* %start27, align 4
  %45 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end28 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %45, i32 0, i32 6
  %46 = load i32, i32* %end28, align 4
  %call29 = call i32 @gimp_histogram_get_median(%struct._GimpHistogram* %40, i32 %42, i32 %44, i32 %46)
  %conv = sitofp i32 %call29 to double
  %call30 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay25, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double %conv)
  %47 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels31 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %47, i32 0, i32 8
  %arrayidx32 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels31, i32 0, i64 2
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx32, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_label_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkLabel*
  %arraydecay35 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %50, i8* %arraydecay35)
  %arraydecay36 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %51 = load double, double* %pixels, align 8
  %conv37 = fptosi double %51 to i32
  %call38 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay36, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %conv37)
  %52 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels39 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %52, i32 0, i32 8
  %arrayidx40 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels39, i32 0, i64 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx40, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_label_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call41)
  %55 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkLabel*
  %arraydecay43 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %55, i8* %arraydecay43)
  %arraydecay44 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %56 = load double, double* %count, align 8
  %conv45 = fptosi double %56 to i32
  %call46 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay44, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %conv45)
  %57 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels47 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %57, i32 0, i32 8
  %arrayidx48 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels47, i32 0, i64 4
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx48, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_label_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call49)
  %60 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkLabel*
  %arraydecay51 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %60, i8* %arraydecay51)
  %arraydecay52 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  %61 = load double, double* %pixels, align 8
  %cmp = fcmp ogt double %61, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %62 = load double, double* %count, align 8
  %mul = fmul double 1.000000e+02, %62
  %63 = load double, double* %pixels, align 8
  %div = fdiv double %mul, %63
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %cond.false ]
  %call54 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay52, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double %cond)
  %64 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels55 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %64, i32 0, i32 8
  %arrayidx56 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels55, i32 0, i64 5
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx56, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_label_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call57)
  %67 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkLabel*
  %arraydecay59 = getelementptr inbounds [12 x i8], [12 x i8]* %text, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %67, i8* %arraydecay59)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %68 = load i32, i32* %i, align 4
  %cmp60 = icmp slt i32 %68, 6
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %labels62 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %70, i32 0, i32 8
  %arrayidx63 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %labels62, i32 0, i64 %idxprom
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx63, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_label_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call64)
  %73 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %73, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  ret void
}

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_editor_set_name(%struct._GimpEditor*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i32 @gimp_viewable_preview_is_frozen(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_editor_validate(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 5
  %1 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool1 = icmp ne %struct._GimpHistogram* %3, null
  br i1 %tobool1, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %8 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram5 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %8, i32 0, i32 2
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram5, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %7, %struct._GimpHistogram* %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %histogram6 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram6, align 8
  call void @gimp_histogram_calculate(%struct._GimpHistogram* %11, %struct._PixelRegion* null, %struct._PixelRegion* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  call void @gimp_histogram_editor_info_update(%struct._GimpHistogramEditor* %12)
  %13 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid7 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %13, i32 0, i32 5
  store i32 1, i32* %valid7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %14 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %valid9 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %14, i32 0, i32 5
  %15 = load i32, i32* %valid9, align 4
  ret i32 %15
}

declare %struct._GimpHistogram* @gimp_histogram_duplicate(%struct._GimpHistogram*) #1

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #1

declare void @gimp_histogram_calculate(%struct._GimpHistogram*, %struct._PixelRegion*, %struct._PixelRegion*) #1

declare double @gimp_histogram_get_count(%struct._GimpHistogram*, i32, i32, i32) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare double @gimp_histogram_get_mean(%struct._GimpHistogram*, i32, i32, i32) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare double @gimp_histogram_get_std_dev(%struct._GimpHistogram*, i32, i32, i32) #1

declare i32 @gimp_histogram_get_median(%struct._GimpHistogram*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_editor_channel_valid(%struct._GimpHistogramEditor* %editor, i32 %channel) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  %channel.addr = alloca i32, align 4
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %channel.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.then, %if.then, %if.then, %if.then
  %3 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %call = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %4)
  store i32 %call, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.then
  %5 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %call5 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %6)
  store i32 %call5, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.3, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @gimp_histogram_view_set_channel(%struct._GimpHistogramView*, i32) #1

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GtkWidget* @gimp_histogram_box_new() #1

declare void @gimp_editor_set_show_name(%struct._GimpEditor*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #2

declare void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox*, i32 (i32, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_menu_sensitivity(i32 %value, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpHistogramEditor*, align 8
  %channel = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramEditor*
  store %struct._GimpHistogramEditor* %2, %struct._GimpHistogramEditor** %editor, align 8
  %3 = load i32, i32* %value.addr, align 4
  store i32 %3, i32* %channel, align 4
  %4 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %drawable = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %7 = load i32, i32* %channel, align 4
  %call2 = call i32 @gimp_histogram_editor_channel_valid(%struct._GimpHistogramEditor* %6, i32 %7)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_view_expose(%struct._GimpHistogramEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpHistogramEditor*, align 8
  store %struct._GimpHistogramEditor* %editor, %struct._GimpHistogramEditor** %editor.addr, align 8
  %0 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor.addr, align 8
  %call = call i32 @gimp_histogram_editor_validate(%struct._GimpHistogramEditor* %0)
  ret i32 0
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_editor_set_aux_info(%struct._GimpDocked* %docked, %struct._GList* %aux_info) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %editor = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramEditor*
  store %struct._GimpHistogramEditor* %2, %struct._GimpHistogramEditor** %editor, align 8
  %3 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_histogram_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHistogramBox*
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %6, i32 0, i32 1
  %7 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  store %struct._GimpHistogramView* %7, %struct._GimpHistogramView** %view, align 8
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 2
  %9 = load void (%struct._GimpDocked*, %struct._GList*)*, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %10 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %11 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %9(%struct._GimpDocked* %10, %struct._GList* %11)
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %13 = bitcast %struct._GimpHistogramView* %12 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %15 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void (%struct._GObject*, %struct._GList*, ...) @gimp_session_info_aux_set_props(%struct._GObject* %14, %struct._GList* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_histogram_editor_get_aux_info(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpHistogramEditor*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %aux_info = alloca %struct._GList*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramEditor*
  store %struct._GimpHistogramEditor* %2, %struct._GimpHistogramEditor** %editor, align 8
  %3 = load %struct._GimpHistogramEditor*, %struct._GimpHistogramEditor** %editor, align 8
  %box = getelementptr inbounds %struct._GimpHistogramEditor, %struct._GimpHistogramEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_histogram_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHistogramBox*
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %6, i32 0, i32 1
  %7 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  store %struct._GimpHistogramView* %7, %struct._GimpHistogramView** %view, align 8
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 3
  %9 = load %struct._GList* (%struct._GimpDocked*)*, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %10 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %call5 = call %struct._GList* %9(%struct._GimpDocked* %10)
  store %struct._GList* %call5, %struct._GList** %aux_info, align 8
  %11 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %13 = bitcast %struct._GimpHistogramView* %12 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call %struct._GList* (%struct._GObject*, ...) @gimp_session_info_aux_new_from_props(%struct._GObject* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %call8 = call %struct._GList* @g_list_concat(%struct._GList* %11, %struct._GList* %call7)
  ret %struct._GList* %call8
}

declare void @gimp_session_info_aux_set_props(%struct._GObject*, %struct._GList*, ...) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @gimp_session_info_aux_new_from_props(%struct._GObject*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
