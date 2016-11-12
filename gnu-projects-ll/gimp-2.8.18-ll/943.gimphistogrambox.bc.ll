; ModuleID = './app/widgets/gimphistogrambox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpHistogramBoxClass = type { %struct._GtkBoxClass }
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
%struct._GimpHistogramBox = type { %struct._GtkBox, %struct._GimpHistogramView*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHistogram = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkOrientable = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpHandleBar = type { %struct._GtkEventBox, i32, [3 x %struct._GtkAdjustment*], double, double, [3 x i32], i32 }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GimpColorBar = type { %struct._GtkEventBox, i32, [768 x i8] }

@gimp_histogram_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpHistogramBox\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_histogram_box_set_channel = private unnamed_addr constant [31 x i8] c"gimp_histogram_box_set_channel\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_HISTOGRAM_BOX (box)\00", align 1
@gimp_histogram_box_parent_class = internal global i8* null, align 8
@GimpHistogramBox_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"range-changed\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"notify::histogram-channel\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"notify::border-width\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_histogram_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_histogram_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_histogram_box_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHistogramBox*)* @gimp_histogram_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_histogram_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_histogram_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_histogram_box_parent_class, align 8
  %1 = load i32, i32* @GimpHistogramBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHistogramBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHistogramBoxClass*
  call void @gimp_histogram_box_class_init(%struct._GimpHistogramBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_init(%struct._GimpHistogramBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %1 = bitcast %struct._GimpHistogramBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %4 = bitcast %struct._GimpHistogramBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 2)
  %call4 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_frame_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %8, i32 1)
  %9 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %10 = bitcast %struct._GimpHistogramBox* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call12 = call %struct._GtkWidget* @gimp_histogram_view_new(i32 1)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %view, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %27 = bitcast %struct._GimpHistogramBox* %26 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramView*, i32, i32, %struct._GimpHistogramBox*)* @gimp_histogram_box_histogram_range to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_histogram_view_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call16)
  %30 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpHistogramView*
  %31 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view18 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %31, i32 0, i32 1
  store %struct._GimpHistogramView* %30, %struct._GimpHistogramView** %view18, align 8
  %call19 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %vbox2, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_histogram_view_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpHistogramView*
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %37, i32 0, i32 7
  %38 = load i32, i32* %border_width, align 4
  call void @gtk_container_set_border_width(%struct._GtkContainer* %34, i32 %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call26 = call i64 @gimp_color_bar_get_type() #5
  %44 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view27 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %44, i32 0, i32 1
  %45 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view27, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %45, i32 0, i32 3
  %46 = load i32, i32* %channel, align 4
  %call28 = call i8* (i64, i8*, ...) @g_object_new(i64 %call26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %46, i8* null)
  %47 = bitcast i8* %call28 to %struct._GtkWidget*
  store %struct._GtkWidget* %47, %struct._GtkWidget** %bar, align 8
  %48 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %48, i32 0, i32 2
  store %struct._GtkWidget* %47, %struct._GtkWidget** %color_bar, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %49, i32 -1, i32 12)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call29)
  %52 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %58 = bitcast %struct._GimpHistogramBox* %57 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramView*, %struct._GParamSpec*, %struct._GimpHistogramBox*)* @gimp_histogram_box_channel_notify to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %62 = bitcast %struct._GimpHistogramBox* %61 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramView*, %struct._GParamSpec*, %struct._GimpHistogramBox*)* @gimp_histogram_box_border_notify to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %call33 = call i64 @gimp_handle_bar_get_type() #5
  %call34 = call i8* (i64, i8*, ...) @g_object_new(i64 %call33, i8* null)
  %63 = bitcast i8* %call34 to %struct._GtkWidget*
  store %struct._GtkWidget* %63, %struct._GtkWidget** %bar, align 8
  %64 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %64, i32 0, i32 3
  store %struct._GtkWidget* %63, %struct._GtkWidget** %slider_bar, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %65, i32 -1, i32 10)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call35)
  %68 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar37 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %color_bar37, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar38 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %74, i32 0, i32 3
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar38, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %76, i32 0, i32 0
  %77 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %78 = bitcast %struct._GTypeClass* %77 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %78, i32 0, i32 25
  %79 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %80 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %79 to void ()*
  %81 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar39 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %81, i32 0, i32 3
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar39, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* %80, i8* %83, void (i8*, %struct._GClosure*)* null, i32 2)
  %84 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar41 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %84, i32 0, i32 2
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %color_bar41, align 8
  %86 = bitcast %struct._GtkWidget* %85 to i8*
  %87 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar42 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %87, i32 0, i32 3
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar42, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %89, i32 0, i32 0
  %90 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %91 = bitcast %struct._GTypeClass* %90 to %struct._GtkWidgetClass*
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %91, i32 0, i32 26
  %92 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %93 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %92 to void ()*
  %94 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar44 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %94, i32 0, i32 3
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar44, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), void ()* %93, i8* %96, void (i8*, %struct._GClosure*)* null, i32 2)
  %97 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar46 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %97, i32 0, i32 2
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %color_bar46, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %100 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar47 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %100, i32 0, i32 3
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar47, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %104 = bitcast %struct._GTypeClass* %103 to %struct._GtkWidgetClass*
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %104, i32 0, i32 28
  %105 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %106 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %105 to void ()*
  %107 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %slider_bar49 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %107, i32 0, i32 3
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %slider_bar49, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void ()* %106, i8* %109, void (i8*, %struct._GClosure*)* null, i32 2)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hbox, align 8
  %110 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %111 = bitcast %struct._GimpHistogramBox* %110 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call52)
  %112 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call54 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 0.000000e+00, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.600000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %spinbutton, align 8
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %116 = bitcast %struct._GtkObject* %115 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_adjustment_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call55)
  %117 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkAdjustment*
  %118 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %low_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %118, i32 0, i32 4
  store %struct._GtkAdjustment* %117, %struct._GtkAdjustment** %low_adj, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call57)
  %121 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %121, %struct._GtkWidget* %122, i32 0, i32 0, i32 0)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %124 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %125 = bitcast %struct._GtkObject* %124 to i8*
  %126 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %127 = bitcast %struct._GimpHistogramBox* %126 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHistogramBox*)* @gimp_histogram_box_low_adj_update to void ()*), i8* %127, void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_handle_bar_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call60)
  %130 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpHandleBar*
  %131 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %132 = bitcast %struct._GtkObject* %131 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_adjustment_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call62)
  %133 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkAdjustment*
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %130, i32 0, %struct._GtkAdjustment* %133)
  %call64 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 2.550000e+02, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.600000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %spinbutton, align 8
  %134 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %135 = bitcast %struct._GtkObject* %134 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_adjustment_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call65)
  %136 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkAdjustment*
  %137 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %high_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %137, i32 0, i32 5
  store %struct._GtkAdjustment* %136, %struct._GtkAdjustment** %high_adj, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call67)
  %140 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %140, %struct._GtkWidget* %141, i32 0, i32 0, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %144 = bitcast %struct._GtkObject* %143 to i8*
  %145 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %146 = bitcast %struct._GimpHistogramBox* %145 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHistogramBox*)* @gimp_histogram_box_high_adj_update to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_handle_bar_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call70)
  %149 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpHandleBar*
  %150 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %151 = bitcast %struct._GtkObject* %150 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_adjustment_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call72)
  %152 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkAdjustment*
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %149, i32 2, %struct._GtkAdjustment* %152)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_histogram_box_new() #3 {
entry:
  %call = call i64 @gimp_histogram_box_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_box_set_channel(%struct._GimpHistogramBox* %box, i32 %channel) #3 {
entry:
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  %channel.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %1 = bitcast %struct._GimpHistogramBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_histogram_box_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_histogram_box_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %13, i32 0, i32 1
  %14 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %tobool11 = icmp ne %struct._GimpHistogramView* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view13 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %15, i32 0, i32 1
  %16 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view13, align 8
  %17 = load i32, i32* %channel.addr, align 4
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %16, i32 %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_histogram_view_set_channel(%struct._GimpHistogramView*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_class_init(%struct._GimpHistogramBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHistogramBoxClass*, align 8
  store %struct._GimpHistogramBoxClass* %klass, %struct._GimpHistogramBoxClass** %klass.addr, align 8
  ret void
}

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_histogram_view_new(i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_histogram_range(%struct._GimpHistogramView* %view, i32 %start, i32 %end, %struct._GimpHistogramBox* %box) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %high_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %0, i32 0, i32 5
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_adj, align 8
  %2 = load i32, i32* %start.addr, align 4
  %conv = sitofp i32 %2 to double
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %1, double %conv)
  %3 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %low_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %3, i32 0, i32 4
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_adj, align 8
  %5 = load i32, i32* %end.addr, align 4
  %conv1 = sitofp i32 %5 to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %4, double %conv1)
  %6 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %low_adj2 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %6, i32 0, i32 4
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_adj2, align 8
  %8 = load i32, i32* %start.addr, align 4
  %conv3 = sitofp i32 %8 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %7, double %conv3)
  %9 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %high_adj4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %9, i32 0, i32 5
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_adj4, align 8
  %11 = load i32, i32* %end.addr, align 4
  %conv5 = sitofp i32 %11 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %conv5)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_view_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_bar_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_channel_notify(%struct._GimpHistogramView* %view, %struct._GParamSpec* %pspec, %struct._GimpHistogramBox* %box) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %color_bar, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_bar_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBar*
  %4 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %channel = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %4, i32 0, i32 3
  %5 = load i32, i32* %channel, align 4
  call void @gimp_color_bar_set_channel(%struct._GimpColorBar* %3, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_border_notify(%struct._GimpHistogramView* %view, %struct._GParamSpec* %pspec, %struct._GimpHistogramBox* %box) #3 {
entry:
  %view.addr = alloca %struct._GimpHistogramView*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  store %struct._GimpHistogramView* %view, %struct._GimpHistogramView** %view.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %color_bar = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %color_bar, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  %5 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %5, i32 0, i32 7
  %6 = load i32, i32* %border_width, align 4
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 %6)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_bar_get_type() #2

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_low_adj_update(%struct._GtkAdjustment* %adjustment, %struct._GimpHistogramBox* %box) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %1 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %1, i32 0, i32 1
  %2 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %2, i32 0, i32 5
  %3 = load i32, i32* %start, align 4
  %4 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %high_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %5, i32 0, i32 5
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_adj, align 8
  %7 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %7 to double
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %6, double %conv2)
  %8 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view3 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %8, i32 0, i32 1
  %9 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view3, align 8
  %10 = load i32, i32* %value, align 4
  %11 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %11, i32 0, i32 1
  %12 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %12, i32 0, i32 6
  %13 = load i32, i32* %end, align 4
  call void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %9, i32 %10, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar*, i32, %struct._GtkAdjustment*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_box_high_adj_update(%struct._GtkAdjustment* %adjustment, %struct._GimpHistogramBox* %box) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %box.addr = alloca %struct._GimpHistogramBox*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHistogramBox* %box, %struct._GimpHistogramBox** %box.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %1 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %1, i32 0, i32 1
  %2 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %end = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %2, i32 0, i32 6
  %3 = load i32, i32* %end, align 4
  %4 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %low_adj = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %5, i32 0, i32 4
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_adj, align 8
  %7 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %7 to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %6, double %conv2)
  %8 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view3 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %8, i32 0, i32 1
  %9 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view3, align 8
  %10 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %box.addr, align 8
  %view4 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %10, i32 0, i32 1
  %11 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view4, align 8
  %start = getelementptr inbounds %struct._GimpHistogramView, %struct._GimpHistogramView* %11, i32 0, i32 5
  %12 = load i32, i32* %start, align 4
  %13 = load i32, i32* %value, align 4
  call void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %9, i32 %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_adjustment_set_lower(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_set_upper(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_color_bar_set_channel(%struct._GimpColorBar*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_histogram_view_set_range(%struct._GimpHistogramView*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
