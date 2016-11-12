; ModuleID = './app/widgets/gimpcurveview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCurveViewClass = type { %struct._GimpHistogramViewClass, void (%struct._GimpCurveView*)*, void (%struct._GimpCurveView*)*, void (%struct._GimpCurveView*)* }
%struct._GimpHistogramViewClass = type { %struct._GtkDrawingAreaClass, void (%struct._GimpHistogramView*, i32, i32)* }
%struct._GtkDrawingAreaClass = type { %struct._GtkWidgetClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHistogram = type opaque
%struct._GimpCurveView = type { %struct._GimpHistogramView, %struct._Gimp*, %struct._GimpCurve*, %struct._GimpRGB*, %struct._GList*, i32, i32, i32, i32, double, double, double, double, i32, i32, double, %struct._PangoLayout*, double, double, double, double, double, double, %struct._PangoLayout*, %struct._PangoRectangle, i8*, i8* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpVector2 = type { double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._PangoLayout = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.BGCurve = type { %struct._GimpCurve*, %struct._GimpRGB, i32 }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._cairo = type opaque
%struct._GimpConfig = type opaque
%struct._GdkCursor = type { i32, i32 }

@gimp_curve_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpCurveView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_curve_view_set_curve = private unnamed_addr constant [26 x i8] c"gimp_curve_view_set_curve\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CURVE_VIEW (view)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"curve == NULL || GIMP_IS_CURVE (curve)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@__func__.gimp_curve_view_get_curve = private unnamed_addr constant [26 x i8] c"gimp_curve_view_get_curve\00", align 1
@__func__.gimp_curve_view_add_background = private unnamed_addr constant [31 x i8] c"gimp_curve_view_add_background\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CURVE (curve)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"curve != bg->curve\00", align 1
@__func__.gimp_curve_view_remove_background = private unnamed_addr constant [34 x i8] c"gimp_curve_view_remove_background\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimpcurveview.c\00", align 1
@__func__.gimp_curve_view_remove_all_backgrounds = private unnamed_addr constant [39 x i8] c"gimp_curve_view_remove_all_backgrounds\00", align 1
@__func__.gimp_curve_view_set_selected = private unnamed_addr constant [29 x i8] c"gimp_curve_view_set_selected\00", align 1
@__func__.gimp_curve_view_set_range_x = private unnamed_addr constant [28 x i8] c"gimp_curve_view_set_range_x\00", align 1
@__func__.gimp_curve_view_set_range_y = private unnamed_addr constant [28 x i8] c"gimp_curve_view_set_range_y\00", align 1
@__func__.gimp_curve_view_set_xpos = private unnamed_addr constant [25 x i8] c"gimp_curve_view_set_xpos\00", align 1
@__func__.gimp_curve_view_set_x_axis_label = private unnamed_addr constant [33 x i8] c"gimp_curve_view_set_x_axis_label\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"x-axis-label\00", align 1
@__func__.gimp_curve_view_set_y_axis_label = private unnamed_addr constant [33 x i8] c"gimp_curve_view_set_y_axis_label\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"y-axis-label\00", align 1
@gimp_curve_view_parent_class = internal global i8* null, align 8
@GimpCurveView_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"base-line\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"grid-rows\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"grid-columns\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"cut-clipboard\00", align 1
@curve_view_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"copy-clipboard\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"paste-clipboard\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"x:%d\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"x:888 y:888\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"x:0.888 y:0.888\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"x:%3d y:%3d\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"x:%0.3f y:%0.3f\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.gimp_curve_view_cut_clipboard = private unnamed_addr constant [30 x i8] c"gimp_curve_view_cut_clipboard\00", align 1
@__func__.gimp_curve_view_copy_clipboard = private unnamed_addr constant [31 x i8] c"gimp_curve_view_copy_clipboard\00", align 1
@__func__.gimp_curve_view_paste_clipboard = private unnamed_addr constant [32 x i8] c"gimp_curve_view_paste_clipboard\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_curve_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_curve_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_curve_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_histogram_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 784, void (i8*, i8*)* bitcast (void (i8*)* @gimp_curve_view_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCurveView*)* @gimp_curve_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_curve_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_curve_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_curve_view_parent_class, align 8
  %1 = load i32, i32* @GimpCurveView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCurveView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCurveViewClass*
  call void @gimp_curve_view_class_init(%struct._GimpCurveViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_init(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 2
  store %struct._GimpCurve* null, %struct._GimpCurve** %curve, align 8
  %1 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %selected = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %1, i32 0, i32 8
  store i32 0, i32* %selected, align 4
  %2 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %last_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %2, i32 0, i32 9
  store double 0.000000e+00, double* %last_x, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %last_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 10
  store double 0.000000e+00, double* %last_y, align 8
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_type = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %4, i32 0, i32 14
  store i32 -1, i32* %cursor_type, align 4
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %xpos = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 15
  store double -1.000000e+00, double* %xpos, align 8
  %6 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %6, i32 0, i32 21
  store double -1.000000e+00, double* %cursor_x, align 8
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %7, i32 0, i32 22
  store double -1.000000e+00, double* %cursor_y, align 8
  %8 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_x_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %8, i32 0, i32 17
  store double 0.000000e+00, double* %range_x_min, align 8
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_x_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %9, i32 0, i32 18
  store double 1.000000e+00, double* %range_x_max, align 8
  %10 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_y_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %10, i32 0, i32 19
  store double 0.000000e+00, double* %range_y_min, align 8
  %11 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_y_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %11, i32 0, i32 20
  store double 1.000000e+00, double* %range_y_max, align 8
  %12 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %x_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %12, i32 0, i32 25
  store i8* null, i8** %x_axis_label, align 8
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %y_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 26
  store i8* null, i8** %y_axis_label, align 8
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %15 = bitcast %struct._GimpCurveView* %14 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call)
  %16 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %16, i32 1)
  %17 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %18 = bitcast %struct._GimpCurveView* %17 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call2)
  %19 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %19, i32 10020)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_curve_view_new() #3 {
entry:
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_curve(%struct._GimpCurveView* %view, %struct._GimpCurve* %curve, %struct._GimpRGB* %color) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_curve_view_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %cmp12 = icmp eq %struct._GimpCurve* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %15 = bitcast %struct._GimpCurve* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_curve_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_curve_view_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve40 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %27, i32 0, i32 2
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve40, align 8
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %cmp41 = icmp eq %struct._GimpCurve* %28, %29
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  br label %return

if.end.43:                                        ; preds = %do.end.39
  %30 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve44 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %30, i32 0, i32 2
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve44, align 8
  %tobool45 = icmp ne %struct._GimpCurve* %31, null
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.43
  %32 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve47 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %32, i32 0, i32 2
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve47, align 8
  %34 = bitcast %struct._GimpCurve* %33 to i8*
  %35 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %36 = bitcast %struct._GimpCurveView* %35 to i8*
  %call48 = call i32 @g_signal_handlers_disconnect_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCurve*, %struct._GimpCurveView*)* @gimp_curve_view_curve_dirty to i8*), i8* %36)
  %37 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve49 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %37, i32 0, i32 2
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %curve49, align 8
  %39 = bitcast %struct._GimpCurve* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.end.43
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %41 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve51 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %41, i32 0, i32 2
  store %struct._GimpCurve* %40, %struct._GimpCurve** %curve51, align 8
  %42 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve52 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %42, i32 0, i32 2
  %43 = load %struct._GimpCurve*, %struct._GimpCurve** %curve52, align 8
  %tobool53 = icmp ne %struct._GimpCurve* %43, null
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.50
  %44 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve55 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %44, i32 0, i32 2
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %curve55, align 8
  %46 = bitcast %struct._GimpCurve* %45 to i8*
  %call56 = call i8* @g_object_ref(i8* %46)
  %47 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve57 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %47, i32 0, i32 2
  %48 = load %struct._GimpCurve*, %struct._GimpCurve** %curve57, align 8
  %49 = bitcast %struct._GimpCurve* %48 to i8*
  %50 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %51 = bitcast %struct._GimpCurveView* %50 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCurve*, %struct._GimpCurveView*)* @gimp_curve_view_curve_dirty to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.end.50
  %52 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve_color = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %52, i32 0, i32 3
  %53 = load %struct._GimpRGB*, %struct._GimpRGB** %curve_color, align 8
  %tobool60 = icmp ne %struct._GimpRGB* %53, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %54 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve_color62 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %54, i32 0, i32 3
  %55 = load %struct._GimpRGB*, %struct._GimpRGB** %curve_color62, align 8
  %56 = bitcast %struct._GimpRGB* %55 to i8*
  call void @g_free(i8* %56)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  %57 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool64 = icmp ne %struct._GimpRGB* %57, null
  br i1 %tobool64, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %if.end.63
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %59 = bitcast %struct._GimpRGB* %58 to i8*
  %call66 = call noalias i8* @g_memdup(i8* %59, i32 32)
  %60 = bitcast i8* %call66 to %struct._GimpRGB*
  %61 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve_color67 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %61, i32 0, i32 3
  store %struct._GimpRGB* %60, %struct._GimpRGB** %curve_color67, align 8
  br label %if.end.70

if.else.68:                                       ; preds = %if.end.63
  %62 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve_color69 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %62, i32 0, i32 3
  store %struct._GimpRGB* null, %struct._GimpRGB** %curve_color69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.65
  %63 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %64 = bitcast %struct._GimpCurveView* %63 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_widget_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call71)
  %65 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %65)
  br label %return

return:                                           ; preds = %if.end.70, %if.then.42, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_curve_dirty(%struct._GimpCurve* %curve, %struct._GimpCurveView* %view) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %view.addr = alloca %struct._GimpCurveView*, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %2)
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpCurve* @gimp_curve_view_get_curve(%struct._GimpCurveView* %view) #3 {
entry:
  %retval = alloca %struct._GimpCurve*, align 8
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_curve_view_get_curve, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 2
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  store %struct._GimpCurve* %14, %struct._GimpCurve** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %retval
  ret %struct._GimpCurve* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_add_background(%struct._GimpCurveView* %view, %struct._GimpCurve* %curve, %struct._GimpRGB* %color) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %list = alloca %struct._GList*, align 8
  %bg = alloca %struct.BGCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_curve_view_add_background, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %14 = bitcast %struct._GimpCurve* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_curve_view_add_background, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %26, i32 0, i32 4
  %27 = load %struct._GList*, %struct._GList** %bg_curves, align 8
  store %struct._GList* %27, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.38
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %28, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct.BGCurve*
  store %struct.BGCurve* %31, %struct.BGCurve** %bg, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %for.body
  %32 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %33 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve41 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %33, i32 0, i32 0
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve41, align 8
  %cmp42 = icmp ne %struct._GimpCurve* %32, %34
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_curve_view_add_background, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %do.end.46
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %35, null
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call48 = call noalias i8* @g_slice_alloc0(i64 48)
  %38 = bitcast i8* %call48 to %struct.BGCurve*
  store %struct.BGCurve* %38, %struct.BGCurve** %bg, align 8
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %40 = bitcast %struct._GimpCurve* %39 to i8*
  %call49 = call i8* @g_object_ref(i8* %40)
  %41 = bitcast i8* %call49 to %struct._GimpCurve*
  %42 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve50 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %42, i32 0, i32 0
  store %struct._GimpCurve* %41, %struct._GimpCurve** %curve50, align 8
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool51 = icmp ne %struct._GimpRGB* %43, null
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.end
  %44 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color53 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %44, i32 0, i32 1
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %46 = bitcast %struct._GimpRGB* %color53 to i8*
  %47 = bitcast %struct._GimpRGB* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  %48 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color_set = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %48, i32 0, i32 2
  store i32 1, i32* %color_set, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.end
  %49 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve55 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %49, i32 0, i32 0
  %50 = load %struct._GimpCurve*, %struct._GimpCurve** %curve55, align 8
  %51 = bitcast %struct._GimpCurve* %50 to i8*
  %52 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %53 = bitcast %struct._GimpCurveView* %52 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCurve*, %struct._GimpCurveView*)* @gimp_curve_view_curve_dirty to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves57 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %54, i32 0, i32 4
  %55 = load %struct._GList*, %struct._GList** %bg_curves57, align 8
  %56 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %57 = bitcast %struct.BGCurve* %56 to i8*
  %call58 = call %struct._GList* @g_list_append(%struct._GList* %55, i8* %57)
  %58 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves59 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %58, i32 0, i32 4
  store %struct._GList* %call58, %struct._GList** %bg_curves59, align 8
  %59 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %60 = bitcast %struct._GimpCurveView* %59 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_widget_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call60)
  %61 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %61)
  br label %return

return:                                           ; preds = %if.end.54, %if.else.44, %if.else.36, %if.else.9
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_remove_background(%struct._GimpCurveView* %view, %struct._GimpCurve* %curve) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %bg = alloca %struct.BGCurve*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_curve_view_remove_background, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.60

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %14 = bitcast %struct._GimpCurve* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_curve_view_remove_background, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.60

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %26, i32 0, i32 4
  %27 = load %struct._GList*, %struct._GList** %bg_curves, align 8
  store %struct._GList* %27, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.38
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %28, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct.BGCurve*
  store %struct.BGCurve* %31, %struct.BGCurve** %bg, align 8
  %32 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve41 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %32, i32 0, i32 0
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve41, align 8
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %cmp42 = icmp eq %struct._GimpCurve* %33, %34
  br i1 %cmp42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %for.body
  %35 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve44 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %35, i32 0, i32 0
  %36 = load %struct._GimpCurve*, %struct._GimpCurve** %curve44, align 8
  %37 = bitcast %struct._GimpCurve* %36 to i8*
  %38 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %39 = bitcast %struct._GimpCurveView* %38 to i8*
  %call45 = call i32 @g_signal_handlers_disconnect_matched(i8* %37, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCurve*, %struct._GimpCurveView*)* @gimp_curve_view_curve_dirty to i8*), i8* %39)
  %40 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve46 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %40, i32 0, i32 0
  %41 = load %struct._GimpCurve*, %struct._GimpCurve** %curve46, align 8
  %42 = bitcast %struct._GimpCurve* %41 to i8*
  call void @g_object_unref(i8* %42)
  %43 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves47 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %43, i32 0, i32 4
  %44 = load %struct._GList*, %struct._GList** %bg_curves47, align 8
  %45 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %46 = bitcast %struct.BGCurve* %45 to i8*
  %call48 = call %struct._GList* @g_list_remove(%struct._GList* %44, i8* %46)
  %47 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves49 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %47, i32 0, i32 4
  store %struct._GList* %call48, %struct._GList** %bg_curves49, align 8
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.43
  %48 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %49 = bitcast %struct.BGCurve* %48 to i8*
  call void @g_slice_free1(i64 48, i8* %49)
  br label %do.end.51

do.end.51:                                        ; preds = %do.body.50
  %50 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %51 = bitcast %struct._GimpCurveView* %50 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_widget_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call52)
  %52 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %52)
  br label %for.end

if.end.54:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool55 = icmp ne %struct._GList* %53, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 1
  %55 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %55, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end.51, %for.cond
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool56 = icmp ne %struct._GList* %56, null
  br i1 %tobool56, label %if.end.60, label %if.then.57

if.then.57:                                       ; preds = %for.end
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 1305, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_curve_view_remove_background, i32 0, i32 0))
  br label %if.end.60

do.end.59:                                        ; No predecessors!
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.9, %if.else.36, %do.body.58, %do.end.59, %for.end
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bg = alloca %struct.BGCurve*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_curve_view_remove_all_backgrounds, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %do.end.20, %do.end
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 4
  %14 = load %struct._GList*, %struct._GList** %bg_curves, align 8
  %tobool11 = icmp ne %struct._GList* %14, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves13 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 4
  %16 = load %struct._GList*, %struct._GList** %bg_curves13, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct.BGCurve*
  store %struct.BGCurve* %18, %struct.BGCurve** %bg, align 8
  %19 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %19, i32 0, i32 0
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %21 = bitcast %struct._GimpCurve* %20 to i8*
  %22 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %23 = bitcast %struct._GimpCurveView* %22 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCurve*, %struct._GimpCurveView*)* @gimp_curve_view_curve_dirty to i8*), i8* %23)
  %24 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve15 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %24, i32 0, i32 0
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %curve15, align 8
  %26 = bitcast %struct._GimpCurve* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves16 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %27, i32 0, i32 4
  %28 = load %struct._GList*, %struct._GList** %bg_curves16, align 8
  %29 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %30 = bitcast %struct.BGCurve* %29 to i8*
  %call17 = call %struct._GList* @g_list_remove(%struct._GList* %28, i8* %30)
  %31 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %bg_curves18 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %31, i32 0, i32 4
  store %struct._GList* %call17, %struct._GList** %bg_curves18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %while.body
  %32 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %33 = bitcast %struct.BGCurve* %32 to i8*
  call void @g_slice_free1(i64 48, i8* %33)
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %35 = bitcast %struct._GimpCurveView* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %36)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_selected(%struct._GimpCurveView* %view, i32 %selected) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %selected.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_curve_view_set_selected, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %selected.addr, align 4
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %selected11 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 8
  store i32 %13, i32* %selected11, align 4
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %16 = bitcast %struct._GimpCurveView* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_range_x(%struct._GimpCurveView* %view, double %min, double %max) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_curve_view_set_range_x, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %min.addr, align 8
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_x_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 17
  store double %13, double* %range_x_min, align 8
  %15 = load double, double* %max.addr, align 8
  %16 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_x_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %16, i32 0, i32 18
  store double %15, double* %range_x_max, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_range_y(%struct._GimpCurveView* %view, double %min, double %max) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_curve_view_set_range_y, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %min.addr, align 8
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_y_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 19
  store double %13, double* %range_y_min, align 8
  %15 = load double, double* %max.addr, align 8
  %16 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %range_y_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %16, i32 0, i32 20
  store double %15, double* %range_y_max, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_xpos(%struct._GimpCurveView* %view, double %x) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %x.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store double %x, double* %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_curve_view_set_xpos, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %x.addr, align 8
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %xpos = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 15
  store double %13, double* %xpos, align 8
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %16 = bitcast %struct._GimpCurveView* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_x_axis_label(%struct._GimpCurveView* %view, i8* %label) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %label.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_curve_view_set_x_axis_label, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %x_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 25
  %14 = load i8*, i8** %x_axis_label, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %x_axis_label13 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 25
  %16 = load i8*, i8** %x_axis_label13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %label.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %x_axis_label16 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %18, i32 0, i32 25
  store i8* %call15, i8** %x_axis_label16, align 8
  %19 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %20 = bitcast %struct._GimpCurveView* %19 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %22 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %23 = bitcast %struct._GimpCurveView* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.9
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_view_set_y_axis_label(%struct._GimpCurveView* %view, i8* %label) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %label.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %1 = bitcast %struct._GimpCurveView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_curve_view_set_y_axis_label, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %y_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 26
  %14 = load i8*, i8** %y_axis_label, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %y_axis_label13 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 26
  %16 = load i8*, i8** %y_axis_label13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %label.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %y_axis_label16 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %18, i32 0, i32 26
  store i8* %call15, i8** %y_axis_label16, align 8
  %19 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %20 = bitcast %struct._GimpCurveView* %19 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %22 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %23 = bitcast %struct._GimpCurveView* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_class_init(%struct._GimpCurveViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCurveViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpCurveViewClass* %klass, %struct._GimpCurveViewClass** %klass.addr, align 8
  %0 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCurveViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCurveViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_curve_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_curve_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curve_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curve_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_curve_view_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_curve_view_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_curve_view_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_curve_view_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_curve_view_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %leave_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 35
  store i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @gimp_curve_view_leave_notify, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %leave_notify_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 32
  store i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_curve_view_key_press, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %17 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %cut_clipboard = getelementptr inbounds %struct._GimpCurveViewClass, %struct._GimpCurveViewClass* %17, i32 0, i32 1
  store void (%struct._GimpCurveView*)* @gimp_curve_view_cut_clipboard, void (%struct._GimpCurveView*)** %cut_clipboard, align 8
  %18 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %copy_clipboard = getelementptr inbounds %struct._GimpCurveViewClass, %struct._GimpCurveViewClass* %18, i32 0, i32 2
  store void (%struct._GimpCurveView*)* @gimp_curve_view_copy_clipboard, void (%struct._GimpCurveView*)** %copy_clipboard, align 8
  %19 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %paste_clipboard = getelementptr inbounds %struct._GimpCurveViewClass, %struct._GimpCurveViewClass* %19, i32 0, i32 3
  store void (%struct._GimpCurveView*)* @gimp_curve_view_paste_clipboard, void (%struct._GimpCurveView*)** %paste_clipboard, align 8
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 1, %struct._GParamSpec* %call4)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 2, %struct._GParamSpec* %call5)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i32 0, i32 100, i32 8, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 3, %struct._GParamSpec* %call6)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 0, i32 100, i32 8, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 4, %struct._GParamSpec* %call7)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 5, %struct._GParamSpec* %call8)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 6, %struct._GParamSpec* %call9)
  %26 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %27 = bitcast %struct._GimpCurveViewClass* %26 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 %28, i32 34, i32 760, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call10, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @curve_view_signals, i32 0, i64 0), align 4
  %29 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %30 = bitcast %struct._GimpCurveViewClass* %29 to %struct._GTypeClass*
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type11, align 8
  %call12 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i64 %31, i32 34, i32 768, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call12, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @curve_view_signals, i32 0, i64 1), align 4
  %32 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %33 = bitcast %struct._GimpCurveViewClass* %32 to %struct._GTypeClass*
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type13, align 8
  %call14 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i64 %34, i32 34, i32 776, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call14, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @curve_view_signals, i32 0, i64 2), align 4
  %35 = load %struct._GimpCurveViewClass*, %struct._GimpCurveViewClass** %klass.addr, align 8
  %36 = bitcast %struct._GimpCurveViewClass* %35 to i8*
  %call15 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %36)
  store %struct._GtkBindingSet* %call15, %struct._GtkBindingSet** %binding_set, align 8
  %37 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %37, i32 120, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 0)
  %38 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %38, i32 99, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 0)
  %39 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %39, i32 118, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 0)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 16
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout2 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 16
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout2, align 8
  %7 = bitcast %struct._PangoLayout* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout3 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %8, i32 0, i32 16
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %9, i32 0, i32 23
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout, align 8
  %tobool4 = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout6 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %11, i32 0, i32 23
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout6, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout7 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 23
  store %struct._PangoLayout* null, %struct._PangoLayout** %cursor_layout7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 25
  %16 = load i8*, i8** %x_axis_label, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label11 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %17, i32 0, i32 25
  %18 = load i8*, i8** %x_axis_label11, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label12 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %19, i32 0, i32 25
  store i8* null, i8** %x_axis_label12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %20 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %20, i32 0, i32 26
  %21 = load i8*, i8** %y_axis_label, align 8
  %tobool14 = icmp ne i8* %21, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label16 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %22, i32 0, i32 26
  %23 = load i8*, i8** %y_axis_label16, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label17 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %24, i32 0, i32 26
  store i8* null, i8** %y_axis_label17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %25 = load i8*, i8** @gimp_curve_view_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 80)
  %27 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %27, i32 0, i32 6
  %28 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %28(%struct._GObject* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @gimp_curve_view_set_curve(%struct._GimpCurveView* %3, %struct._GimpCurve* null, %struct._GimpRGB* null)
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %bg_curves = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %4, i32 0, i32 4
  %5 = load %struct._GList*, %struct._GList** %bg_curves, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_curve_view_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 2, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %gimp = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %7)
  %8 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grid_rows = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %8, i32 0, i32 6
  store i32 %call4, i32* %grid_rows, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %9)
  %10 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grid_columns = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %10, i32 0, i32 7
  store i32 %call6, i32* %grid_columns, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  %12 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %draw_base_line = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %12, i32 0, i32 5
  store i32 %call8, i32* %draw_base_line, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_string(%struct._GValue* %14)
  call void @gimp_curve_view_set_x_axis_label(%struct._GimpCurveView* %13, i8* %call10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_get_string(%struct._GValue* %16)
  call void @gimp_curve_view_set_y_axis_label(%struct._GimpCurveView* %15, i8* %call12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %20, i8* %22, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %gimp = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grid_rows = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %9, i32 0, i32 6
  %10 = load i32, i32* %grid_rows, align 4
  call void @g_value_set_int(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grid_columns = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %12, i32 0, i32 7
  %13 = load i32, i32* %grid_columns, align 4
  call void @g_value_set_int(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %draw_base_line = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 5
  %16 = load i32, i32* %draw_base_line, align 4
  call void @g_value_set_boolean(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %18, i32 0, i32 25
  %19 = load i8*, i8** %x_axis_label, align 8
  call void @g_value_set_string(%struct._GValue* %17, i8* %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %21, i32 0, i32 26
  %22 = load i8*, i8** %y_axis_label, align 8
  call void @g_value_set_string(%struct._GValue* %20, i8* %22)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %23, %struct._GObject** %_glib__object, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %24, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = load i32, i32* %property_id.addr, align 4
  store i32 %25, i32* %_glib__property_id, align 4
  %26 = load i32, i32* %_glib__property_id, align 4
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %32)
  %33 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %36)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %26, i8* %28, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load i8*, i8** @gimp_curve_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %9, i32 0, i32 16
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout4 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %11, i32 0, i32 16
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout5 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 16
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %15, i32 0, i32 23
  %16 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout, align 8
  %tobool6 = icmp ne %struct._PangoLayout* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %17 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout8 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %17, i32 0, i32 23
  %18 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout8, align 8
  %19 = bitcast %struct._PangoLayout* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout9 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %20, i32 0, i32 23
  store %struct._PangoLayout* null, %struct._PangoLayout** %cursor_layout9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %list = alloca %struct._GList*, align 8
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %layout_x = alloca i32, align 4
  %layout_y = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %i = alloca i32, align 4
  %bg = alloca %struct.BGCurve*, align 8
  %buf = alloca [32 x i8], align 16
  %buf188 = alloca [32 x i8], align 16
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  store %struct._GdkDrawable* %call2, %struct._GdkDrawable** %window, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %4)
  store %struct._GtkStyle* %call3, %struct._GtkStyle** %style, align 8
  %5 = load i8*, i8** @gimp_curve_view_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 31
  %8 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call6 = call i32 %8(%struct._GtkWidget* %9, %struct._GdkEventExpose* %10)
  %11 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %11, i32 0, i32 2
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %13, %struct._GdkRectangle* %allocation)
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %15 = bitcast %struct._GimpCurveView* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_histogram_view_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpHistogramView*
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %16, i32 0, i32 7
  %17 = load i32, i32* %border_width, align 4
  store i32 %17, i32* %border, align 4
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width9, align 4
  %19 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %19
  %sub = sub nsw i32 %18, %mul
  store i32 %sub, i32* %width, align 4
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %20 = load i32, i32* %height10, align 4
  %21 = load i32, i32* %border, align 4
  %mul11 = mul nsw i32 2, %21
  %sub12 = sub nsw i32 %20, %mul11
  store i32 %sub12, i32* %height, align 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %22)
  %call14 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call13)
  store %struct._cairo* %call14, %struct._cairo** %cr, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %24 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %24, i32 0, i32 4
  %25 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %23, %struct._GdkRegion* %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %27)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end
  %28 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %29 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call18 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %30)
  %31 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = load i32, i32* %border, align 4
  %sub19 = sub nsw i32 %33, 2
  %34 = load i32, i32* %border, align 4
  %sub20 = sub nsw i32 %34, 2
  %35 = load i32, i32* %width, align 4
  %add = add nsw i32 %35, 4
  %36 = load i32, i32* %height, align 4
  %add21 = add nsw i32 %36, 4
  call void @gtk_paint_focus(%struct._GtkStyle* %28, %struct._GdkDrawable* %29, i32 %call18, %struct._GdkRectangle* %area, %struct._GtkWidget* %32, i8* null, i32 %sub19, i32 %sub20, i32 %add, i32 %add21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end
  %37 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %37, double 1.000000e+00)
  %38 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_cap(%struct._cairo* %38, i32 2)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %39, double 5.000000e-01, double 5.000000e-01)
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %41, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %40, %struct._GdkColor* %arrayidx)
  %42 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  %46 = load i32, i32* %border, align 4
  call void @gimp_curve_view_draw_grid(%struct._GimpCurveView* %42, %struct._cairo* %43, i32 %44, i32 %45, i32 %46)
  %47 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %47, i32 0, i32 25
  %48 = load i8*, i8** %x_axis_label, align 8
  %tobool23 = icmp ne i8* %48, null
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %if.end.22
  %49 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %49, i32 0, i32 16
  %50 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool25 = icmp ne %struct._PangoLayout* %50, null
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %if.then.24
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call27 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %51, i8* null)
  %52 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout28 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %52, i32 0, i32 16
  store %struct._PangoLayout* %call27, %struct._PangoLayout** %layout28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.then.24
  %53 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout30 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %53, i32 0, i32 16
  %54 = load %struct._PangoLayout*, %struct._PangoLayout** %layout30, align 8
  %55 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label31 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %55, i32 0, i32 25
  %56 = load i8*, i8** %x_axis_label31, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %54, i8* %56, i32 -1)
  %57 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout32 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %57, i32 0, i32 16
  %58 = load %struct._PangoLayout*, %struct._PangoLayout** %layout32, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %58, i32* %layout_x, i32* %layout_y)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %60 = load i32, i32* %width, align 4
  %61 = load i32, i32* %border, align 4
  %sub33 = sub nsw i32 %60, %61
  %62 = load i32, i32* %layout_x, align 4
  %sub34 = sub nsw i32 %sub33, %62
  %conv = sitofp i32 %sub34 to double
  %63 = load i32, i32* %height, align 4
  %64 = load i32, i32* %border, align 4
  %sub35 = sub nsw i32 %63, %64
  %65 = load i32, i32* %layout_y, align 4
  %sub36 = sub nsw i32 %sub35, %65
  %conv37 = sitofp i32 %sub36 to double
  call void @cairo_move_to(%struct._cairo* %59, double %conv, double %conv37)
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %67 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %67, i32 0, i32 6
  %arrayidx38 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %66, %struct._GdkColor* %arrayidx38)
  %68 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %69 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout39 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %69, i32 0, i32 16
  %70 = load %struct._PangoLayout*, %struct._PangoLayout** %layout39, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %68, %struct._PangoLayout* %70)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.29, %if.end.22
  %71 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %71, i32 0, i32 26
  %72 = load i8*, i8** %y_axis_label, align 8
  %tobool41 = icmp ne i8* %72, null
  br i1 %tobool41, label %if.then.42, label %if.end.60

if.then.42:                                       ; preds = %if.end.40
  %73 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout43 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %73, i32 0, i32 16
  %74 = load %struct._PangoLayout*, %struct._PangoLayout** %layout43, align 8
  %tobool44 = icmp ne %struct._PangoLayout* %74, null
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %if.then.42
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call46 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %75, i8* null)
  %76 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout47 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %76, i32 0, i32 16
  store %struct._PangoLayout* %call46, %struct._PangoLayout** %layout47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.42
  %77 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout49 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %77, i32 0, i32 16
  %78 = load %struct._PangoLayout*, %struct._PangoLayout** %layout49, align 8
  %79 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %y_axis_label50 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %79, i32 0, i32 26
  %80 = load i8*, i8** %y_axis_label50, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %78, i8* %80, i32 -1)
  %81 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout51 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %81, i32 0, i32 16
  %82 = load %struct._PangoLayout*, %struct._PangoLayout** %layout51, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %82, i32* %layout_x, i32* %layout_y)
  %83 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_save(%struct._cairo* %83)
  %84 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %85 = load i32, i32* %border, align 4
  %mul52 = mul nsw i32 2, %85
  %conv53 = sitofp i32 %mul52 to double
  %86 = load i32, i32* %border, align 4
  %mul54 = mul nsw i32 2, %86
  %87 = load i32, i32* %layout_x, align 4
  %add55 = add nsw i32 %mul54, %87
  %conv56 = sitofp i32 %add55 to double
  call void @cairo_move_to(%struct._cairo* %84, double %conv53, double %conv56)
  %88 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_rotate(%struct._cairo* %88, double 0xBFF921FB54442D18)
  %89 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %90 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text57 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %90, i32 0, i32 6
  %arrayidx58 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text57, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %89, %struct._GdkColor* %arrayidx58)
  %91 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %92 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout59 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %92, i32 0, i32 16
  %93 = load %struct._PangoLayout*, %struct._PangoLayout** %layout59, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %91, %struct._PangoLayout* %93)
  %94 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_restore(%struct._cairo* %94)
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.48, %if.end.40
  %95 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %bg_curves = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %95, i32 0, i32 4
  %96 = load %struct._GList*, %struct._GList** %bg_curves, align 8
  store %struct._GList* %96, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.60
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool61 = icmp ne %struct._GList* %97, null
  br i1 %tobool61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 0
  %99 = load i8*, i8** %data, align 8
  %100 = bitcast i8* %99 to %struct.BGCurve*
  store %struct.BGCurve* %100, %struct.BGCurve** %bg, align 8
  %101 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color_set = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %101, i32 0, i32 2
  %102 = load i32, i32* %color_set, align 4
  %tobool62 = icmp ne i32 %102, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.body
  %103 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %104 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %104, i32 0, i32 1
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %105 = load double, double* %r, align 8
  %106 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color64 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %106, i32 0, i32 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color64, i32 0, i32 1
  %107 = load double, double* %g, align 8
  %108 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %color65 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %108, i32 0, i32 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color65, i32 0, i32 2
  %109 = load double, double* %b, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %103, double %105, double %107, double %109, double 5.000000e-01)
  br label %if.end.80

if.else:                                          ; preds = %for.body
  %110 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %111 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text66 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %111, i32 0, i32 6
  %arrayidx67 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text66, i32 0, i64 0
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx67, i32 0, i32 1
  %112 = load i16, i16* %red, align 2
  %conv68 = zext i16 %112 to i32
  %conv69 = sitofp i32 %conv68 to double
  %div = fdiv double %conv69, 6.553500e+04
  %113 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text70 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %113, i32 0, i32 6
  %arrayidx71 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text70, i32 0, i64 0
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx71, i32 0, i32 2
  %114 = load i16, i16* %green, align 2
  %conv72 = zext i16 %114 to i32
  %conv73 = sitofp i32 %conv72 to double
  %div74 = fdiv double %conv73, 6.553500e+04
  %115 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text75 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %115, i32 0, i32 6
  %arrayidx76 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text75, i32 0, i64 0
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx76, i32 0, i32 3
  %116 = load i16, i16* %blue, align 2
  %conv77 = zext i16 %116 to i32
  %conv78 = sitofp i32 %conv77 to double
  %div79 = fdiv double %conv78, 6.553500e+04
  call void @cairo_set_source_rgba(%struct._cairo* %110, double %div, double %div74, double %div79, double 5.000000e-01)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.63
  %117 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %118 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %119 = load %struct.BGCurve*, %struct.BGCurve** %bg, align 8
  %curve81 = getelementptr inbounds %struct.BGCurve, %struct.BGCurve* %119, i32 0, i32 0
  %120 = load %struct._GimpCurve*, %struct._GimpCurve** %curve81, align 8
  %121 = load i32, i32* %width, align 4
  %122 = load i32, i32* %height, align 4
  %123 = load i32, i32* %border, align 4
  call void @gimp_curve_view_draw_curve(%struct._GimpCurveView* %117, %struct._cairo* %118, %struct._GimpCurve* %120, i32 %121, i32 %122, i32 %123)
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %124 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool82 = icmp ne %struct._GList* %124, null
  br i1 %tobool82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %125, i32 0, i32 1
  %126 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %126, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %127 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve_color = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %127, i32 0, i32 3
  %128 = load %struct._GimpRGB*, %struct._GimpRGB** %curve_color, align 8
  %tobool83 = icmp ne %struct._GimpRGB* %128, null
  br i1 %tobool83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %for.end
  %129 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %130 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve_color85 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %130, i32 0, i32 3
  %131 = load %struct._GimpRGB*, %struct._GimpRGB** %curve_color85, align 8
  call void @gimp_cairo_set_source_rgb(%struct._cairo* %129, %struct._GimpRGB* %131)
  br label %if.end.89

if.else.86:                                       ; preds = %for.end
  %132 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %133 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text87 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %133, i32 0, i32 6
  %arrayidx88 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text87, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %132, %struct._GdkColor* %arrayidx88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.84
  %134 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %135 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %136 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve90 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %136, i32 0, i32 2
  %137 = load %struct._GimpCurve*, %struct._GimpCurve** %curve90, align 8
  %138 = load i32, i32* %width, align 4
  %139 = load i32, i32* %height, align 4
  %140 = load i32, i32* %border, align 4
  call void @gimp_curve_view_draw_curve(%struct._GimpCurveView* %134, %struct._cairo* %135, %struct._GimpCurve* %137, i32 %138, i32 %139, i32 %140)
  %141 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve91 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %141, i32 0, i32 2
  %142 = load %struct._GimpCurve*, %struct._GimpCurve** %curve91, align 8
  %call92 = call i32 @gimp_curve_get_curve_type(%struct._GimpCurve* %142)
  %cmp = icmp eq i32 %call92, 0
  br i1 %cmp, label %if.then.94, label %if.end.114

if.then.94:                                       ; preds = %if.end.89
  %143 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %144 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text95 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %144, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text95, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %143, %struct._GdkColor* %arrayidx96)
  store i32 0, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.106, %if.then.94
  %145 = load i32, i32* %i, align 4
  %146 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve98 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %146, i32 0, i32 2
  %147 = load %struct._GimpCurve*, %struct._GimpCurve** %curve98, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %147, i32 0, i32 2
  %148 = load i32, i32* %n_points, align 4
  %cmp99 = icmp slt i32 %145, %148
  br i1 %cmp99, label %for.body.101, label %for.end.107

for.body.101:                                     ; preds = %for.cond.97
  %149 = load i32, i32* %i, align 4
  %150 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %150, i32 0, i32 8
  %151 = load i32, i32* %selected, align 4
  %cmp102 = icmp eq i32 %149, %151
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.101
  br label %for.inc.106

if.end.105:                                       ; preds = %for.body.101
  %152 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %153 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %width, align 4
  %156 = load i32, i32* %height, align 4
  %157 = load i32, i32* %border, align 4
  call void @gimp_curve_view_draw_point(%struct._GimpCurveView* %152, %struct._cairo* %153, i32 %154, i32 %155, i32 %156, i32 %157)
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105, %if.then.104
  %158 = load i32, i32* %i, align 4
  %inc = add nsw i32 %158, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.97

for.end.107:                                      ; preds = %for.cond.97
  %159 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %159)
  %160 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected108 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %160, i32 0, i32 8
  %161 = load i32, i32* %selected108, align 4
  %cmp109 = icmp ne i32 %161, -1
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %for.end.107
  %162 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %163 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %164 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected112 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %164, i32 0, i32 8
  %165 = load i32, i32* %selected112, align 4
  %166 = load i32, i32* %width, align 4
  %167 = load i32, i32* %height, align 4
  %168 = load i32, i32* %border, align 4
  call void @gimp_curve_view_draw_point(%struct._GimpCurveView* %162, %struct._cairo* %163, i32 %165, i32 %166, i32 %167, i32 %168)
  %169 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %169)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %for.end.107
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.89
  %170 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %170, i32 0, i32 15
  %171 = load double, double* %xpos, align 8
  %cmp115 = fcmp oge double %171, 0.000000e+00
  br i1 %cmp115, label %if.then.117, label %if.end.174

if.then.117:                                      ; preds = %if.end.114
  %172 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %173 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text118 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %173, i32 0, i32 6
  %arrayidx119 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text118, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %172, %struct._GdkColor* %arrayidx119)
  %174 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %175 = load i32, i32* %border, align 4
  %176 = load i32, i32* %width, align 4
  %sub120 = sub nsw i32 %176, 1
  %conv121 = sitofp i32 %sub120 to double
  %177 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos122 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %177, i32 0, i32 15
  %178 = load double, double* %xpos122, align 8
  %mul123 = fmul double %conv121, %178
  %add124 = fadd double %mul123, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  %add126 = add nsw i32 %175, %conv125
  %conv127 = sitofp i32 %add126 to double
  %179 = load i32, i32* %border, align 4
  %add128 = add nsw i32 %179, 1
  %conv129 = sitofp i32 %add128 to double
  call void @cairo_move_to(%struct._cairo* %174, double %conv127, double %conv129)
  %180 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %181 = load i32, i32* %border, align 4
  %182 = load i32, i32* %width, align 4
  %sub130 = sub nsw i32 %182, 1
  %conv131 = sitofp i32 %sub130 to double
  %183 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos132 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %183, i32 0, i32 15
  %184 = load double, double* %xpos132, align 8
  %mul133 = fmul double %conv131, %184
  %add134 = fadd double %mul133, 5.000000e-01
  %conv135 = fptosi double %add134 to i32
  %add136 = add nsw i32 %181, %conv135
  %conv137 = sitofp i32 %add136 to double
  %185 = load i32, i32* %border, align 4
  %186 = load i32, i32* %height, align 4
  %add138 = add nsw i32 %185, %186
  %sub139 = sub nsw i32 %add138, 1
  %conv140 = sitofp i32 %sub139 to double
  call void @cairo_line_to(%struct._cairo* %180, double %conv137, double %conv140)
  %187 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %187)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %188 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos141 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %188, i32 0, i32 15
  %189 = load double, double* %xpos141, align 8
  %mul142 = fmul double %189, 2.559990e+02
  %conv143 = fptosi double %mul142 to i32
  %call144 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %conv143)
  %190 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout145 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %190, i32 0, i32 16
  %191 = load %struct._PangoLayout*, %struct._PangoLayout** %layout145, align 8
  %tobool146 = icmp ne %struct._PangoLayout* %191, null
  br i1 %tobool146, label %if.end.150, label %if.then.147

if.then.147:                                      ; preds = %if.then.117
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call148 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %192, i8* null)
  %193 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout149 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %193, i32 0, i32 16
  store %struct._PangoLayout* %call148, %struct._PangoLayout** %layout149, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %if.then.117
  %194 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout151 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %194, i32 0, i32 16
  %195 = load %struct._PangoLayout*, %struct._PangoLayout** %layout151, align 8
  %arraydecay152 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @pango_layout_set_text(%struct._PangoLayout* %195, i8* %arraydecay152, i32 -1)
  %196 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout153 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %196, i32 0, i32 16
  %197 = load %struct._PangoLayout*, %struct._PangoLayout** %layout153, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %197, i32* %layout_x, i32* %layout_y)
  %198 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos154 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %198, i32 0, i32 15
  %199 = load double, double* %xpos154, align 8
  %cmp155 = fcmp olt double %199, 5.000000e-01
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.end.150
  %200 = load i32, i32* %border, align 4
  store i32 %200, i32* %layout_x, align 4
  br label %if.end.161

if.else.158:                                      ; preds = %if.end.150
  %201 = load i32, i32* %layout_x, align 4
  %202 = load i32, i32* %border, align 4
  %add159 = add nsw i32 %201, %202
  %sub160 = sub nsw i32 0, %add159
  store i32 %sub160, i32* %layout_x, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  %203 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %204 = load i32, i32* %border, align 4
  %conv162 = sitofp i32 %204 to double
  %205 = load i32, i32* %width, align 4
  %conv163 = sitofp i32 %205 to double
  %206 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %xpos164 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %206, i32 0, i32 15
  %207 = load double, double* %xpos164, align 8
  %mul165 = fmul double %conv163, %207
  %add166 = fadd double %conv162, %mul165
  %208 = load i32, i32* %layout_x, align 4
  %conv167 = sitofp i32 %208 to double
  %add168 = fadd double %add166, %conv167
  %209 = load i32, i32* %border, align 4
  %210 = load i32, i32* %height, align 4
  %add169 = add nsw i32 %209, %210
  %211 = load i32, i32* %border, align 4
  %sub170 = sub nsw i32 %add169, %211
  %212 = load i32, i32* %layout_y, align 4
  %sub171 = sub nsw i32 %sub170, %212
  %conv172 = sitofp i32 %sub171 to double
  call void @cairo_move_to(%struct._cairo* %203, double %add168, double %conv172)
  %213 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %214 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %layout173 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %214, i32 0, i32 16
  %215 = load %struct._PangoLayout*, %struct._PangoLayout** %layout173, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %213, %struct._PangoLayout* %215)
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.161, %if.end.114
  %216 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %216, i32 0, i32 21
  %217 = load double, double* %cursor_x, align 8
  %cmp175 = fcmp oge double %217, 0.000000e+00
  br i1 %cmp175, label %land.lhs.true, label %if.end.278

land.lhs.true:                                    ; preds = %if.end.174
  %218 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_x177 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %218, i32 0, i32 21
  %219 = load double, double* %cursor_x177, align 8
  %cmp178 = fcmp ole double %219, 1.000000e+00
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.278

land.lhs.true.180:                                ; preds = %land.lhs.true
  %220 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %220, i32 0, i32 22
  %221 = load double, double* %cursor_y, align 8
  %cmp181 = fcmp oge double %221, 0.000000e+00
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.278

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %222 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_y184 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %222, i32 0, i32 22
  %223 = load double, double* %cursor_y184, align 8
  %cmp185 = fcmp ole double %223, 1.000000e+00
  br i1 %cmp185, label %if.then.187, label %if.end.278

if.then.187:                                      ; preds = %land.lhs.true.183
  %224 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %224, i32 0, i32 23
  %225 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout, align 8
  %tobool189 = icmp ne %struct._PangoLayout* %225, null
  br i1 %tobool189, label %if.end.204, label %if.then.190

if.then.190:                                      ; preds = %if.then.187
  %226 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %226, i32 0, i32 18
  %227 = load double, double* %range_x_max, align 8
  %cmp191 = fcmp oeq double %227, 2.550000e+02
  br i1 %cmp191, label %land.lhs.true.193, label %if.else.199

land.lhs.true.193:                                ; preds = %if.then.190
  %228 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_max = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %228, i32 0, i32 20
  %229 = load double, double* %range_y_max, align 8
  %cmp194 = fcmp oeq double %229, 2.550000e+02
  br i1 %cmp194, label %if.then.196, label %if.else.199

if.then.196:                                      ; preds = %land.lhs.true.193
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call197 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  %231 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout198 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %231, i32 0, i32 23
  store %struct._PangoLayout* %call197, %struct._PangoLayout** %cursor_layout198, align 8
  br label %if.end.202

if.else.199:                                      ; preds = %land.lhs.true.193, %if.then.190
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call200 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  %233 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout201 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %233, i32 0, i32 23
  store %struct._PangoLayout* %call200, %struct._PangoLayout** %cursor_layout201, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.196
  %234 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout203 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %234, i32 0, i32 23
  %235 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout203, align 8
  %236 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_rect = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %236, i32 0, i32 24
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %235, %struct._PangoRectangle* null, %struct._PangoRectangle* %cursor_rect)
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.202, %if.then.187
  %237 = load i32, i32* %border, align 4
  %mul205 = mul nsw i32 %237, 2
  %add206 = add nsw i32 %mul205, 3
  %conv207 = sitofp i32 %add206 to double
  store double %conv207, double* %x, align 8
  %238 = load i32, i32* %border, align 4
  %mul208 = mul nsw i32 %238, 2
  %add209 = add nsw i32 %mul208, 3
  %conv210 = sitofp i32 %add209 to double
  store double %conv210, double* %y, align 8
  %239 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_rect211 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %239, i32 0, i32 24
  %width212 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect211, i32 0, i32 2
  %240 = load i32, i32* %width212, align 4
  store i32 %240, i32* %w, align 4
  %241 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_rect213 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %241, i32 0, i32 24
  %height214 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect213, i32 0, i32 3
  %242 = load i32, i32* %height214, align 4
  store i32 %242, i32* %h, align 4
  %243 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %x_axis_label215 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %243, i32 0, i32 25
  %244 = load i8*, i8** %x_axis_label215, align 8
  %tobool216 = icmp ne i8* %244, null
  br i1 %tobool216, label %if.then.217, label %if.end.223

if.then.217:                                      ; preds = %if.end.204
  %245 = load i32, i32* %border, align 4
  %246 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_rect218 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %246, i32 0, i32 24
  %height219 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect218, i32 0, i32 3
  %247 = load i32, i32* %height219, align 4
  %add220 = add nsw i32 %245, %247
  %conv221 = sitofp i32 %add220 to double
  %248 = load double, double* %x, align 8
  %add222 = fadd double %248, %conv221
  store double %add222, double* %x, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.217, %if.end.204
  %249 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_push_group(%struct._cairo* %249)
  %250 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %251 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text224 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %251, i32 0, i32 6
  %arrayidx225 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text224, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %250, %struct._GdkColor* %arrayidx225)
  %252 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %253 = load double, double* %x, align 8
  %add226 = fadd double %253, 5.000000e-01
  %254 = load double, double* %y, align 8
  %add227 = fadd double %254, 5.000000e-01
  %255 = load i32, i32* %w, align 4
  %conv228 = sitofp i32 %255 to double
  %256 = load i32, i32* %h, align 4
  %conv229 = sitofp i32 %256 to double
  call void @cairo_rectangle(%struct._cairo* %252, double %add226, double %add227, double %conv228, double %conv229)
  %257 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %257)
  %258 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %258, double 6.000000e+00)
  %259 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_join(%struct._cairo* %259, i32 1)
  %260 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %260)
  %261 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_max230 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %261, i32 0, i32 18
  %262 = load double, double* %range_x_max230, align 8
  %cmp231 = fcmp oeq double %262, 2.550000e+02
  br i1 %cmp231, label %land.lhs.true.233, label %if.else.255

land.lhs.true.233:                                ; preds = %if.end.223
  %263 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_max234 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %263, i32 0, i32 20
  %264 = load double, double* %range_y_max234, align 8
  %cmp235 = fcmp oeq double %264, 2.550000e+02
  br i1 %cmp235, label %if.then.237, label %if.else.255

if.then.237:                                      ; preds = %land.lhs.true.233
  %arraydecay238 = getelementptr inbounds [32 x i8], [32 x i8]* %buf188, i32 0, i32 0
  %265 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_x239 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %265, i32 0, i32 21
  %266 = load double, double* %cursor_x239, align 8
  %267 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_max240 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %267, i32 0, i32 18
  %268 = load double, double* %range_x_max240, align 8
  %269 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %269, i32 0, i32 17
  %270 = load double, double* %range_x_min, align 8
  %sub241 = fsub double %268, %270
  %mul242 = fmul double %266, %sub241
  %271 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_min243 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %271, i32 0, i32 17
  %272 = load double, double* %range_x_min243, align 8
  %add244 = fadd double %mul242, %272
  %conv245 = fptosi double %add244 to i32
  %273 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_y246 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %273, i32 0, i32 22
  %274 = load double, double* %cursor_y246, align 8
  %sub247 = fsub double 1.000000e+00, %274
  %275 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_max248 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %275, i32 0, i32 20
  %276 = load double, double* %range_y_max248, align 8
  %277 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_min = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %277, i32 0, i32 19
  %278 = load double, double* %range_y_min, align 8
  %sub249 = fsub double %276, %278
  %mul250 = fmul double %sub247, %sub249
  %279 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_min251 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %279, i32 0, i32 19
  %280 = load double, double* %range_y_min251, align 8
  %add252 = fadd double %mul250, %280
  %conv253 = fptosi double %add252 to i32
  %call254 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay238, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %conv245, i32 %conv253)
  br label %if.end.273

if.else.255:                                      ; preds = %land.lhs.true.233, %if.end.223
  %arraydecay256 = getelementptr inbounds [32 x i8], [32 x i8]* %buf188, i32 0, i32 0
  %281 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_x257 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %281, i32 0, i32 21
  %282 = load double, double* %cursor_x257, align 8
  %283 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_max258 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %283, i32 0, i32 18
  %284 = load double, double* %range_x_max258, align 8
  %285 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_min259 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %285, i32 0, i32 17
  %286 = load double, double* %range_x_min259, align 8
  %sub260 = fsub double %284, %286
  %mul261 = fmul double %282, %sub260
  %287 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_x_min262 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %287, i32 0, i32 17
  %288 = load double, double* %range_x_min262, align 8
  %add263 = fadd double %mul261, %288
  %289 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_y264 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %289, i32 0, i32 22
  %290 = load double, double* %cursor_y264, align 8
  %sub265 = fsub double 1.000000e+00, %290
  %291 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_max266 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %291, i32 0, i32 20
  %292 = load double, double* %range_y_max266, align 8
  %293 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_min267 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %293, i32 0, i32 19
  %294 = load double, double* %range_y_min267, align 8
  %sub268 = fsub double %292, %294
  %mul269 = fmul double %sub265, %sub268
  %295 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %range_y_min270 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %295, i32 0, i32 19
  %296 = load double, double* %range_y_min270, align 8
  %add271 = fadd double %mul269, %296
  %call272 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay256, i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), double %add263, double %add271)
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.255, %if.then.237
  %297 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout274 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %297, i32 0, i32 23
  %298 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout274, align 8
  %arraydecay275 = getelementptr inbounds [32 x i8], [32 x i8]* %buf188, i32 0, i32 0
  call void @pango_layout_set_text(%struct._PangoLayout* %298, i8* %arraydecay275, i32 -1)
  %299 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %300 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %300, i32 0, i32 7
  %arrayidx276 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %299, %struct._GdkColor* %arrayidx276)
  %301 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %302 = load double, double* %x, align 8
  %303 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %301, double %302, double %303)
  %304 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %305 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %cursor_layout277 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %305, i32 0, i32 23
  %306 = load %struct._PangoLayout*, %struct._PangoLayout** %cursor_layout277, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %304, %struct._PangoLayout* %306)
  %307 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_pop_group_to_source(%struct._cairo* %307)
  %308 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint_with_alpha(%struct._cairo* %308, double 6.000000e-01)
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.273, %land.lhs.true.183, %land.lhs.true.180, %land.lhs.true, %if.end.174
  %309 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %309)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.278, %if.then
  %310 = load i32, i32* %retval
  ret i32 %310
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %closest_point = alloca i32, align 4
  %i = alloca i32, align 4
  %point_x = alloca double, align 8
  %point_x51 = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve2 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 2
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve2, align 8
  store %struct._GimpCurve* %4, %struct._GimpCurve** %curve, align 8
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 8
  %7 = load i32, i32* %button, align 4
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %allocation)
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %10 = bitcast %struct._GimpCurveView* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_histogram_view_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpHistogramView*
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %11, i32 0, i32 7
  %12 = load i32, i32* %border_width, align 4
  store i32 %12, i32* %border, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width5, align 4
  %14 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %14
  %sub = sub nsw i32 %13, %mul
  store i32 %sub, i32* %width, align 4
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %15 = load i32, i32* %height6, align 4
  %16 = load i32, i32* %border, align 4
  %mul7 = mul nsw i32 2, %16
  %sub8 = sub nsw i32 %15, %mul7
  store i32 %sub8, i32* %height, align 4
  %17 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %17, i32 0, i32 4
  %18 = load double, double* %x9, align 8
  %19 = load i32, i32* %border, align 4
  %conv = sitofp i32 %19 to double
  %sub10 = fsub double %18, %conv
  %20 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %20 to double
  %div = fdiv double %sub10, %conv11
  store double %div, double* %x, align 8
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y12 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 5
  %22 = load double, double* %y12, align 8
  %23 = load i32, i32* %border, align 4
  %conv13 = sitofp i32 %23 to double
  %sub14 = fsub double %22, %conv13
  %24 = load i32, i32* %height, align 4
  %conv15 = sitofp i32 %24 to double
  %div16 = fdiv double %sub14, %conv15
  store double %div16, double* %y, align 8
  %25 = load double, double* %x, align 8
  %cmp17 = fcmp ogt double %25, 1.000000e+00
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.23

cond.false:                                       ; preds = %if.end
  %26 = load double, double* %x, align 8
  %cmp19 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %27 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.21
  %cond = phi double [ 0.000000e+00, %cond.true.21 ], [ %27, %cond.false.22 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true
  %cond24 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond24, double* %x, align 8
  %28 = load double, double* %y, align 8
  %cmp25 = fcmp ogt double %28, 1.000000e+00
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.23
  br label %cond.end.35

cond.false.28:                                    ; preds = %cond.end.23
  %29 = load double, double* %y, align 8
  %cmp29 = fcmp olt double %29, 0.000000e+00
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.false.28
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.false.28
  %30 = load double, double* %y, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi double [ 0.000000e+00, %cond.true.31 ], [ %30, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.27
  %cond36 = phi double [ 1.000000e+00, %cond.true.27 ], [ %cond34, %cond.end.33 ]
  store double %cond36, double* %y, align 8
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %32 = load double, double* %x, align 8
  %call37 = call i32 @gimp_curve_get_closest_point(%struct._GimpCurve* %31, double %32)
  store i32 %call37, i32* %closest_point, align 4
  %33 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grabbed = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %33, i32 0, i32 13
  store i32 1, i32* %grabbed, align 4
  %34 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @set_cursor(%struct._GimpCurveView* %34, i32 130)
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call38 = call i32 @gimp_curve_get_curve_type(%struct._GimpCurve* %35)
  switch i32 %call38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %cond.end.35
  %36 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %leftmost = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %36, i32 0, i32 11
  store double -1.000000e+00, double* %leftmost, align 8
  %37 = load i32, i32* %closest_point, align 4
  %sub39 = sub nsw i32 %37, 1
  store i32 %sub39, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %38 = load i32, i32* %i, align 4
  %cmp40 = icmp sge i32 %38, 0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %40 = load i32, i32* %i, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %39, i32 %40, double* %point_x, double* null)
  %41 = load double, double* %point_x, align 8
  %cmp42 = fcmp oge double %41, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body
  %42 = load double, double* %point_x, align 8
  %43 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %leftmost45 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %43, i32 0, i32 11
  store double %42, double* %leftmost45, align 8
  br label %for.end

if.end.46:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %44 = load i32, i32* %i, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.44, %for.cond
  %45 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %rightmost = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %45, i32 0, i32 12
  store double 2.000000e+00, double* %rightmost, align 8
  %46 = load i32, i32* %closest_point, align 4
  %add = add nsw i32 %46, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.57, %for.end
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %48, i32 0, i32 2
  %49 = load i32, i32* %n_points, align 4
  %cmp48 = icmp slt i32 %47, %49
  br i1 %cmp48, label %for.body.50, label %for.end.58

for.body.50:                                      ; preds = %for.cond.47
  %50 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %51 = load i32, i32* %i, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %50, i32 %51, double* %point_x51, double* null)
  %52 = load double, double* %point_x51, align 8
  %cmp52 = fcmp oge double %52, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.body.50
  %53 = load double, double* %point_x51, align 8
  %54 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %rightmost55 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %54, i32 0, i32 12
  store double %53, double* %rightmost55, align 8
  br label %for.end.58

if.end.56:                                        ; preds = %for.body.50
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.47

for.end.58:                                       ; preds = %if.then.54, %for.cond.47
  %56 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %57 = load i32, i32* %closest_point, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %56, i32 %57)
  %58 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %59 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %59, i32 0, i32 8
  %60 = load i32, i32* %selected, align 4
  %61 = load double, double* %x, align 8
  %62 = load double, double* %y, align 8
  %sub59 = fsub double 1.000000e+00, %62
  call void @gimp_curve_set_point(%struct._GimpCurve* %58, i32 %60, double %61, double %sub59)
  br label %sw.epilog

sw.bb.60:                                         ; preds = %cond.end.35
  %63 = load double, double* %x, align 8
  %64 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %64, i32 0, i32 9
  store double %63, double* %last_x, align 8
  %65 = load double, double* %y, align 8
  %66 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %66, i32 0, i32 10
  store double %65, double* %last_y, align 8
  %67 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %68 = load double, double* %x, align 8
  %69 = load double, double* %y, align 8
  %sub61 = fsub double 1.000000e+00, %69
  call void @gimp_curve_set_curve(%struct._GimpCurve* %67, double %68, double %sub61)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.35, %sw.bb.60, %for.end.58
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call62 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %70)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %sw.epilog
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %71)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %sw.epilog
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grabbed = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 13
  store i32 0, i32* %grabbed, align 4
  %6 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @set_cursor(%struct._GimpCurveView* %6, i32 52)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %new_cursor = alloca i32, align 4
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %point_x = alloca double, align 8
  %closest_point = alloca i32, align 4
  %n_points = alloca i32, align 4
  %n_samples = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %i = alloca i32, align 4
  %xpos = alloca double, align 8
  %ypos = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve2 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 2
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve2, align 8
  store %struct._GimpCurve* %4, %struct._GimpCurve** %curve, align 8
  store i32 0, i32* %new_cursor, align 4
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %8 = bitcast %struct._GimpCurveView* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_histogram_view_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpHistogramView*
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %9, i32 0, i32 7
  %10 = load i32, i32* %border_width, align 4
  store i32 %10, i32* %border, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %11 = load i32, i32* %width5, align 4
  %12 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %12
  %sub = sub nsw i32 %11, %mul
  store i32 %sub, i32* %width, align 4
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height6, align 4
  %14 = load i32, i32* %border, align 4
  %mul7 = mul nsw i32 2, %14
  %sub8 = sub nsw i32 %13, %mul7
  store i32 %sub8, i32* %height, align 4
  %15 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %15, i32 0, i32 4
  %16 = load double, double* %x9, align 8
  %17 = load i32, i32* %border, align 4
  %conv = sitofp i32 %17 to double
  %sub10 = fsub double %16, %conv
  %18 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %18 to double
  %div = fdiv double %sub10, %conv11
  store double %div, double* %x, align 8
  %19 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %y12 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %19, i32 0, i32 5
  %20 = load double, double* %y12, align 8
  %21 = load i32, i32* %border, align 4
  %conv13 = sitofp i32 %21 to double
  %sub14 = fsub double %20, %conv13
  %22 = load i32, i32* %height, align 4
  %conv15 = sitofp i32 %22 to double
  %div16 = fdiv double %sub14, %conv15
  store double %div16, double* %y, align 8
  %23 = load double, double* %x, align 8
  %cmp = fcmp ogt double %23, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.22

cond.false:                                       ; preds = %if.end
  %24 = load double, double* %x, align 8
  %cmp18 = fcmp olt double %24, 0.000000e+00
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %25 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi double [ 0.000000e+00, %cond.true.20 ], [ %25, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond23, double* %x, align 8
  %26 = load double, double* %y, align 8
  %cmp24 = fcmp ogt double %26, 1.000000e+00
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.22
  br label %cond.end.34

cond.false.27:                                    ; preds = %cond.end.22
  %27 = load double, double* %y, align 8
  %cmp28 = fcmp olt double %27, 0.000000e+00
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.27
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.false.27
  %28 = load double, double* %y, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi double [ 0.000000e+00, %cond.true.30 ], [ %28, %cond.false.31 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.26
  %cond35 = phi double [ 1.000000e+00, %cond.true.26 ], [ %cond33, %cond.end.32 ]
  store double %cond35, double* %y, align 8
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %30 = load double, double* %x, align 8
  %call36 = call i32 @gimp_curve_get_closest_point(%struct._GimpCurve* %29, double %30)
  store i32 %call36, i32* %closest_point, align 4
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call37 = call i32 @gimp_curve_get_curve_type(%struct._GimpCurve* %31)
  switch i32 %call37, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %cond.end.34
  %32 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grabbed = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %32, i32 0, i32 13
  %33 = load i32, i32* %grabbed, align 4
  %tobool38 = icmp ne i32 %33, 0
  br i1 %tobool38, label %if.else.44, label %if.then.39

if.then.39:                                       ; preds = %sw.bb
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %35 = load i32, i32* %closest_point, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %34, i32 %35, double* %point_x, double* null)
  %36 = load double, double* %point_x, align 8
  %cmp40 = fcmp oge double %36, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.then.39
  store i32 52, i32* %new_cursor, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.then.39
  store i32 130, i32* %new_cursor, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.42
  br label %if.end.66

if.else.44:                                       ; preds = %sw.bb
  store i32 130, i32* %new_cursor, align 4
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %38 = bitcast %struct._GimpCurve* %37 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_data_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call45)
  %39 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %39)
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %41 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %41, i32 0, i32 8
  %42 = load i32, i32* %selected, align 4
  call void @gimp_curve_set_point(%struct._GimpCurve* %40, i32 %42, double -1.000000e+00, double -1.000000e+00)
  %43 = load double, double* %x, align 8
  %44 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %leftmost = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %44, i32 0, i32 11
  %45 = load double, double* %leftmost, align 8
  %cmp47 = fcmp ogt double %43, %45
  br i1 %cmp47, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.else.44
  %46 = load double, double* %x, align 8
  %47 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %rightmost = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %47, i32 0, i32 12
  %48 = load double, double* %rightmost, align 8
  %cmp49 = fcmp olt double %46, %48
  br i1 %cmp49, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %land.lhs.true
  %49 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call52 = call i32 @gimp_curve_get_n_points(%struct._GimpCurve* %49)
  store i32 %call52, i32* %n_points, align 4
  %50 = load double, double* %x, align 8
  %51 = load i32, i32* %n_points, align 4
  %sub53 = sub nsw i32 %51, 1
  %conv54 = sitofp i32 %sub53 to double
  %mul55 = fmul double %50, %conv54
  %add = fadd double %mul55, 5.000000e-01
  %conv56 = fptosi double %add to i32
  store i32 %conv56, i32* %closest_point, align 4
  %52 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %53 = load i32, i32* %closest_point, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %52, i32 %53, double* %point_x, double* null)
  %54 = load double, double* %point_x, align 8
  %cmp57 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.51
  %55 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %56 = load i32, i32* %closest_point, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %55, i32 %56)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.51
  %57 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %58 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected61 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %58, i32 0, i32 8
  %59 = load i32, i32* %selected61, align 4
  %60 = load double, double* %x, align 8
  %61 = load double, double* %y, align 8
  %sub62 = fsub double 1.000000e+00, %61
  call void @gimp_curve_set_point(%struct._GimpCurve* %57, i32 %59, double %60, double %sub62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %land.lhs.true, %if.else.44
  %62 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %63 = bitcast %struct._GimpCurve* %62 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_data_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call64)
  %64 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %64)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.end.43
  br label %sw.epilog

sw.bb.67:                                         ; preds = %cond.end.34
  %65 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grabbed68 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %65, i32 0, i32 13
  %66 = load i32, i32* %grabbed68, align 4
  %tobool69 = icmp ne i32 %66, 0
  br i1 %tobool69, label %if.then.70, label %if.end.139

if.then.70:                                       ; preds = %sw.bb.67
  %67 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call71 = call i32 @gimp_curve_get_n_samples(%struct._GimpCurve* %67)
  store i32 %call71, i32* %n_samples, align 4
  %68 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %68, i32 0, i32 9
  %69 = load double, double* %last_x, align 8
  %70 = load double, double* %x, align 8
  %cmp72 = fcmp ogt double %69, %70
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.then.70
  %71 = load double, double* %x, align 8
  store double %71, double* %x1, align 8
  %72 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_x75 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %72, i32 0, i32 9
  %73 = load double, double* %last_x75, align 8
  store double %73, double* %x2, align 8
  %74 = load double, double* %y, align 8
  store double %74, double* %y1, align 8
  %75 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %75, i32 0, i32 10
  %76 = load double, double* %last_y, align 8
  store double %76, double* %y2, align 8
  br label %if.end.79

if.else.76:                                       ; preds = %if.then.70
  %77 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_x77 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %77, i32 0, i32 9
  %78 = load double, double* %last_x77, align 8
  store double %78, double* %x1, align 8
  %79 = load double, double* %x, align 8
  store double %79, double* %x2, align 8
  %80 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_y78 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %80, i32 0, i32 10
  %81 = load double, double* %last_y78, align 8
  store double %81, double* %y1, align 8
  %82 = load double, double* %y, align 8
  store double %82, double* %y2, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.74
  %83 = load double, double* %x2, align 8
  %84 = load double, double* %x1, align 8
  %cmp80 = fcmp une double %83, %84
  br i1 %cmp80, label %if.then.82, label %if.else.134

if.then.82:                                       ; preds = %if.end.79
  %85 = load double, double* %x1, align 8
  %86 = load i32, i32* %n_samples, align 4
  %sub83 = sub nsw i32 %86, 1
  %conv84 = sitofp i32 %sub83 to double
  %mul85 = fmul double %85, %conv84
  %add86 = fadd double %mul85, 5.000000e-01
  %conv87 = fptosi double %add86 to i32
  store i32 %conv87, i32* %from, align 4
  %87 = load double, double* %x2, align 8
  %88 = load i32, i32* %n_samples, align 4
  %sub88 = sub nsw i32 %88, 1
  %conv89 = sitofp i32 %sub88 to double
  %mul90 = fmul double %87, %conv89
  %add91 = fadd double %mul90, 5.000000e-01
  %conv92 = fptosi double %add91 to i32
  store i32 %conv92, i32* %to, align 4
  %89 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %90 = bitcast %struct._GimpCurve* %89 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_data_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call93)
  %91 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %91)
  %92 = load i32, i32* %from, align 4
  store i32 %92, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.82
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %to, align 4
  %cmp95 = icmp sle i32 %93, %94
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load i32, i32* %i, align 4
  %conv97 = sitofp i32 %95 to double
  %96 = load i32, i32* %n_samples, align 4
  %sub98 = sub nsw i32 %96, 1
  %conv99 = sitofp i32 %sub98 to double
  %div100 = fdiv double %conv97, %conv99
  store double %div100, double* %xpos, align 8
  %97 = load double, double* %y1, align 8
  %98 = load double, double* %y2, align 8
  %99 = load double, double* %y1, align 8
  %sub101 = fsub double %98, %99
  %100 = load double, double* %xpos, align 8
  %101 = load double, double* %x1, align 8
  %sub102 = fsub double %100, %101
  %mul103 = fmul double %sub101, %sub102
  %102 = load double, double* %x2, align 8
  %103 = load double, double* %x1, align 8
  %sub104 = fsub double %102, %103
  %div105 = fdiv double %mul103, %sub104
  %add106 = fadd double %97, %div105
  store double %add106, double* %ypos, align 8
  %104 = load double, double* %xpos, align 8
  %cmp107 = fcmp ogt double %104, 1.000000e+00
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %for.body
  br label %cond.end.117

cond.false.110:                                   ; preds = %for.body
  %105 = load double, double* %xpos, align 8
  %cmp111 = fcmp olt double %105, 0.000000e+00
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.false.110
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.false.110
  %106 = load double, double* %xpos, align 8
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi double [ 0.000000e+00, %cond.true.113 ], [ %106, %cond.false.114 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.109
  %cond118 = phi double [ 1.000000e+00, %cond.true.109 ], [ %cond116, %cond.end.115 ]
  store double %cond118, double* %xpos, align 8
  %107 = load double, double* %ypos, align 8
  %cmp119 = fcmp ogt double %107, 1.000000e+00
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.117
  br label %cond.end.129

cond.false.122:                                   ; preds = %cond.end.117
  %108 = load double, double* %ypos, align 8
  %cmp123 = fcmp olt double %108, 0.000000e+00
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.false.122
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.false.122
  %109 = load double, double* %ypos, align 8
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.125
  %cond128 = phi double [ 0.000000e+00, %cond.true.125 ], [ %109, %cond.false.126 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.121
  %cond130 = phi double [ 1.000000e+00, %cond.true.121 ], [ %cond128, %cond.end.127 ]
  store double %cond130, double* %ypos, align 8
  %110 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %111 = load double, double* %xpos, align 8
  %112 = load double, double* %ypos, align 8
  %sub131 = fsub double 1.000000e+00, %112
  call void @gimp_curve_set_curve(%struct._GimpCurve* %110, double %111, double %sub131)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.129
  %113 = load i32, i32* %i, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %115 = bitcast %struct._GimpCurve* %114 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_data_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call132)
  %116 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %116)
  br label %if.end.136

if.else.134:                                      ; preds = %if.end.79
  %117 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %118 = load double, double* %x, align 8
  %119 = load double, double* %y, align 8
  %sub135 = fsub double 1.000000e+00, %119
  call void @gimp_curve_set_curve(%struct._GimpCurve* %117, double %118, double %sub135)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %for.end
  %120 = load double, double* %x, align 8
  %121 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_x137 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %121, i32 0, i32 9
  store double %120, double* %last_x137, align 8
  %122 = load double, double* %y, align 8
  %123 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %last_y138 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %123, i32 0, i32 10
  store double %122, double* %last_y138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.136, %sw.bb.67
  %124 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %124, i32 0, i32 7
  %125 = load i32, i32* %state, align 4
  %and = and i32 %125, 256
  %tobool140 = icmp ne i32 %and, 0
  br i1 %tobool140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.end.139
  store i32 130, i32* %new_cursor, align 4
  br label %if.end.143

if.else.142:                                      ; preds = %if.end.139
  store i32 86, i32* %new_cursor, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.141
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.34, %if.end.143, %if.end.66
  %126 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %127 = load i32, i32* %new_cursor, align 4
  call void @set_cursor(%struct._GimpCurveView* %126, i32 %127)
  %128 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %129 = load double, double* %x, align 8
  %130 = load double, double* %y, align 8
  call void @gimp_curve_view_set_cursor(%struct._GimpCurveView* %128, double %129, double %130)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_leave_notify(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %cevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cevent.addr = alloca %struct._GdkEventCrossing*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %cevent, %struct._GdkEventCrossing** %cevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @gimp_curve_view_unset_cursor(%struct._GimpCurveView* %3)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_view_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %view = alloca %struct._GimpCurveView*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %handled = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurveView*
  store %struct._GimpCurveView* %2, %struct._GimpCurveView** %view, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %curve2 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 2
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve2, align 8
  store %struct._GimpCurve* %4, %struct._GimpCurve** %curve, align 8
  store i32 0, i32* %handled, align 4
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %grabbed = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 13
  %6 = load i32, i32* %grabbed, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.56, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool3 = icmp ne %struct._GimpCurve* %7, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.56

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call5 = call i32 @gimp_curve_get_curve_type(%struct._GimpCurve* %8)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end.56

if.then:                                          ; preds = %land.lhs.true.4
  %9 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %9, i32 0, i32 8
  %10 = load i32, i32* %selected, align 4
  store i32 %10, i32* %i, align 4
  %11 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %12 = load i32, i32* %i, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %11, i32 %12, double* null, double* %y)
  %13 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %13, i32 0, i32 5
  %14 = load i32, i32* %keyval, align 4
  switch i32 %14, label %sw.default [
    i32 65361, label %sw.bb
    i32 65363, label %sw.bb.10
    i32 65362, label %sw.bb.23
    i32 65364, label %sw.bb.36
    i32 65535, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.then
  %15 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %16 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %16, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, i32* %handled, align 4
  %tobool7 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %20 = load i32, i32* %i, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %19, i32 %20, double* %x, double* null)
  %21 = load double, double* %x, align 8
  %cmp8 = fcmp oge double %21, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %22 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %23 = load i32, i32* %i, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %22, i32 %23)
  store i32 1, i32* %handled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %25 = load i32, i32* %i, align 4
  %add = add nsw i32 %25, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.21, %sw.bb.10
  %26 = load i32, i32* %i, align 4
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 2
  %28 = load i32, i32* %n_points, align 4
  %cmp12 = icmp slt i32 %26, %28
  br i1 %cmp12, label %land.rhs.13, label %land.end.16

land.rhs.13:                                      ; preds = %for.cond.11
  %29 = load i32, i32* %handled, align 4
  %tobool14 = icmp ne i32 %29, 0
  %lnot15 = xor i1 %tobool14, true
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.13, %for.cond.11
  %30 = phi i1 [ false, %for.cond.11 ], [ %lnot15, %land.rhs.13 ]
  br i1 %30, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %land.end.16
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %32 = load i32, i32* %i, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %31, i32 %32, double* %x, double* null)
  %33 = load double, double* %x, align 8
  %cmp18 = fcmp oge double %33, 0.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.17
  %34 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  %35 = load i32, i32* %i, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %34, i32 %35)
  store i32 1, i32* %handled, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.body.17
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end.22:                                       ; preds = %land.end.16
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then
  %37 = load double, double* %y, align 8
  %cmp24 = fcmp olt double %37, 1.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %sw.bb.23
  %38 = load double, double* %y, align 8
  %39 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %39, i32 0, i32 4
  %40 = load i32, i32* %state, align 4
  %and = and i32 %40, 1
  %tobool26 = icmp ne i32 %and, 0
  %cond = select i1 %tobool26, double 0x3FB0101010101010, double 0x3F70101010101010
  %add27 = fadd double %38, %cond
  store double %add27, double* %y, align 8
  %41 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %42 = load i32, i32* %i, align 4
  %43 = load double, double* %y, align 8
  %cmp28 = fcmp ogt double %43, 1.000000e+00
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  br label %cond.end.33

cond.false:                                       ; preds = %if.then.25
  %44 = load double, double* %y, align 8
  %cmp29 = fcmp olt double %44, 0.000000e+00
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %45 = load double, double* %y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond32 = phi double [ 0.000000e+00, %cond.true.30 ], [ %45, %cond.false.31 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi double [ 1.000000e+00, %cond.true ], [ %cond32, %cond.end ]
  call void @gimp_curve_move_point(%struct._GimpCurve* %41, i32 %42, double %cond34)
  store i32 1, i32* %handled, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end.33, %sw.bb.23
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.then
  %46 = load double, double* %y, align 8
  %cmp37 = fcmp ogt double %46, 0.000000e+00
  br i1 %cmp37, label %if.then.38, label %if.end.54

if.then.38:                                       ; preds = %sw.bb.36
  %47 = load double, double* %y, align 8
  %48 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state39 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %48, i32 0, i32 4
  %49 = load i32, i32* %state39, align 4
  %and40 = and i32 %49, 1
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, double 0x3FB0101010101010, double 0x3F70101010101010
  %sub43 = fsub double %47, %cond42
  store double %sub43, double* %y, align 8
  %50 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %51 = load i32, i32* %i, align 4
  %52 = load double, double* %y, align 8
  %cmp44 = fcmp ogt double %52, 1.000000e+00
  br i1 %cmp44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.then.38
  br label %cond.end.52

cond.false.46:                                    ; preds = %if.then.38
  %53 = load double, double* %y, align 8
  %cmp47 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false.46
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.false.46
  %54 = load double, double* %y, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi double [ 0.000000e+00, %cond.true.48 ], [ %54, %cond.false.49 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.45
  %cond53 = phi double [ 1.000000e+00, %cond.true.45 ], [ %cond51, %cond.end.50 ]
  call void @gimp_curve_move_point(%struct._GimpCurve* %50, i32 %51, double %cond53)
  store i32 1, i32* %handled, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.52, %sw.bb.36
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.then
  %55 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %56 = load i32, i32* %i, align 4
  call void @gimp_curve_delete_point(%struct._GimpCurve* %55, i32 %56)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.55, %if.end.54, %if.end.35, %for.end.22, %for.end
  br label %if.end.56

if.end.56:                                        ; preds = %sw.epilog, %land.lhs.true.4, %land.lhs.true, %entry
  %57 = load i32, i32* %handled, align 4
  %tobool57 = icmp ne i32 %57, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %58 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view, align 8
  call void @set_cursor(%struct._GimpCurveView* %58, i32 130)
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.56
  %59 = load i8*, i8** @gimp_curve_view_parent_class, align 8
  %60 = bitcast i8* %59 to %struct._GTypeClass*
  %call60 = call i64 @gtk_widget_get_type() #6
  %call61 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %60, i64 %call60)
  %61 = bitcast %struct._GTypeClass* %call61 to %struct._GtkWidgetClass*
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %61, i32 0, i32 32
  %62 = load i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %64 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call62 = call i32 %62(%struct._GtkWidget* %63, %struct._GdkEventKey* %64)
  store i32 %call62, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_cut_clipboard(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curve_view_cut_clipboard, i32 0, i32 0))
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 2
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool1 = icmp ne %struct._Gimp* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %5 = bitcast %struct._GimpCurveView* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %6)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  call void @gimp_curve_view_copy_clipboard(%struct._GimpCurveView* %7)
  %8 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve3 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %8, i32 0, i32 2
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %curve3, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %9, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_copy_clipboard(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %copy = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_curve_view_copy_clipboard, i32 0, i32 0))
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 2
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool1 = icmp ne %struct._Gimp* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %5 = bitcast %struct._GimpCurveView* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %6)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve3 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %7, i32 0, i32 2
  %8 = load %struct._GimpCurve*, %struct._GimpCurve** %curve3, align 8
  %9 = bitcast %struct._GimpCurve* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call %struct._GimpData* @gimp_data_duplicate(%struct._GimpData* %10)
  %11 = bitcast %struct._GimpData* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_curve_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpCurve*
  store %struct._GimpCurve* %12, %struct._GimpCurve** %copy, align 8
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %copy, align 8
  call void @gimp_clipboard_set_curve(%struct._Gimp* %14, %struct._GimpCurve* %15)
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %copy, align 8
  %17 = bitcast %struct._GimpCurve* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_paste_clipboard(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %copy = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_curve_view_paste_clipboard, i32 0, i32 0))
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 2
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool1 = icmp ne %struct._Gimp* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %5 = bitcast %struct._GimpCurveView* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %6)
  br label %if.end.13

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %gimp3 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %call4 = call %struct._GimpCurve* @gimp_clipboard_get_curve(%struct._Gimp* %8)
  store %struct._GimpCurve* %call4, %struct._GimpCurve** %copy, align 8
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %copy, align 8
  %tobool5 = icmp ne %struct._GimpCurve* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %copy, align 8
  %11 = bitcast %struct._GimpCurve* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %13 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve9 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %13, i32 0, i32 2
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve9, align 8
  %15 = bitcast %struct._GimpCurve* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %call12 = call i32 @gimp_config_copy(%struct._GimpConfig* %12, %struct._GimpConfig* %16, i32 0)
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %copy, align 8
  %18 = bitcast %struct._GimpCurve* %17 to i8*
  call void @g_object_unref(i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.6, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_paint_focus(%struct._GtkStyle*, %struct._GdkDrawable*, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_draw_grid(%struct._GimpCurveView* %view, %struct._cairo* %cr, i32 %width, i32 %height, i32 %border) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %y58 = alloca i32, align 4
  %x75 = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border, i32* %border.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_rows = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %1, i32 0, i32 6
  %2 = load i32, i32* %grid_rows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %4, 1
  %mul = mul nsw i32 %3, %sub
  %5 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_rows1 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %5, i32 0, i32 6
  %6 = load i32, i32* %grid_rows1, align 4
  %div = sdiv i32 %mul, %6
  store i32 %div, i32* %y, align 4
  %7 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_rows2 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %7, i32 0, i32 6
  %8 = load i32, i32* %grid_rows2, align 4
  %rem = srem i32 %8, 2
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_rows4 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %10, i32 0, i32 6
  %11 = load i32, i32* %grid_rows4, align 4
  %div5 = sdiv i32 %11, 2
  %cmp6 = icmp eq i32 %9, %div5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %border.addr, align 4
  %conv = sitofp i32 %13 to double
  %14 = load i32, i32* %border.addr, align 4
  %15 = load i32, i32* %y, align 4
  %add = add nsw i32 %14, %15
  %conv7 = sitofp i32 %add to double
  call void @cairo_move_to(%struct._cairo* %12, double %conv, double %conv7)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load i32, i32* %border.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %add8 = add nsw i32 %17, %18
  %sub9 = sub nsw i32 %add8, 1
  %conv10 = sitofp i32 %sub9 to double
  %19 = load i32, i32* %border.addr, align 4
  %20 = load i32, i32* %y, align 4
  %add11 = add nsw i32 %19, %20
  %conv12 = sitofp i32 %add11 to double
  call void @cairo_line_to(%struct._cairo* %16, double %conv10, double %conv12)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.40, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_columns = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %23, i32 0, i32 7
  %24 = load i32, i32* %grid_columns, align 4
  %cmp14 = icmp slt i32 %22, %24
  br i1 %cmp14, label %for.body.16, label %for.end.42

for.body.16:                                      ; preds = %for.cond.13
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %width.addr, align 4
  %sub17 = sub nsw i32 %26, 1
  %mul18 = mul nsw i32 %25, %sub17
  %27 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_columns19 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %27, i32 0, i32 7
  %28 = load i32, i32* %grid_columns19, align 4
  %div20 = sdiv i32 %mul18, %28
  store i32 %div20, i32* %x, align 4
  %29 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_columns21 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %29, i32 0, i32 7
  %30 = load i32, i32* %grid_columns21, align 4
  %rem22 = srem i32 %30, 2
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %for.body.16
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_columns26 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %32, i32 0, i32 7
  %33 = load i32, i32* %grid_columns26, align 4
  %div27 = sdiv i32 %33, 2
  %cmp28 = icmp eq i32 %31, %div27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.25
  br label %for.inc.40

if.end.31:                                        ; preds = %land.lhs.true.25, %for.body.16
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %35 = load i32, i32* %border.addr, align 4
  %36 = load i32, i32* %x, align 4
  %add32 = add nsw i32 %35, %36
  %conv33 = sitofp i32 %add32 to double
  %37 = load i32, i32* %border.addr, align 4
  %conv34 = sitofp i32 %37 to double
  call void @cairo_move_to(%struct._cairo* %34, double %conv33, double %conv34)
  %38 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %39 = load i32, i32* %border.addr, align 4
  %40 = load i32, i32* %x, align 4
  %add35 = add nsw i32 %39, %40
  %conv36 = sitofp i32 %add35 to double
  %41 = load i32, i32* %border.addr, align 4
  %42 = load i32, i32* %height.addr, align 4
  %add37 = add nsw i32 %41, %42
  %sub38 = sub nsw i32 %add37, 1
  %conv39 = sitofp i32 %sub38 to double
  call void @cairo_line_to(%struct._cairo* %38, double %conv36, double %conv39)
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.31, %if.then.30
  %43 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %43, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.13

for.end.42:                                       ; preds = %for.cond.13
  %44 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %draw_base_line = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %44, i32 0, i32 5
  %45 = load i32, i32* %draw_base_line, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %for.end.42
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %47 = load i32, i32* %border.addr, align 4
  %conv44 = sitofp i32 %47 to double
  %48 = load i32, i32* %border.addr, align 4
  %49 = load i32, i32* %height.addr, align 4
  %add45 = add nsw i32 %48, %49
  %sub46 = sub nsw i32 %add45, 1
  %conv47 = sitofp i32 %sub46 to double
  call void @cairo_move_to(%struct._cairo* %46, double %conv44, double %conv47)
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %51 = load i32, i32* %border.addr, align 4
  %52 = load i32, i32* %width.addr, align 4
  %add48 = add nsw i32 %51, %52
  %sub49 = sub nsw i32 %add48, 1
  %conv50 = sitofp i32 %sub49 to double
  %53 = load i32, i32* %border.addr, align 4
  %conv51 = sitofp i32 %53 to double
  call void @cairo_line_to(%struct._cairo* %50, double %conv50, double %conv51)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.43, %for.end.42
  %54 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %54, double 6.000000e-01)
  %55 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %55)
  %56 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_rows53 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %56, i32 0, i32 6
  %57 = load i32, i32* %grid_rows53, align 4
  %rem54 = srem i32 %57, 2
  %cmp55 = icmp eq i32 %rem54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %if.end.52
  %58 = load i32, i32* %height.addr, align 4
  %sub59 = sub nsw i32 %58, 1
  %div60 = sdiv i32 %sub59, 2
  store i32 %div60, i32* %y58, align 4
  %59 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %60 = load i32, i32* %border.addr, align 4
  %conv61 = sitofp i32 %60 to double
  %61 = load i32, i32* %border.addr, align 4
  %62 = load i32, i32* %y58, align 4
  %add62 = add nsw i32 %61, %62
  %conv63 = sitofp i32 %add62 to double
  call void @cairo_move_to(%struct._cairo* %59, double %conv61, double %conv63)
  %63 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %64 = load i32, i32* %border.addr, align 4
  %65 = load i32, i32* %width.addr, align 4
  %add64 = add nsw i32 %64, %65
  %sub65 = sub nsw i32 %add64, 1
  %conv66 = sitofp i32 %sub65 to double
  %66 = load i32, i32* %border.addr, align 4
  %67 = load i32, i32* %y58, align 4
  %add67 = add nsw i32 %66, %67
  %conv68 = sitofp i32 %add67 to double
  call void @cairo_line_to(%struct._cairo* %63, double %conv66, double %conv68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.57, %if.end.52
  %68 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %grid_columns70 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %68, i32 0, i32 7
  %69 = load i32, i32* %grid_columns70, align 4
  %rem71 = srem i32 %69, 2
  %cmp72 = icmp eq i32 %rem71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %if.end.69
  %70 = load i32, i32* %width.addr, align 4
  %sub76 = sub nsw i32 %70, 1
  %div77 = sdiv i32 %sub76, 2
  store i32 %div77, i32* %x75, align 4
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %72 = load i32, i32* %border.addr, align 4
  %73 = load i32, i32* %x75, align 4
  %add78 = add nsw i32 %72, %73
  %conv79 = sitofp i32 %add78 to double
  %74 = load i32, i32* %border.addr, align 4
  %conv80 = sitofp i32 %74 to double
  call void @cairo_move_to(%struct._cairo* %71, double %conv79, double %conv80)
  %75 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %76 = load i32, i32* %border.addr, align 4
  %77 = load i32, i32* %x75, align 4
  %add81 = add nsw i32 %76, %77
  %conv82 = sitofp i32 %add81 to double
  %78 = load i32, i32* %border.addr, align 4
  %79 = load i32, i32* %height.addr, align 4
  %add83 = add nsw i32 %78, %79
  %sub84 = sub nsw i32 %add83, 1
  %conv85 = sitofp i32 %sub84 to double
  call void @cairo_line_to(%struct._cairo* %75, double %conv82, double %conv85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.74, %if.end.69
  %80 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %80, double 1.000000e+00)
  %81 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %81)
  ret void
}

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_rotate(%struct._cairo*, double) #1

declare void @cairo_restore(%struct._cairo*) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_draw_curve(%struct._GimpCurveView* %view, %struct._cairo* %cr, %struct._GimpCurve* %curve, i32 %width, i32 %height, i32 %border) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border.addr = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border, i32* %border.addr, align 4
  store double 0.000000e+00, double* %x, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %call = call double @gimp_curve_map_value(%struct._GimpCurve* %0, double 0.000000e+00)
  %sub = fsub double 1.000000e+00, %call
  store double %sub, double* %y, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load i32, i32* %border.addr, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %conv2 = sitofp i32 %sub1 to double
  %4 = load double, double* %x, align 8
  %mul = fmul double %conv2, %4
  %add = fadd double %conv, %mul
  %5 = load i32, i32* %border.addr, align 4
  %conv3 = sitofp i32 %5 to double
  %6 = load i32, i32* %height.addr, align 4
  %sub4 = sub nsw i32 %6, 1
  %conv5 = sitofp i32 %sub4 to double
  %7 = load double, double* %y, align 8
  %mul6 = fmul double %conv5, %7
  %add7 = fadd double %conv3, %mul6
  call void @cairo_move_to(%struct._cairo* %1, double %add, double %add7)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %9 to double
  %div = fdiv double %conv9, 2.550000e+02
  store double %div, double* %x, align 8
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %11 = load double, double* %x, align 8
  %call10 = call double @gimp_curve_map_value(%struct._GimpCurve* %10, double %11)
  %sub11 = fsub double 1.000000e+00, %call10
  store double %sub11, double* %y, align 8
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %border.addr, align 4
  %conv12 = sitofp i32 %13 to double
  %14 = load i32, i32* %width.addr, align 4
  %sub13 = sub nsw i32 %14, 1
  %conv14 = sitofp i32 %sub13 to double
  %15 = load double, double* %x, align 8
  %mul15 = fmul double %conv14, %15
  %add16 = fadd double %conv12, %mul15
  %16 = load i32, i32* %border.addr, align 4
  %conv17 = sitofp i32 %16 to double
  %17 = load i32, i32* %height.addr, align 4
  %sub18 = sub nsw i32 %17, 1
  %conv19 = sitofp i32 %sub18 to double
  %18 = load double, double* %y, align 8
  %mul20 = fmul double %conv19, %18
  %add21 = fadd double %conv17, %mul20
  call void @cairo_line_to(%struct._cairo* %12, double %add16, double %add21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %20)
  ret void
}

declare void @gimp_cairo_set_source_rgb(%struct._cairo*, %struct._GimpRGB*) #1

declare i32 @gimp_curve_get_curve_type(%struct._GimpCurve*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_draw_point(%struct._GimpCurveView* %view, %struct._cairo* %cr, i32 %i, i32 %width, i32 %height, i32 %border) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %i.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border.addr = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border, i32* %border.addr, align 4
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 2
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %2 = load i32, i32* %i.addr, align 4
  call void @gimp_curve_get_point(%struct._GimpCurve* %1, i32 %2, double* %x, double* %y)
  %3 = load double, double* %x, align 8
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load double, double* %y, align 8
  %sub = fsub double 1.000000e+00, %4
  store double %sub, double* %y, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* %border.addr, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %7, 1
  %conv2 = sitofp i32 %sub1 to double
  %8 = load double, double* %x, align 8
  %mul = fmul double %conv2, %8
  %add = fadd double %conv, %mul
  %add3 = fadd double %add, 3.000000e+00
  %9 = load i32, i32* %border.addr, align 4
  %conv4 = sitofp i32 %9 to double
  %10 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %10, 1
  %conv6 = sitofp i32 %sub5 to double
  %11 = load double, double* %y, align 8
  %mul7 = fmul double %conv6, %11
  %add8 = fadd double %conv4, %mul7
  call void @cairo_move_to(%struct._cairo* %5, double %add3, double %add8)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %border.addr, align 4
  %conv9 = sitofp i32 %13 to double
  %14 = load i32, i32* %width.addr, align 4
  %sub10 = sub nsw i32 %14, 1
  %conv11 = sitofp i32 %sub10 to double
  %15 = load double, double* %x, align 8
  %mul12 = fmul double %conv11, %15
  %add13 = fadd double %conv9, %mul12
  %16 = load i32, i32* %border.addr, align 4
  %conv14 = sitofp i32 %16 to double
  %17 = load i32, i32* %height.addr, align 4
  %sub15 = sub nsw i32 %17, 1
  %conv16 = sitofp i32 %sub15 to double
  %18 = load double, double* %y, align 8
  %mul17 = fmul double %conv16, %18
  %add18 = fadd double %conv14, %mul17
  call void @cairo_arc(%struct._cairo* %12, double %add13, double %add18, double 3.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @cairo_push_group(%struct._cairo*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_set_line_join(%struct._cairo*, i32) #1

declare void @cairo_pop_group_to_source(%struct._cairo*) #1

declare void @cairo_paint_with_alpha(%struct._cairo*, double) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare double @gimp_curve_map_value(%struct._GimpCurve*, double) #1

declare void @gimp_curve_get_point(%struct._GimpCurve*, i32, double*, double*) #1

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

declare i32 @gimp_curve_get_closest_point(%struct._GimpCurve*, double) #1

; Function Attrs: nounwind uwtable
define internal void @set_cursor(%struct._GimpCurveView* %view, i32 %new_cursor) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %new_cursor.addr = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store i32 %new_cursor, i32* %new_cursor.addr, align 4
  %0 = load i32, i32* %new_cursor.addr, align 4
  %1 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_type = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %1, i32 0, i32 14
  %2 = load i32, i32* %cursor_type, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %4 = bitcast %struct._GimpCurveView* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %5)
  store %struct._GdkDisplay* %call2, %struct._GdkDisplay** %display, align 8
  %6 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %7 = load i32, i32* %new_cursor.addr, align 4
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %6, i32 %7)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %8 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %9 = bitcast %struct._GimpCurveView* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %10)
  %11 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call6, %struct._GdkCursor* %11)
  %12 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %12)
  %13 = load i32, i32* %new_cursor.addr, align 4
  %14 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_type7 = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %14, i32 0, i32 14
  store i32 %13, i32* %cursor_type7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_curve_set_point(%struct._GimpCurve*, i32, double, double) #1

declare void @gimp_curve_set_curve(%struct._GimpCurve*, double, double) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare void @gimp_data_freeze(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i32 @gimp_curve_get_n_points(%struct._GimpCurve*) #1

declare void @gimp_data_thaw(%struct._GimpData*) #1

declare i32 @gimp_curve_get_n_samples(%struct._GimpCurve*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_set_cursor(%struct._GimpCurveView* %view, double %x, double %y) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %1, i32 0, i32 21
  store double %0, double* %cursor_x, align 8
  %2 = load double, double* %y.addr, align 8
  %3 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %3, i32 0, i32 22
  store double %2, double* %cursor_y, align 8
  %4 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %5 = bitcast %struct._GimpCurveView* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_view_unset_cursor(%struct._GimpCurveView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCurveView*, align 8
  store %struct._GimpCurveView* %view, %struct._GimpCurveView** %view.addr, align 8
  %0 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %0, i32 0, i32 21
  store double -1.000000e+00, double* %cursor_x, align 8
  %1 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCurveView, %struct._GimpCurveView* %1, i32 0, i32 22
  store double -1.000000e+00, double* %cursor_y, align 8
  %2 = load %struct._GimpCurveView*, %struct._GimpCurveView** %view.addr, align 8
  %3 = bitcast %struct._GimpCurveView* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %4)
  ret void
}

declare void @gimp_curve_move_point(%struct._GimpCurve*, i32, double) #1

declare void @gimp_curve_delete_point(%struct._GimpCurve*, i32) #1

declare void @g_printerr(i8*, ...) #1

declare void @gtk_widget_error_bell(%struct._GtkWidget*) #1

declare void @gimp_curve_reset(%struct._GimpCurve*, i32) #1

declare %struct._GimpData* @gimp_data_duplicate(%struct._GimpData*) #1

declare void @gimp_clipboard_set_curve(%struct._Gimp*, %struct._GimpCurve*) #1

declare %struct._GimpCurve* @gimp_clipboard_get_curve(%struct._Gimp*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
