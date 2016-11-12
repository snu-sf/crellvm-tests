; ModuleID = './app/widgets/gimphistogramview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_histogram_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpHistogramView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_histogram_view_set_histogram = private unnamed_addr constant [34 x i8] c"gimp_histogram_view_set_histogram\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_HISTOGRAM_VIEW (view)\00", align 1
@__func__.gimp_histogram_view_get_histogram = private unnamed_addr constant [34 x i8] c"gimp_histogram_view_get_histogram\00", align 1
@__func__.gimp_histogram_view_set_background = private unnamed_addr constant [35 x i8] c"gimp_histogram_view_set_background\00", align 1
@__func__.gimp_histogram_view_get_background = private unnamed_addr constant [35 x i8] c"gimp_histogram_view_get_background\00", align 1
@__func__.gimp_histogram_view_set_channel = private unnamed_addr constant [32 x i8] c"gimp_histogram_view_set_channel\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@__func__.gimp_histogram_view_get_channel = private unnamed_addr constant [32 x i8] c"gimp_histogram_view_get_channel\00", align 1
@__func__.gimp_histogram_view_set_scale = private unnamed_addr constant [30 x i8] c"gimp_histogram_view_set_scale\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@__func__.gimp_histogram_view_get_scale = private unnamed_addr constant [30 x i8] c"gimp_histogram_view_get_scale\00", align 1
@__func__.gimp_histogram_view_set_range = private unnamed_addr constant [30 x i8] c"gimp_histogram_view_set_range\00", align 1
@histogram_view_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_histogram_view_get_range = private unnamed_addr constant [30 x i8] c"gimp_histogram_view_get_range\00", align 1
@gimp_histogram_view_parent_class = internal global i8* null, align 8
@GimpHistogramView_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"range-changed\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"subdivisions\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimphistogramview.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_histogram_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_histogram_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_drawing_area_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 760, void (i8*, i8*)* bitcast (void (i8*)* @gimp_histogram_view_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHistogramView*)* @gimp_histogram_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_histogram_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_histogram_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_histogram_view_parent_class, align 8
  %1 = load i32, i32* @GimpHistogramView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHistogramView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHistogramViewClass*
  call void @gimp_histogram_view_class_init(%struct._GimpHistogramViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_init(%struct._GimpHistogramView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %0, i32 0, i32 1
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram, align 8
  %1 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %1, i32 0, i32 2
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram, align 8
  %2 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %2, i32 0, i32 5
  store i32 0, i32* %start, align 4
  %3 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %3, i32 0, i32 6
  store i32 255, i32* %end, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_histogram_view_new(i32 %range) #3 {
entry:
  %range.addr = alloca i32, align 4
  %view = alloca %struct._GtkWidget*, align 8
  store i32 %range, i32* %range.addr, align 4
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %0, %struct._GtkWidget** %view, align 8
  %1 = load i32, i32* %range.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %2, i32 800)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  ret %struct._GtkWidget* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView* %view, %struct._GimpHistogram* %histogram) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_histogram_view_set_histogram, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 1
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram11, align 8
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp12 = icmp ne %struct._GimpHistogram* %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram14 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %16, i32 0, i32 1
  %17 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram14, align 8
  %tobool15 = icmp ne %struct._GimpHistogram* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.13
  %18 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram17 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %18, i32 0, i32 1
  %19 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram17, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.13
  %20 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %21 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram19 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %21, i32 0, i32 1
  store %struct._GimpHistogram* %20, %struct._GimpHistogram** %histogram19, align 8
  %22 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %tobool20 = icmp ne %struct._GimpHistogram* %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  %23 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %call22 = call %struct._GimpHistogram* @gimp_histogram_ref(%struct._GimpHistogram* %23)
  %24 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %24, i32 0, i32 3
  %25 = load i32, i32* %channel, align 4
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %call23 = call i32 @gimp_histogram_n_channels(%struct._GimpHistogram* %26)
  %cmp24 = icmp uge i32 %25, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  %27 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %27, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %do.end
  %28 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %29 = bitcast %struct._GimpHistogramView* %28 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call29)
  %30 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %30)
  br label %return

return:                                           ; preds = %if.end.28, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

declare %struct._GimpHistogram* @gimp_histogram_ref(%struct._GimpHistogram*) #1

declare i32 @gimp_histogram_n_channels(%struct._GimpHistogram*) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %view, i32 %channel) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %channel.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_histogram_view_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %channel.addr, align 4
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %channel11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 3
  %15 = load i32, i32* %channel11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %17 = bitcast %struct._GimpHistogramView* %16 to i8*
  %18 = load i32, i32* %channel.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %18, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpHistogram* @gimp_histogram_view_get_histogram(%struct._GimpHistogramView* %view) #3 {
entry:
  %retval = alloca %struct._GimpHistogram*, align 8
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_histogram_view_get_histogram, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 1
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  store %struct._GimpHistogram* %14, %struct._GimpHistogram** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %retval
  ret %struct._GimpHistogram* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %view, %struct._GimpHistogram* %histogram) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_histogram_view_set_background, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 2
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp11 = icmp ne %struct._GimpHistogram* %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram13 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %16, i32 0, i32 2
  %17 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram13, align 8
  %tobool14 = icmp ne %struct._GimpHistogram* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.12
  %18 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram16 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %18, i32 0, i32 2
  %19 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram16, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.12
  %20 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %21 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram18 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %21, i32 0, i32 2
  store %struct._GimpHistogram* %20, %struct._GimpHistogram** %bg_histogram18, align 8
  %22 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %tobool19 = icmp ne %struct._GimpHistogram* %22, null
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.17
  %23 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %call21 = call %struct._GimpHistogram* @gimp_histogram_ref(%struct._GimpHistogram* %23)
  %24 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %24, i32 0, i32 3
  %25 = load i32, i32* %channel, align 4
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %call22 = call i32 @gimp_histogram_n_channels(%struct._GimpHistogram* %26)
  %cmp23 = icmp uge i32 %25, %call22
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  %27 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %27, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %do.end
  %28 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %29 = bitcast %struct._GimpHistogramView* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_widget_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %30)
  br label %return

return:                                           ; preds = %if.end.27, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpHistogram* @gimp_histogram_view_get_background(%struct._GimpHistogramView* %view) #3 {
entry:
  %retval = alloca %struct._GimpHistogram*, align 8
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_histogram_view_get_background, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 2
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  store %struct._GimpHistogram* %14, %struct._GimpHistogram** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %retval
  ret %struct._GimpHistogram* %15
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_histogram_view_get_channel(%struct._GimpHistogramView* %view) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_histogram_view_get_channel, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 3
  %14 = load i32, i32* %channel, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_set_scale(%struct._GimpHistogramView* %view, i32 %scale) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %scale.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_histogram_view_set_scale, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %scale.addr, align 4
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %scale11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 4
  %15 = load i32, i32* %scale11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %17 = bitcast %struct._GimpHistogramView* %16 to i8*
  %18 = load i32, i32* %scale.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %18, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_histogram_view_get_scale(%struct._GimpHistogramView* %view) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_histogram_view_get_scale, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %scale = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 4
  %14 = load i32, i32* %scale, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %view, i32 %start, i32 %end) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_histogram_view_set_range, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.38

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %start11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 5
  %14 = load i32, i32* %start11, align 4
  %15 = load i32, i32* %start.addr, align 4
  %16 = load i32, i32* %end.addr, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %17 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %18 = load i32, i32* %end.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  %cmp13 = icmp ne i32 %14, %cond
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %19 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %end14 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %19, i32 0, i32 6
  %20 = load i32, i32* %end14, align 4
  %21 = load i32, i32* %start.addr, align 4
  %22 = load i32, i32* %end.addr, align 4
  %cmp15 = icmp sgt i32 %21, %22
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %lor.lhs.false
  %23 = load i32, i32* %start.addr, align 4
  br label %cond.end.18

cond.false.17:                                    ; preds = %lor.lhs.false
  %24 = load i32, i32* %end.addr, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i32 [ %23, %cond.true.16 ], [ %24, %cond.false.17 ]
  %cmp20 = icmp ne i32 %20, %cond19
  br i1 %cmp20, label %if.then.21, label %if.end.38

if.then.21:                                       ; preds = %cond.end.18, %cond.end
  %25 = load i32, i32* %start.addr, align 4
  %26 = load i32, i32* %end.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.then.21
  %27 = load i32, i32* %start.addr, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.21
  %28 = load i32, i32* %end.addr, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %27, %cond.true.23 ], [ %28, %cond.false.24 ]
  %29 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %start27 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %29, i32 0, i32 5
  store i32 %cond26, i32* %start27, align 4
  %30 = load i32, i32* %start.addr, align 4
  %31 = load i32, i32* %end.addr, align 4
  %cmp28 = icmp sgt i32 %30, %31
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.25
  %32 = load i32, i32* %start.addr, align 4
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.25
  %33 = load i32, i32* %end.addr, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %32, %cond.true.29 ], [ %33, %cond.false.30 ]
  %34 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %end33 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %34, i32 0, i32 6
  store i32 %cond32, i32* %end33, align 4
  %35 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %36 = bitcast %struct._GimpHistogramView* %35 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_widget_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %37)
  %38 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %39 = bitcast %struct._GimpHistogramView* %38 to i8*
  %40 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @histogram_view_signals, i32 0, i64 0), align 4
  %41 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %start36 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %41, i32 0, i32 5
  %42 = load i32, i32* %start36, align 4
  %43 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %end37 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %43, i32 0, i32 6
  %44 = load i32, i32* %end37, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %39, i32 %40, i32 0, i32 %42, i32 %44)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.9, %cond.end.31, %cond.end.18
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_view_get_range(%struct._GimpHistogramView* %view, i32* %start, i32* %end) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %start.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32* %start, i32** %start.addr, align 8
  store i32* %end, i32** %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %1 = bitcast %struct._GimpHistogramView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_histogram_view_get_range, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %start.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %start13 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 5
  %15 = load i32, i32* %start13, align 4
  %16 = load i32*, i32** %start.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i32*, i32** %end.addr, align 8
  %tobool15 = icmp ne i32* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %end17 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %18, i32 0, i32 6
  %19 = load i32, i32* %end17, align 4
  %20 = load i32*, i32** %end.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.16, %if.end.14
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_class_init(%struct._GimpHistogramViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHistogramViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpHistogramViewClass* %klass, %struct._GimpHistogramViewClass** %klass.addr, align 8
  %0 = load %struct._GimpHistogramViewClass*, %struct._GimpHistogramViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHistogramViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpHistogramViewClass*, %struct._GimpHistogramViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpHistogramViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpHistogramViewClass*, %struct._GimpHistogramViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpHistogramViewClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i64 %8, i32 1, i32 752, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__INT_INT, i64 4, i32 2, i64 24, i64 24)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @histogram_view_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_histogram_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_histogram_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_histogram_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_histogram_view_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_histogram_view_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_histogram_view_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_histogram_view_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_histogram_view_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %17 = load %struct._GimpHistogramViewClass*, %struct._GimpHistogramViewClass** %klass.addr, align 8
  %range_changed = getelementptr inbounds %struct._GimpHistogramViewClass, %struct._GimpHistogramViewClass* %17, i32 0, i32 1
  store void (%struct._GimpHistogramView*, i32, i32)* null, void (%struct._GimpHistogramView*, i32, i32)** %range_changed, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_histogram_channel_get_type() #7
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 1, %struct._GParamSpec* %call5)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_histogram_scale_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 2, %struct._GParamSpec* %call7)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 32, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 3, %struct._GParamSpec* %call8)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1, i32 64, i32 5, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 4, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %3, i32 0, i32 1
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool = icmp ne %struct._GimpHistogram* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram2 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %5, i32 0, i32 1
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram2, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %6)
  %7 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram3 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %7, i32 0, i32 1
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %8, i32 0, i32 2
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool4 = icmp ne %struct._GimpHistogram* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram6 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %10, i32 0, i32 2
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram6, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %11)
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram7 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %12, i32 0, i32 2
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %bg_histogram7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_histogram_view_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %5, i32 0, i32 3
  %6 = load i32, i32* %channel, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %scale = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %8, i32 0, i32 4
  %9 = load i32, i32* %scale, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %11, i32 0, i32 7
  %12 = load i32, i32* %border_width, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %subdivisions = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 8
  %15 = load i32, i32* %subdivisions, align 4
  call void @g_value_set_int(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %19, i8* %21, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %5, i32 0, i32 3
  store i32 %call2, i32* %channel, align 4
  %6 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %7 = bitcast %struct._GimpHistogramView* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %9)
  %10 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %scale = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %10, i32 0, i32 4
  store i32 %call6, i32* %scale, align 4
  %11 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %12 = bitcast %struct._GimpHistogramView* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %13)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %15, i32 0, i32 7
  store i32 %call10, i32* %border_width, align 4
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %17 = bitcast %struct._GimpHistogramView* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %18)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_int(%struct._GValue* %19)
  %20 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %subdivisions = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %20, i32 0, i32 8
  store i32 %call14, i32* %subdivisions, align 4
  %21 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %22 = bitcast %struct._GimpHistogramView* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %23)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %24, %struct._GObject** %_glib__object, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %25, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = load i32, i32* %property_id.addr, align 4
  store i32 %26, i32* %_glib__property_id, align 4
  %27 = load i32, i32* %_glib__property_id, align 4
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = bitcast %struct._GParamSpec* %30 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %33)
  %34 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %37)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %27, i8* %29, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.9, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %3, i32 0, i32 7
  %4 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 64, %mul
  %5 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %5, i32 0, i32 0
  store i32 %add, i32* %width, align 4
  %6 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width2 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %6, i32 0, i32 7
  %7 = load i32, i32* %border_width2, align 4
  %mul3 = mul nsw i32 2, %7
  %add4 = add nsw i32 64, %mul3
  %8 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %8, i32 0, i32 1
  store i32 %add4, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_view_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %x = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %max = alloca double, align 8
  %bg_max = alloca double, align 8
  %xstop = alloca i32, align 4
  %color_in = alloca %struct._GdkColor*, align 8
  %color_out = alloca %struct._GdkColor*, align 8
  %bg_color_in = alloca %struct._GdkColor*, align 8
  %bg_color_out = alloca %struct._GdkColor*, align 8
  %rgb_color = alloca [3 x %struct._GdkColor], align 16
  %in_selection = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  store double 0.000000e+00, double* %max, align 8
  store double 0.000000e+00, double* %bg_max, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %call4 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call3)
  store %struct._cairo* %call4, %struct._cairo** %cr, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %6, i32 0, i32 4
  %7 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %5, %struct._GdkRegion* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %10, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %9, %struct._GdkColor* %arrayidx)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %12, %struct._GdkRectangle* %allocation)
  %13 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %13, i32 0, i32 7
  %14 = load i32, i32* %border_width, align 4
  store i32 %14, i32* %border, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %15 = load i32, i32* %width5, align 4
  %16 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %16
  %sub = sub nsw i32 %15, %mul
  store i32 %sub, i32* %width, align 4
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %17 = load i32, i32* %height6, align 4
  %18 = load i32, i32* %border, align 4
  %mul7 = mul nsw i32 2, %18
  %sub8 = sub nsw i32 %17, %mul7
  store i32 %sub8, i32* %height, align 4
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %19, double 1.000000e+00)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_cap(%struct._cairo* %20, i32 2)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %21, double 5.000000e-01, double 5.000000e-01)
  %22 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %23 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %23, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %22, %struct._GdkColor* %arrayidx9)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %25 = load i32, i32* %border, align 4
  %conv = sitofp i32 %25 to double
  %26 = load i32, i32* %border, align 4
  %conv10 = sitofp i32 %26 to double
  %27 = load i32, i32* %width, align 4
  %sub11 = sub nsw i32 %27, 1
  %conv12 = sitofp i32 %sub11 to double
  %28 = load i32, i32* %height, align 4
  %sub13 = sub nsw i32 %28, 1
  %conv14 = sitofp i32 %sub13 to double
  call void @cairo_rectangle(%struct._cairo* %24, double %conv, double %conv10, double %conv12, double %conv14)
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %29)
  %30 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %30, i32 0, i32 1
  %31 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool = icmp ne %struct._GimpHistogram* %31, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %32 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %32, i32 0, i32 2
  %33 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool15 = icmp ne %struct._GimpHistogram* %33, null
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %34)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %35 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %35, i32 0, i32 5
  %36 = load i32, i32* %start, align 4
  %37 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %37, i32 0, i32 6
  %38 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %36, %38
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %39 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start17 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %39, i32 0, i32 5
  %40 = load i32, i32* %start17, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %41 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end18 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %41, i32 0, i32 6
  %42 = load i32, i32* %end18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %42, %cond.false ]
  %cmp19 = icmp sgt i32 %cond, 255
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.49

cond.false.22:                                    ; preds = %cond.end
  %43 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start23 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %43, i32 0, i32 5
  %44 = load i32, i32* %start23, align 4
  %45 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end24 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %45, i32 0, i32 6
  %46 = load i32, i32* %end24, align 4
  %cmp25 = icmp slt i32 %44, %46
  br i1 %cmp25, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.false.22
  %47 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start28 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %47, i32 0, i32 5
  %48 = load i32, i32* %start28, align 4
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.false.22
  %49 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end30 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %49, i32 0, i32 6
  %50 = load i32, i32* %end30, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.27
  %cond32 = phi i32 [ %48, %cond.true.27 ], [ %50, %cond.false.29 ]
  %cmp33 = icmp slt i32 %cond32, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.31
  br label %cond.end.47

cond.false.36:                                    ; preds = %cond.end.31
  %51 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start37 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %51, i32 0, i32 5
  %52 = load i32, i32* %start37, align 4
  %53 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end38 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %53, i32 0, i32 6
  %54 = load i32, i32* %end38, align 4
  %cmp39 = icmp slt i32 %52, %54
  br i1 %cmp39, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.false.36
  %55 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start42 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %55, i32 0, i32 5
  %56 = load i32, i32* %start42, align 4
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.false.36
  %57 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end44 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %57, i32 0, i32 6
  %58 = load i32, i32* %end44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i32 [ %56, %cond.true.41 ], [ %58, %cond.false.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.35
  %cond48 = phi i32 [ 0, %cond.true.35 ], [ %cond46, %cond.end.45 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.21
  %cond50 = phi i32 [ 255, %cond.true.21 ], [ %cond48, %cond.end.47 ]
  store i32 %cond50, i32* %x1, align 4
  %59 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start51 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %59, i32 0, i32 5
  %60 = load i32, i32* %start51, align 4
  %61 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end52 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %61, i32 0, i32 6
  %62 = load i32, i32* %end52, align 4
  %cmp53 = icmp sgt i32 %60, %62
  br i1 %cmp53, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %cond.end.49
  %63 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start56 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %63, i32 0, i32 5
  %64 = load i32, i32* %start56, align 4
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.end.49
  %65 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end58 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %65, i32 0, i32 6
  %66 = load i32, i32* %end58, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.55
  %cond60 = phi i32 [ %64, %cond.true.55 ], [ %66, %cond.false.57 ]
  %cmp61 = icmp sgt i32 %cond60, 255
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.59
  br label %cond.end.91

cond.false.64:                                    ; preds = %cond.end.59
  %67 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start65 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %67, i32 0, i32 5
  %68 = load i32, i32* %start65, align 4
  %69 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end66 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %69, i32 0, i32 6
  %70 = load i32, i32* %end66, align 4
  %cmp67 = icmp sgt i32 %68, %70
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.false.64
  %71 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start70 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %71, i32 0, i32 5
  %72 = load i32, i32* %start70, align 4
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.false.64
  %73 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end72 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %73, i32 0, i32 6
  %74 = load i32, i32* %end72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi i32 [ %72, %cond.true.69 ], [ %74, %cond.false.71 ]
  %cmp75 = icmp slt i32 %cond74, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.73
  br label %cond.end.89

cond.false.78:                                    ; preds = %cond.end.73
  %75 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start79 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %75, i32 0, i32 5
  %76 = load i32, i32* %start79, align 4
  %77 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end80 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %77, i32 0, i32 6
  %78 = load i32, i32* %end80, align 4
  %cmp81 = icmp sgt i32 %76, %78
  br i1 %cmp81, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %cond.false.78
  %79 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start84 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %79, i32 0, i32 5
  %80 = load i32, i32* %start84, align 4
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.false.78
  %81 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end86 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %81, i32 0, i32 6
  %82 = load i32, i32* %end86, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.83
  %cond88 = phi i32 [ %80, %cond.true.83 ], [ %82, %cond.false.85 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.77
  %cond90 = phi i32 [ 0, %cond.true.77 ], [ %cond88, %cond.end.87 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.63
  %cond92 = phi i32 [ 255, %cond.true.63 ], [ %cond90, %cond.end.89 ]
  store i32 %cond92, i32* %x2, align 4
  %83 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram93 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %83, i32 0, i32 1
  %84 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram93, align 8
  %tobool94 = icmp ne %struct._GimpHistogram* %84, null
  br i1 %tobool94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %cond.end.91
  %85 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %86 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %histogram96 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %86, i32 0, i32 1
  %87 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram96, align 8
  %88 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %88, i32 0, i32 3
  %89 = load i32, i32* %channel, align 4
  %call97 = call double @gimp_histogram_view_get_maximum(%struct._GimpHistogramView* %85, %struct._GimpHistogram* %87, i32 %89)
  store double %call97, double* %max, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %cond.end.91
  %90 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram99 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %90, i32 0, i32 2
  %91 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram99, align 8
  %tobool100 = icmp ne %struct._GimpHistogram* %91, null
  br i1 %tobool100, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %if.end.98
  %92 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %93 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %bg_histogram102 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %93, i32 0, i32 2
  %94 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram102, align 8
  %95 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel103 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %95, i32 0, i32 3
  %96 = load i32, i32* %channel103, align 4
  %call104 = call double @gimp_histogram_view_get_maximum(%struct._GimpHistogramView* %92, %struct._GimpHistogram* %94, i32 %96)
  store double %call104, double* %bg_max, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %if.end.98
  %97 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %97, i32 0, i32 6
  %arrayidx106 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 3
  store %struct._GdkColor* %arrayidx106, %struct._GdkColor** %color_in, align 8
  %98 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text107 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %98, i32 0, i32 6
  %arrayidx108 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text107, i32 0, i64 0
  store %struct._GdkColor* %arrayidx108, %struct._GdkColor** %color_out, align 8
  %99 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %mid = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %99, i32 0, i32 5
  %arrayidx109 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %mid, i32 0, i64 3
  store %struct._GdkColor* %arrayidx109, %struct._GdkColor** %bg_color_in, align 8
  %100 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %mid110 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %100, i32 0, i32 5
  %arrayidx111 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %mid110, i32 0, i64 0
  store %struct._GdkColor* %arrayidx111, %struct._GdkColor** %bg_color_out, align 8
  %101 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel112 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %101, i32 0, i32 3
  %102 = load i32, i32* %channel112, align 4
  %cmp113 = icmp eq i32 %102, 5
  br i1 %cmp113, label %if.then.115, label %if.end.135

if.then.115:                                      ; preds = %if.end.105
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.115
  %103 = load i32, i32* %x, align 4
  %cmp116 = icmp slt i32 %103, 3
  br i1 %cmp116, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = load i32, i32* %x, align 4
  %cmp118 = icmp eq i32 %104, 0
  %cond120 = select i1 %cmp118, i32 65535, i32 0
  %conv121 = trunc i32 %cond120 to i16
  %105 = load i32, i32* %x, align 4
  %idxprom = sext i32 %105 to i64
  %arrayidx122 = getelementptr inbounds [3 x %struct._GdkColor], [3 x %struct._GdkColor]* %rgb_color, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx122, i32 0, i32 1
  store i16 %conv121, i16* %red, align 2
  %106 = load i32, i32* %x, align 4
  %cmp123 = icmp eq i32 %106, 1
  %cond125 = select i1 %cmp123, i32 65535, i32 0
  %conv126 = trunc i32 %cond125 to i16
  %107 = load i32, i32* %x, align 4
  %idxprom127 = sext i32 %107 to i64
  %arrayidx128 = getelementptr inbounds [3 x %struct._GdkColor], [3 x %struct._GdkColor]* %rgb_color, i32 0, i64 %idxprom127
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx128, i32 0, i32 2
  store i16 %conv126, i16* %green, align 2
  %108 = load i32, i32* %x, align 4
  %cmp129 = icmp eq i32 %108, 2
  %cond131 = select i1 %cmp129, i32 65535, i32 0
  %conv132 = trunc i32 %cond131 to i16
  %109 = load i32, i32* %x, align 4
  %idxprom133 = sext i32 %109 to i64
  %arrayidx134 = getelementptr inbounds [3 x %struct._GdkColor], [3 x %struct._GdkColor]* %rgb_color, i32 0, i64 %idxprom133
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx134, i32 0, i32 3
  store i16 %conv132, i16* %blue, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load i32, i32* %x, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.end.135:                                       ; preds = %for.end, %if.end.105
  store i32 1, i32* %xstop, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.232, %if.end.135
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* %width, align 4
  %cmp137 = icmp slt i32 %111, %112
  br i1 %cmp137, label %for.body.139, label %for.end.234

for.body.139:                                     ; preds = %for.cond.136
  store i32 0, i32* %in_selection, align 4
  %113 = load i32, i32* %x, align 4
  %mul140 = mul nsw i32 %113, 256
  %114 = load i32, i32* %width, align 4
  %div = sdiv i32 %mul140, %114
  store i32 %div, i32* %i, align 4
  %115 = load i32, i32* %x, align 4
  %add = add nsw i32 %115, 1
  %mul141 = mul nsw i32 %add, 256
  %116 = load i32, i32* %width, align 4
  %div142 = sdiv i32 %mul141, %116
  store i32 %div142, i32* %j, align 4
  %117 = load i32, i32* %x1, align 4
  %cmp143 = icmp eq i32 %117, 0
  br i1 %cmp143, label %land.lhs.true.145, label %if.then.148

land.lhs.true.145:                                ; preds = %for.body.139
  %118 = load i32, i32* %x2, align 4
  %cmp146 = icmp eq i32 %118, 255
  br i1 %cmp146, label %if.end.156, label %if.then.148

if.then.148:                                      ; preds = %land.lhs.true.145, %for.body.139
  %119 = load i32, i32* %i, align 4
  store i32 %119, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.148
  %120 = load i32, i32* %x1, align 4
  %121 = load i32, i32* %k, align 4
  %cmp149 = icmp sle i32 %120, %121
  br i1 %cmp149, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.body
  %122 = load i32, i32* %k, align 4
  %123 = load i32, i32* %x2, align 4
  %cmp151 = icmp sle i32 %122, %123
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %124 = phi i1 [ false, %do.body ], [ %cmp151, %land.rhs ]
  %land.ext = zext i1 %124 to i32
  %125 = load i32, i32* %in_selection, align 4
  %or = or i32 %125, %land.ext
  store i32 %or, i32* %in_selection, align 4
  br label %do.cond

do.cond:                                          ; preds = %land.end
  %126 = load i32, i32* %k, align 4
  %inc153 = add nsw i32 %126, 1
  store i32 %inc153, i32* %k, align 4
  %127 = load i32, i32* %j, align 4
  %cmp154 = icmp slt i32 %inc153, %127
  br i1 %cmp154, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.156

if.end.156:                                       ; preds = %do.end, %land.lhs.true.145
  %128 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %subdivisions = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %128, i32 0, i32 8
  %129 = load i32, i32* %subdivisions, align 4
  %cmp157 = icmp sgt i32 %129, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.else

land.lhs.true.159:                                ; preds = %if.end.156
  %130 = load i32, i32* %x, align 4
  %131 = load i32, i32* %xstop, align 4
  %132 = load i32, i32* %width, align 4
  %mul160 = mul nsw i32 %131, %132
  %133 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %subdivisions161 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %133, i32 0, i32 8
  %134 = load i32, i32* %subdivisions161, align 4
  %div162 = sdiv i32 %mul160, %134
  %cmp163 = icmp sge i32 %130, %div162
  br i1 %cmp163, label %if.then.165, label %if.else

if.then.165:                                      ; preds = %land.lhs.true.159
  %135 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %136 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark166 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %136, i32 0, i32 4
  %arrayidx167 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark166, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %135, %struct._GdkColor* %arrayidx167)
  %137 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %138 = load i32, i32* %x, align 4
  %139 = load i32, i32* %border, align 4
  %add168 = add nsw i32 %138, %139
  %conv169 = sitofp i32 %add168 to double
  %140 = load i32, i32* %border, align 4
  %conv170 = sitofp i32 %140 to double
  call void @cairo_move_to(%struct._cairo* %137, double %conv169, double %conv170)
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %142 = load i32, i32* %x, align 4
  %143 = load i32, i32* %border, align 4
  %add171 = add nsw i32 %142, %143
  %conv172 = sitofp i32 %add171 to double
  %144 = load i32, i32* %border, align 4
  %145 = load i32, i32* %height, align 4
  %add173 = add nsw i32 %144, %145
  %sub174 = sub nsw i32 %add173, 1
  %conv175 = sitofp i32 %sub174 to double
  call void @cairo_line_to(%struct._cairo* %141, double %conv172, double %conv175)
  %146 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %146)
  %147 = load i32, i32* %xstop, align 4
  %inc176 = add nsw i32 %147, 1
  store i32 %inc176, i32* %xstop, align 4
  br label %if.end.190

if.else:                                          ; preds = %land.lhs.true.159, %if.end.156
  %148 = load i32, i32* %in_selection, align 4
  %tobool177 = icmp ne i32 %148, 0
  br i1 %tobool177, label %if.then.178, label %if.end.189

if.then.178:                                      ; preds = %if.else
  %149 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %150 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base179 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %150, i32 0, i32 7
  %arrayidx180 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base179, i32 0, i64 3
  call void @gdk_cairo_set_source_color(%struct._cairo* %149, %struct._GdkColor* %arrayidx180)
  %151 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %152 = load i32, i32* %x, align 4
  %153 = load i32, i32* %border, align 4
  %add181 = add nsw i32 %152, %153
  %conv182 = sitofp i32 %add181 to double
  %154 = load i32, i32* %border, align 4
  %conv183 = sitofp i32 %154 to double
  call void @cairo_move_to(%struct._cairo* %151, double %conv182, double %conv183)
  %155 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %156 = load i32, i32* %x, align 4
  %157 = load i32, i32* %border, align 4
  %add184 = add nsw i32 %156, %157
  %conv185 = sitofp i32 %add184 to double
  %158 = load i32, i32* %border, align 4
  %159 = load i32, i32* %height, align 4
  %add186 = add nsw i32 %158, %159
  %sub187 = sub nsw i32 %add186, 1
  %conv188 = sitofp i32 %sub187 to double
  call void @cairo_line_to(%struct._cairo* %155, double %conv185, double %conv188)
  %160 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %160)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.178, %if.else
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.165
  %161 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel191 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %161, i32 0, i32 3
  %162 = load i32, i32* %channel191, align 4
  %cmp192 = icmp eq i32 %162, 5
  br i1 %cmp192, label %if.then.194, label %if.else.219

if.then.194:                                      ; preds = %if.end.190
  store i32 0, i32* %c, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.200, %if.then.194
  %163 = load i32, i32* %c, align 4
  %cmp196 = icmp slt i32 %163, 3
  br i1 %cmp196, label %for.body.198, label %for.end.202

for.body.198:                                     ; preds = %for.cond.195
  %164 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %165 = load i32, i32* %c, align 4
  %add199 = add nsw i32 1, %165
  %166 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %167 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %167, i32 0, i32 9
  %168 = load i32, i32* %x, align 4
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %j, align 4
  %171 = load double, double* %max, align 8
  %172 = load double, double* %bg_max, align 8
  %173 = load i32, i32* %height, align 4
  %174 = load i32, i32* %border, align 4
  call void @gimp_histogram_view_draw_spike(%struct._GimpHistogramView* %164, i32 %add199, %struct._cairo* %166, %struct._GdkColor* %black, i32 2, %struct._GdkColor* null, i32 %168, i32 %169, i32 %170, double %171, double %172, i32 %173, i32 %174)
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.198
  %175 = load i32, i32* %c, align 4
  %inc201 = add nsw i32 %175, 1
  store i32 %inc201, i32* %c, align 4
  br label %for.cond.195

for.end.202:                                      ; preds = %for.cond.195
  store i32 0, i32* %c, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.210, %for.end.202
  %176 = load i32, i32* %c, align 4
  %cmp204 = icmp slt i32 %176, 3
  br i1 %cmp204, label %for.body.206, label %for.end.212

for.body.206:                                     ; preds = %for.cond.203
  %177 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %178 = load i32, i32* %c, align 4
  %add207 = add nsw i32 1, %178
  %179 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %180 = load i32, i32* %c, align 4
  %idxprom208 = sext i32 %180 to i64
  %arrayidx209 = getelementptr inbounds [3 x %struct._GdkColor], [3 x %struct._GdkColor]* %rgb_color, i32 0, i64 %idxprom208
  %181 = load i32, i32* %x, align 4
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %j, align 4
  %184 = load double, double* %max, align 8
  %185 = load double, double* %bg_max, align 8
  %186 = load i32, i32* %height, align 4
  %187 = load i32, i32* %border, align 4
  call void @gimp_histogram_view_draw_spike(%struct._GimpHistogramView* %177, i32 %add207, %struct._cairo* %179, %struct._GdkColor* %arrayidx209, i32 12, %struct._GdkColor* null, i32 %181, i32 %182, i32 %183, double %184, double %185, i32 %186, i32 %187)
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.206
  %188 = load i32, i32* %c, align 4
  %inc211 = add nsw i32 %188, 1
  store i32 %inc211, i32* %c, align 4
  br label %for.cond.203

for.end.212:                                      ; preds = %for.cond.203
  %189 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %190 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel213 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %190, i32 0, i32 3
  %191 = load i32, i32* %channel213, align 4
  %192 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %193 = load i32, i32* %in_selection, align 4
  %tobool214 = icmp ne i32 %193, 0
  br i1 %tobool214, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %for.end.212
  %194 = load %struct._GdkColor*, %struct._GdkColor** %color_in, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %for.end.212
  %195 = load %struct._GdkColor*, %struct._GdkColor** %color_out, align 8
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.215
  %cond218 = phi %struct._GdkColor* [ %194, %cond.true.215 ], [ %195, %cond.false.216 ]
  %196 = load i32, i32* %x, align 4
  %197 = load i32, i32* %i, align 4
  %198 = load i32, i32* %j, align 4
  %199 = load double, double* %max, align 8
  %200 = load double, double* %bg_max, align 8
  %201 = load i32, i32* %height, align 4
  %202 = load i32, i32* %border, align 4
  call void @gimp_histogram_view_draw_spike(%struct._GimpHistogramView* %189, i32 %191, %struct._cairo* %192, %struct._GdkColor* %cond218, i32 2, %struct._GdkColor* null, i32 %196, i32 %197, i32 %198, double %199, double %200, i32 %201, i32 %202)
  br label %if.end.231

if.else.219:                                      ; preds = %if.end.190
  %203 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %204 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %channel220 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %204, i32 0, i32 3
  %205 = load i32, i32* %channel220, align 4
  %206 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %207 = load i32, i32* %in_selection, align 4
  %tobool221 = icmp ne i32 %207, 0
  br i1 %tobool221, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %if.else.219
  %208 = load %struct._GdkColor*, %struct._GdkColor** %color_in, align 8
  br label %cond.end.224

cond.false.223:                                   ; preds = %if.else.219
  %209 = load %struct._GdkColor*, %struct._GdkColor** %color_out, align 8
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.222
  %cond225 = phi %struct._GdkColor* [ %208, %cond.true.222 ], [ %209, %cond.false.223 ]
  %210 = load i32, i32* %in_selection, align 4
  %tobool226 = icmp ne i32 %210, 0
  br i1 %tobool226, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %cond.end.224
  %211 = load %struct._GdkColor*, %struct._GdkColor** %bg_color_in, align 8
  br label %cond.end.229

cond.false.228:                                   ; preds = %cond.end.224
  %212 = load %struct._GdkColor*, %struct._GdkColor** %bg_color_out, align 8
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.true.227
  %cond230 = phi %struct._GdkColor* [ %211, %cond.true.227 ], [ %212, %cond.false.228 ]
  %213 = load i32, i32* %x, align 4
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %j, align 4
  %216 = load double, double* %max, align 8
  %217 = load double, double* %bg_max, align 8
  %218 = load i32, i32* %height, align 4
  %219 = load i32, i32* %border, align 4
  call void @gimp_histogram_view_draw_spike(%struct._GimpHistogramView* %203, i32 %205, %struct._cairo* %206, %struct._GdkColor* %cond225, i32 2, %struct._GdkColor* %cond230, i32 %213, i32 %214, i32 %215, double %216, double %217, i32 %218, i32 %219)
  br label %if.end.231

if.end.231:                                       ; preds = %cond.end.229, %cond.end.217
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.231
  %220 = load i32, i32* %x, align 4
  %inc233 = add nsw i32 %220, 1
  store i32 %inc233, i32* %x, align 4
  br label %for.cond.136

for.end.234:                                      ; preds = %for.cond.136
  %221 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %221)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.234, %if.then
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %allocation)
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %9 = load i32, i32* %width3, align 4
  %10 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %10, i32 0, i32 7
  %11 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %11
  %sub = sub nsw i32 %9, %mul
  store i32 %sub, i32* %width, align 4
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 4
  %13 = load double, double* %x, align 8
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width4 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 7
  %15 = load i32, i32* %border_width4, align 4
  %conv = sitofp i32 %15 to double
  %sub5 = fsub double %13, %conv
  %mul6 = fmul double %sub5, 2.560000e+02
  %16 = load i32, i32* %width, align 4
  %conv7 = sitofp i32 %16 to double
  %div = fdiv double %mul6, %conv7
  %cmp8 = fcmp ogt double %div, 2.550000e+02
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.28

cond.false:                                       ; preds = %if.then
  %17 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x10 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %17, i32 0, i32 4
  %18 = load double, double* %x10, align 8
  %19 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %19, i32 0, i32 7
  %20 = load i32, i32* %border_width11, align 4
  %conv12 = sitofp i32 %20 to double
  %sub13 = fsub double %18, %conv12
  %mul14 = fmul double %sub13, 2.560000e+02
  %21 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %21 to double
  %div16 = fdiv double %mul14, %conv15
  %cmp17 = fcmp olt double %div16, 0.000000e+00
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %22 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x21 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %22, i32 0, i32 4
  %23 = load double, double* %x21, align 8
  %24 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width22 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %24, i32 0, i32 7
  %25 = load i32, i32* %border_width22, align 4
  %conv23 = sitofp i32 %25 to double
  %sub24 = fsub double %23, %conv23
  %mul25 = fmul double %sub24, 2.560000e+02
  %26 = load i32, i32* %width, align 4
  %conv26 = sitofp i32 %26 to double
  %div27 = fdiv double %mul25, %conv26
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi double [ 0.000000e+00, %cond.true.19 ], [ %div27, %cond.false.20 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv30 = fptosi double %cond29 to i32
  %27 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %27, i32 0, i32 5
  store i32 %conv30, i32* %start, align 4
  %28 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start31 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %28, i32 0, i32 5
  %29 = load i32, i32* %start31, align 4
  %30 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %30, i32 0, i32 6
  store i32 %29, i32* %end, align 4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %31)
  br label %if.end

if.end:                                           ; preds = %cond.end.28, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_view_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %5)
  %6 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start2 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %6, i32 0, i32 5
  %7 = load i32, i32* %start2, align 4
  store i32 %7, i32* %start, align 4
  %8 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end3 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %8, i32 0, i32 6
  %9 = load i32, i32* %end3, align 4
  store i32 %9, i32* %end, align 4
  %10 = load i32, i32* %start, align 4
  %11 = load i32, i32* %end, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i32, i32* %start, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i32, i32* %end, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start5 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 5
  store i32 %cond, i32* %start5, align 4
  %15 = load i32, i32* %start, align 4
  %16 = load i32, i32* %end, align 4
  %cmp6 = icmp sgt i32 %15, %16
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %17 = load i32, i32* %start, align 4
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %18 = load i32, i32* %end, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %17, %cond.true.7 ], [ %18, %cond.false.8 ]
  %19 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end11 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %19, i32 0, i32 6
  store i32 %cond10, i32* %end11, align 4
  %20 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %21 = bitcast %struct._GimpHistogramView* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @histogram_view_signals, i32 0, i64 0), align 4
  %23 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start12 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %23, i32 0, i32 5
  %24 = load i32, i32* %start12, align 4
  %25 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end13 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %25, i32 0, i32 6
  %26 = load i32, i32* %end13, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %21, i32 %22, i32 0, i32 %24, i32 %26)
  br label %if.end

if.end:                                           ; preds = %cond.end.9, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_histogram_view_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %view = alloca %struct._GimpHistogramView*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_histogram_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHistogramView*
  store %struct._GimpHistogramView* %2, %struct._GimpHistogramView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width2, align 4
  %5 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %5, i32 0, i32 7
  %6 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %6
  %sub = sub nsw i32 %4, %mul
  store i32 %sub, i32* %width, align 4
  %7 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  %9 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width3 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %9, i32 0, i32 7
  %10 = load i32, i32* %border_width3, align 4
  %conv = sitofp i32 %10 to double
  %sub4 = fsub double %8, %conv
  %mul5 = fmul double %sub4, 2.560000e+02
  %11 = load i32, i32* %width, align 4
  %conv6 = sitofp i32 %11 to double
  %div = fdiv double %mul5, %conv6
  %cmp = fcmp ogt double %div, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.26

cond.false:                                       ; preds = %entry
  %12 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x8 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %12, i32 0, i32 4
  %13 = load double, double* %x8, align 8
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width9 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 7
  %15 = load i32, i32* %border_width9, align 4
  %conv10 = sitofp i32 %15 to double
  %sub11 = fsub double %13, %conv10
  %mul12 = fmul double %sub11, 2.560000e+02
  %16 = load i32, i32* %width, align 4
  %conv13 = sitofp i32 %16 to double
  %div14 = fdiv double %mul12, %conv13
  %cmp15 = fcmp olt double %div14, 0.000000e+00
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %17 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x19 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %17, i32 0, i32 4
  %18 = load double, double* %x19, align 8
  %19 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %border_width20 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %19, i32 0, i32 7
  %20 = load i32, i32* %border_width20, align 4
  %conv21 = sitofp i32 %20 to double
  %sub22 = fsub double %18, %conv21
  %mul23 = fmul double %sub22, 2.560000e+02
  %21 = load i32, i32* %width, align 4
  %conv24 = sitofp i32 %21 to double
  %div25 = fdiv double %mul23, %conv24
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi double [ 0.000000e+00, %cond.true.17 ], [ %div25, %cond.false.18 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv28 = fptosi double %cond27 to i32
  %22 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %22, i32 0, i32 5
  store i32 %conv28, i32* %start, align 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %23)
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_scale_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

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

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal double @gimp_histogram_view_get_maximum(%struct._GimpHistogramView* %view, %struct._GimpHistogram* %histogram, i32 %channel) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %max = alloca double, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %1 = load i32, i32* %channel.addr, align 4
  %call = call double @gimp_histogram_get_maximum(%struct._GimpHistogram* %0, i32 %1)
  store double %call, double* %max, align 8
  %2 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %scale = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %2, i32 0, i32 4
  %3 = load i32, i32* %scale, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load double, double* %max, align 8
  %cmp = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %5 = load double, double* %max, align 8
  %call2 = call double @log(double %5) #5
  store double %call2, double* %max, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.1
  store double 1.000000e+00, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %6 = load double, double* %max, align 8
  ret double %6
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_view_draw_spike(%struct._GimpHistogramView* %view, i32 %channel, %struct._cairo* %cr, %struct._GdkColor* %fg_color, i32 %fg_operator, %struct._GdkColor* %bg_color, i32 %x, i32 %i, i32 %j, double %max, double %bg_max, i32 %height, i32 %border) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %channel.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  %fg_color.addr = alloca %struct._GdkColor*, align 8
  %fg_operator.addr = alloca i32, align 4
  %bg_color.addr = alloca %struct._GdkColor*, align 8
  %x.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %max.addr = alloca double, align 8
  %bg_max.addr = alloca double, align 8
  %height.addr = alloca i32, align 4
  %border.addr = alloca i32, align 4
  %value = alloca double, align 8
  %bg_value = alloca double, align 8
  %y = alloca i32, align 4
  %bg_y = alloca i32, align 4
  %v = alloca double, align 8
  %v9 = alloca double, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GdkColor* %fg_color, %struct._GdkColor** %fg_color.addr, align 8
  store i32 %fg_operator, i32* %fg_operator.addr, align 4
  store %struct._GdkColor* %bg_color, %struct._GdkColor** %bg_color.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store double %max, double* %max.addr, align 8
  store double %bg_max, double* %bg_max.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  store i32 %border, i32* %border.addr, align 4
  store double 0.000000e+00, double* %value, align 8
  store double 0.000000e+00, double* %bg_value, align 8
  %0 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %0, i32 0, i32 1
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool = icmp ne %struct._GimpHistogram* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %histogram1 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %2, i32 0, i32 1
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram1, align 8
  %4 = load i32, i32* %channel.addr, align 4
  %5 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i.addr, align 4
  %call = call double @gimp_histogram_get_value(%struct._GimpHistogram* %3, i32 %4, i32 %5)
  store double %call, double* %v, align 8
  %6 = load double, double* %v, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp ogt double %6, %7
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %8 = load double, double* %v, align 8
  store double %8, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i32, i32* %i.addr, align 4
  %10 = load i32, i32* %j.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  %11 = load %struct._GdkColor*, %struct._GdkColor** %bg_color.addr, align 8
  %tobool5 = icmp ne %struct._GdkColor* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.4
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %12, i32 0, i32 2
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram, align 8
  %tobool6 = icmp ne %struct._GimpHistogram* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body.8

do.body.8:                                        ; preds = %do.cond.16, %if.then.7
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %bg_histogram10 = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %14, i32 0, i32 2
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %bg_histogram10, align 8
  %16 = load i32, i32* %channel.addr, align 4
  %17 = load i32, i32* %i.addr, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i.addr, align 4
  %call12 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %15, i32 %16, i32 %17)
  store double %call12, double* %v9, align 8
  %18 = load double, double* %v9, align 8
  %19 = load double, double* %bg_value, align 8
  %cmp13 = fcmp ogt double %18, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body.8
  %20 = load double, double* %v9, align 8
  store double %20, double* %bg_value, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.body.8
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  %21 = load i32, i32* %i.addr, align 4
  %22 = load i32, i32* %j.addr, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %do.body.8, label %do.end.18

do.end.18:                                        ; preds = %do.cond.16
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %land.lhs.true, %if.end.4
  %23 = load double, double* %value, align 8
  %cmp20 = fcmp ole double %23, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.19
  %24 = load double, double* %bg_value, align 8
  %cmp22 = fcmp ole double %24, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.21, %if.end.19
  %25 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %scale = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %25, i32 0, i32 4
  %26 = load i32, i32* %scale, align 4
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end.24
  %27 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %27, 2
  %conv = sitofp i32 %sub to double
  %28 = load double, double* %value, align 8
  %mul = fmul double %conv, %28
  %29 = load double, double* %max.addr, align 8
  %div = fdiv double %mul, %29
  %conv25 = fptosi double %div to i32
  store i32 %conv25, i32* %y, align 4
  %30 = load i32, i32* %height.addr, align 4
  %sub26 = sub nsw i32 %30, 2
  %conv27 = sitofp i32 %sub26 to double
  %31 = load double, double* %bg_value, align 8
  %mul28 = fmul double %conv27, %31
  %32 = load double, double* %bg_max.addr, align 8
  %div29 = fdiv double %mul28, %32
  %conv30 = fptosi double %div29 to i32
  store i32 %conv30, i32* %bg_y, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.24
  %33 = load i32, i32* %height.addr, align 4
  %sub32 = sub nsw i32 %33, 2
  %conv33 = sitofp i32 %sub32 to double
  %34 = load double, double* %value, align 8
  %call34 = call double @log(double %34) #5
  %mul35 = fmul double %conv33, %call34
  %35 = load double, double* %max.addr, align 8
  %div36 = fdiv double %mul35, %35
  %conv37 = fptosi double %div36 to i32
  store i32 %conv37, i32* %y, align 4
  %36 = load i32, i32* %height.addr, align 4
  %sub38 = sub nsw i32 %36, 2
  %conv39 = sitofp i32 %sub38 to double
  %37 = load double, double* %bg_value, align 8
  %call40 = call double @log(double %37) #5
  %mul41 = fmul double %conv39, %call40
  %38 = load double, double* %bg_max.addr, align 8
  %div42 = fdiv double %mul41, %38
  %conv43 = fptosi double %div42 to i32
  store i32 %conv43, i32* %bg_y, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.24
  store i32 0, i32* %y, align 4
  store i32 0, i32* %bg_y, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.31, %sw.bb
  %39 = load %struct._GdkColor*, %struct._GdkColor** %bg_color.addr, align 8
  %tobool44 = icmp ne %struct._GdkColor* %39, null
  br i1 %tobool44, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %sw.epilog
  %40 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %41 = load %struct._GdkColor*, %struct._GdkColor** %bg_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %40, %struct._GdkColor* %41)
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %43 = load i32, i32* %x.addr, align 4
  %44 = load i32, i32* %border.addr, align 4
  %add = add nsw i32 %43, %44
  %conv46 = sitofp i32 %add to double
  %45 = load i32, i32* %height.addr, align 4
  %46 = load i32, i32* %border.addr, align 4
  %add47 = add nsw i32 %45, %46
  %sub48 = sub nsw i32 %add47, 1
  %conv49 = sitofp i32 %sub48 to double
  call void @cairo_move_to(%struct._cairo* %42, double %conv46, double %conv49)
  %47 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %48 = load i32, i32* %x.addr, align 4
  %49 = load i32, i32* %border.addr, align 4
  %add50 = add nsw i32 %48, %49
  %conv51 = sitofp i32 %add50 to double
  %50 = load i32, i32* %height.addr, align 4
  %51 = load i32, i32* %border.addr, align 4
  %add52 = add nsw i32 %50, %51
  %52 = load i32, i32* %bg_y, align 4
  %sub53 = sub nsw i32 %add52, %52
  %sub54 = sub nsw i32 %sub53, 1
  %conv55 = sitofp i32 %sub54 to double
  call void @cairo_line_to(%struct._cairo* %47, double %conv51, double %conv55)
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %53)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.45, %sw.epilog
  %54 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %55 = load i32, i32* %fg_operator.addr, align 4
  call void @cairo_set_operator(%struct._cairo* %54, i32 %55)
  %56 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %57 = load %struct._GdkColor*, %struct._GdkColor** %fg_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %56, %struct._GdkColor* %57)
  %58 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %59 = load i32, i32* %x.addr, align 4
  %60 = load i32, i32* %border.addr, align 4
  %add57 = add nsw i32 %59, %60
  %conv58 = sitofp i32 %add57 to double
  %61 = load i32, i32* %height.addr, align 4
  %62 = load i32, i32* %border.addr, align 4
  %add59 = add nsw i32 %61, %62
  %sub60 = sub nsw i32 %add59, 1
  %conv61 = sitofp i32 %sub60 to double
  call void @cairo_move_to(%struct._cairo* %58, double %conv58, double %conv61)
  %63 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %border.addr, align 4
  %add62 = add nsw i32 %64, %65
  %conv63 = sitofp i32 %add62 to double
  %66 = load i32, i32* %height.addr, align 4
  %67 = load i32, i32* %border.addr, align 4
  %add64 = add nsw i32 %66, %67
  %68 = load i32, i32* %y, align 4
  %sub65 = sub nsw i32 %add64, %68
  %sub66 = sub nsw i32 %sub65, 1
  %conv67 = sitofp i32 %sub66 to double
  call void @cairo_line_to(%struct._cairo* %63, double %conv63, double %conv67)
  %69 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %69)
  %70 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_operator(%struct._cairo* %70, i32 2)
  br label %return

return:                                           ; preds = %if.end.56, %if.then.23
  ret void
}

declare double @gimp_histogram_get_maximum(%struct._GimpHistogram*, i32) #1

; Function Attrs: nounwind
declare double @log(double) #6

declare double @gimp_histogram_get_value(%struct._GimpHistogram*, i32, i32) #1

declare void @cairo_set_operator(%struct._cairo*, i32) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
