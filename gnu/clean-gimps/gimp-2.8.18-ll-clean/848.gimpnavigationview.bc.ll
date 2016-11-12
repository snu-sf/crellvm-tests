; ModuleID = './app/widgets/gimpnavigationview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpNavigationViewClass = type { %struct._GimpViewClass, void (%struct._GimpNavigationView*, double, double)*, void (%struct._GimpNavigationView*, i32)*, void (%struct._GimpNavigationView*, i32)* }
%struct._GimpViewClass = type { %struct._GtkWidgetClass, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)*, void (%struct._GimpView*, i32)*, void (%struct._GimpView*)*, void (%struct._GimpView*)* }
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
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpNavigationView = type { %struct._GimpView, double, double, double, double, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque

@gimp_navigation_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpNavigationView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_navigation_view_set_marker = private unnamed_addr constant [32 x i8] c"gimp_navigation_view_set_marker\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"GIMP_IS_NAVIGATION_VIEW (nav_view)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"view->renderer->viewable\00", align 1
@__func__.gimp_navigation_view_set_motion_offset = private unnamed_addr constant [39 x i8] c"gimp_navigation_view_set_motion_offset\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"GIMP_IS_NAVIGATION_VIEW (view)\00", align 1
@__func__.gimp_navigation_view_get_local_marker = private unnamed_addr constant [38 x i8] c"gimp_navigation_view_get_local_marker\00", align 1
@gimp_navigation_view_parent_class = internal global i8* null, align 8
@GimpNavigationView_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"marker-changed\00", align 1
@view_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_navigation_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_navigation_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_navigation_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 776, void (i8*, i8*)* bitcast (void (i8*)* @gimp_navigation_view_class_intern_init to void (i8*, i8*)*), i32 192, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpNavigationView*)* @gimp_navigation_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_navigation_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_navigation_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_navigation_view_parent_class, align 8
  %1 = load i32, i32* @GimpNavigationView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpNavigationView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpNavigationViewClass*
  call void @gimp_navigation_view_class_init(%struct._GimpNavigationViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_init(%struct._GimpNavigationView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %2, i32 1)
  %3 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %4 = bitcast %struct._GimpNavigationView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %5, i32 1028)
  %6 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %6, i32 0, i32 1
  store double 0.000000e+00, double* %x, align 8
  %7 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %7, i32 0, i32 2
  store double 0.000000e+00, double* %y, align 8
  %8 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %8, i32 0, i32 3
  store double 0.000000e+00, double* %width, align 8
  %9 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %9, i32 0, i32 4
  store double 0.000000e+00, double* %height, align 8
  %10 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %10, i32 0, i32 5
  store i32 0, i32* %p_x, align 4
  %11 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %11, i32 0, i32 6
  store i32 0, i32* %p_y, align 4
  %12 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %12, i32 0, i32 7
  store i32 0, i32* %p_width, align 4
  %13 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %13, i32 0, i32 8
  store i32 0, i32* %p_height, align 4
  %14 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %motion_offset_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %14, i32 0, i32 9
  store i32 0, i32* %motion_offset_x, align 4
  %15 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %motion_offset_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %15, i32 0, i32 10
  store i32 0, i32* %motion_offset_y, align 4
  %16 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %has_grab = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %16, i32 0, i32 11
  store i32 0, i32* %has_grab, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_navigation_view_grab_pointer(%struct._GimpNavigationView* %nav_view) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %has_grab = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %3, i32 0, i32 11
  store i32 1, i32* %has_grab, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %5)
  store %struct._GdkDisplay* %call2, %struct._GdkDisplay** %display, align 8
  %6 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %6, i32 52)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %7 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %8 = bitcast %struct._GimpNavigationView* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_view_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpView*
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 1
  %10 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  store %struct._GdkDrawable* %10, %struct._GdkDrawable** %window, align 8
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %12 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %call6 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %11, i32 0, i32 537, %struct._GdkDrawable* null, %struct._GdkCursor* %12, i32 0)
  %13 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %13)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define void @gimp_navigation_view_set_marker(%struct._GimpNavigationView* %nav_view, double %x, double %y, double %width, double %height) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %view = alloca %struct._GimpView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_navigation_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_navigation_view_set_marker, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %14 = bitcast %struct._GimpNavigationView* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_view_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpView*
  store %struct._GimpView* %15, %struct._GimpView** %view, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 3
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 3
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool14 = icmp ne %struct._GimpViewable* %18, null
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_navigation_view_set_marker, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %19 = load double, double* %x.addr, align 8
  %20 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %20, i32 0, i32 1
  store double %19, double* %x19, align 8
  %21 = load double, double* %y.addr, align 8
  %22 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %y20 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %22, i32 0, i32 2
  store double %21, double* %y20, align 8
  %23 = load double, double* %width.addr, align 8
  %cmp21 = fcmp ogt double 1.000000e+00, %23
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.18
  br label %cond.end

cond.false:                                       ; preds = %do.end.18
  %24 = load double, double* %width.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %24, %cond.false ]
  %25 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %width22 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %25, i32 0, i32 3
  store double %cond, double* %width22, align 8
  %26 = load double, double* %height.addr, align 8
  %cmp23 = fcmp ogt double 1.000000e+00, %26
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  %27 = load double, double* %height.addr, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi double [ 1.000000e+00, %cond.true.24 ], [ %27, %cond.false.25 ]
  %28 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %height28 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %28, i32 0, i32 4
  store double %cond27, double* %height28, align 8
  %29 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  call void @gimp_navigation_view_transform(%struct._GimpNavigationView* %29)
  %30 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %31 = bitcast %struct._GimpView* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %32)
  br label %return

return:                                           ; preds = %cond.end.26, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_transform(%struct._GimpNavigationView* %nav_view) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %ratiox = alloca double, align 8
  %ratioy = alloca double, align 8
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  call void @gimp_navigation_view_get_ratio(%struct._GimpNavigationView* %0, double* %ratiox, double* %ratioy)
  %1 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %1, i32 0, i32 1
  %2 = load double, double* %x, align 8
  %3 = load double, double* %ratiox, align 8
  %mul = fmul double %2, %3
  %call = call double @rint(double %mul) #5
  %conv = fptosi double %call to i32
  %4 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %4, i32 0, i32 5
  store i32 %conv, i32* %p_x, align 4
  %5 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %5, i32 0, i32 2
  %6 = load double, double* %y, align 8
  %7 = load double, double* %ratioy, align 8
  %mul1 = fmul double %6, %7
  %call2 = call double @rint(double %mul1) #5
  %conv3 = fptosi double %call2 to i32
  %8 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %8, i32 0, i32 6
  store i32 %conv3, i32* %p_y, align 4
  %9 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %9, i32 0, i32 3
  %10 = load double, double* %width, align 8
  %11 = load double, double* %ratiox, align 8
  %mul4 = fmul double %10, %11
  %call5 = call double @ceil(double %mul4) #5
  %conv6 = fptosi double %call5 to i32
  %12 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %12, i32 0, i32 7
  store i32 %conv6, i32* %p_width, align 4
  %13 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %13, i32 0, i32 4
  %14 = load double, double* %height, align 8
  %15 = load double, double* %ratioy, align 8
  %mul7 = fmul double %14, %15
  %call8 = call double @ceil(double %mul7) #5
  %conv9 = fptosi double %call8 to i32
  %16 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %16, i32 0, i32 8
  store i32 %conv9, i32* %p_height, align 4
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_navigation_view_set_motion_offset(%struct._GimpNavigationView* %view, i32 %motion_offset_x, i32 %motion_offset_y) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  %motion_offset_x.addr = alloca i32, align 4
  %motion_offset_y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  store i32 %motion_offset_x, i32* %motion_offset_x.addr, align 4
  store i32 %motion_offset_y, i32* %motion_offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_navigation_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_navigation_view_set_motion_offset, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %motion_offset_x.addr, align 4
  %14 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %motion_offset_x11 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %14, i32 0, i32 9
  store i32 %13, i32* %motion_offset_x11, align 4
  %15 = load i32, i32* %motion_offset_y.addr, align 4
  %16 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %motion_offset_y12 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %16, i32 0, i32 10
  store i32 %15, i32* %motion_offset_y12, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_navigation_view_get_local_marker(%struct._GimpNavigationView* %view, i32* %x, i32* %y, i32* %width, i32* %height) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_navigation_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_navigation_view_get_local_marker, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %x.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %14, i32 0, i32 5
  %15 = load i32, i32* %p_x, align 4
  %16 = load i32*, i32** %x.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %17 = load i32*, i32** %y.addr, align 8
  %tobool14 = icmp ne i32* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %18 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %18, i32 0, i32 6
  %19 = load i32, i32* %p_y, align 4
  %20 = load i32*, i32** %y.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %21 = load i32*, i32** %width.addr, align 8
  %tobool17 = icmp ne i32* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %22 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %22, i32 0, i32 7
  %23 = load i32, i32* %p_width, align 4
  %24 = load i32*, i32** %width.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %25 = load i32*, i32** %height.addr, align 8
  %tobool20 = icmp ne i32* %25, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %26 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view.addr, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %26, i32 0, i32 8
  %27 = load i32, i32* %p_height, align 4
  %28 = load i32*, i32** %height.addr, align 8
  store i32 %27, i32* %28, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.then.21, %if.end.19
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_class_init(%struct._GimpNavigationViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpNavigationViewClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpNavigationViewClass* %klass, %struct._GimpNavigationViewClass** %klass.addr, align 8
  %0 = load %struct._GimpNavigationViewClass*, %struct._GimpNavigationViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpNavigationViewClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GimpNavigationViewClass*, %struct._GimpNavigationViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpNavigationViewClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 %5, i32 1, i32 752, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, i64 4, i32 4, i64 60, i64 60, i64 60, i64 60)
  store i32 %call2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpNavigationViewClass*, %struct._GimpNavigationViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpNavigationViewClass* %6 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type3, align 8
  %call4 = call i64 @gimp_zoom_type_get_type() #5
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %8, i32 1, i32 760, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 1), align 4
  %9 = load %struct._GimpNavigationViewClass*, %struct._GimpNavigationViewClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpNavigationViewClass* %9 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type6, align 8
  %call7 = call i64 @gdk_scroll_direction_get_type() #5
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 %11, i32 1, i32 768, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call7)
  store i32 %call8, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 2), align 4
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_navigation_view_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_navigation_view_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_navigation_view_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_navigation_view_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %scroll_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 27
  store i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)* @gimp_navigation_view_scroll, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)** %scroll_event, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_navigation_view_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 32
  store i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_navigation_view_key_press, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gdk_scroll_direction_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load i8*, i8** @gimp_navigation_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 13
  %3 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %3(%struct._GtkWidget* %4, %struct._GdkRectangle* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 3
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_navigation_view_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpNavigationView*
  call void @gimp_navigation_view_transform(%struct._GimpNavigationView* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @gimp_navigation_view_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call1)
  %3 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 31
  %4 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call3 = call i32 %4(%struct._GtkWidget* %5, %struct._GdkEventExpose* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  %call5 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call4)
  store %struct._cairo* %call5, %struct._cairo** %cr, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %9, i32 0, i32 4
  %10 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %8, %struct._GdkRegion* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_navigation_view_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpNavigationView*
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_navigation_view_draw_marker(%struct._GimpNavigationView* %14, %struct._cairo* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %nav_view = alloca %struct._GimpNavigationView*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %2, %struct._GimpNavigationView** %nav_view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 4
  %4 = load double, double* %x, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, i32* %tx, align 4
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 5
  %6 = load double, double* %y, align 8
  %conv2 = fptosi double %6 to i32
  store i32 %conv2, i32* %ty, align 4
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 8
  %10 = load i32, i32* %button, align 4
  %cmp4 = icmp eq i32 %10, 1
  br i1 %cmp4, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %tx, align 4
  %12 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %12, i32 0, i32 5
  %13 = load i32, i32* %p_x, align 4
  %cmp6 = icmp sgt i32 %11, %13
  br i1 %cmp6, label %land.lhs.true.8, label %if.then.20

land.lhs.true.8:                                  ; preds = %if.then
  %14 = load i32, i32* %tx, align 4
  %15 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x9 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %15, i32 0, i32 5
  %16 = load i32, i32* %p_x9, align 4
  %17 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %17, i32 0, i32 7
  %18 = load i32, i32* %p_width, align 4
  %add = add nsw i32 %16, %18
  %cmp10 = icmp slt i32 %14, %add
  br i1 %cmp10, label %land.lhs.true.12, label %if.then.20

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %19 = load i32, i32* %ty, align 4
  %20 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %20, i32 0, i32 6
  %21 = load i32, i32* %p_y, align 4
  %cmp13 = icmp sgt i32 %19, %21
  br i1 %cmp13, label %land.lhs.true.15, label %if.then.20

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %22 = load i32, i32* %ty, align 4
  %23 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y16 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %23, i32 0, i32 6
  %24 = load i32, i32* %p_y16, align 4
  %25 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %25, i32 0, i32 8
  %26 = load i32, i32* %p_height, align 4
  %add17 = add nsw i32 %24, %26
  %cmp18 = icmp slt i32 %22, %add17
  br i1 %cmp18, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.8, %if.then
  %27 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_width21 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %27, i32 0, i32 7
  %28 = load i32, i32* %p_width21, align 4
  %div = sdiv i32 %28, 2
  %29 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %29, i32 0, i32 9
  store i32 %div, i32* %motion_offset_x, align 4
  %30 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_height22 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %30, i32 0, i32 8
  %31 = load i32, i32* %p_height22, align 4
  %div23 = sdiv i32 %31, 2
  %32 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %32, i32 0, i32 10
  store i32 %div23, i32* %motion_offset_y, align 4
  %33 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_x24 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %33, i32 0, i32 9
  %34 = load i32, i32* %motion_offset_x24, align 4
  %35 = load i32, i32* %tx, align 4
  %sub = sub nsw i32 %35, %34
  store i32 %sub, i32* %tx, align 4
  %36 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_y25 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %36, i32 0, i32 10
  %37 = load i32, i32* %motion_offset_y25, align 4
  %38 = load i32, i32* %ty, align 4
  %sub26 = sub nsw i32 %38, %37
  store i32 %sub26, i32* %ty, align 4
  %39 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %40 = load i32, i32* %tx, align 4
  %41 = load i32, i32* %ty, align 4
  call void @gimp_navigation_view_move_to(%struct._GimpNavigationView* %39, i32 %40, i32 %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call27 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %42)
  store %struct._GdkDisplay* %call27, %struct._GdkDisplay** %display, align 8
  %43 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call28 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %43, i32 52)
  store %struct._GdkCursor* %call28, %struct._GdkCursor** %cursor, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_view_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpView*
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %46, i32 0, i32 1
  %47 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  %48 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %47, %struct._GdkCursor* %48)
  %49 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %49)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15
  %50 = load i32, i32* %tx, align 4
  %51 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x31 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %51, i32 0, i32 5
  %52 = load i32, i32* %p_x31, align 4
  %sub32 = sub nsw i32 %50, %52
  %53 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_x33 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %53, i32 0, i32 9
  store i32 %sub32, i32* %motion_offset_x33, align 4
  %54 = load i32, i32* %ty, align 4
  %55 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y34 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %55, i32 0, i32 6
  %56 = load i32, i32* %p_y34, align 4
  %sub35 = sub nsw i32 %54, %56
  %57 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_y36 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %57, i32 0, i32 10
  store i32 %sub35, i32* %motion_offset_y36, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  %58 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  call void @gimp_navigation_view_grab_pointer(%struct._GimpNavigationView* %58)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %nav_view = alloca %struct._GimpNavigationView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %2, %struct._GimpNavigationView** %nav_view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %has_grab = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %5, i32 0, i32 11
  %6 = load i32, i32* %has_grab, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %has_grab2 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %7, i32 0, i32 11
  store i32 0, i32* %has_grab2, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %9)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_scroll(%struct._GtkWidget* %widget, %struct._GdkEventScroll* %sevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %sevent.addr = alloca %struct._GdkEventScroll*, align 8
  %direction2 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventScroll* %sevent, %struct._GdkEventScroll** %sevent.addr, align 8
  %0 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %0, i32 0, i32 6
  %1 = load i32, i32* %state, align 4
  %call = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %1, %call
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent.addr, align 8
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %2, i32 0, i32 7
  %3 = load i32, i32* %direction, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %5, i32 %6, i32 0, i32 0)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %8, i32 %9, i32 0, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  br label %if.end.13

if.else:                                          ; preds = %entry
  %10 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent.addr, align 8
  %direction3 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %10, i32 0, i32 7
  %11 = load i32, i32* %direction3, align 4
  store i32 %11, i32* %direction2, align 4
  %12 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent.addr, align 8
  %state4 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %12, i32 0, i32 6
  %13 = load i32, i32* %state4, align 4
  %and5 = and i32 %13, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %14 = load i32, i32* %direction2, align 4
  switch i32 %14, label %sw.epilog.12 [
    i32 0, label %sw.bb.8
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb.8:                                          ; preds = %if.then.7
  store i32 2, i32* %direction2, align 4
  br label %sw.epilog.12

sw.bb.9:                                          ; preds = %if.then.7
  store i32 3, i32* %direction2, align 4
  br label %sw.epilog.12

sw.bb.10:                                         ; preds = %if.then.7
  store i32 0, i32* %direction2, align 4
  br label %sw.epilog.12

sw.bb.11:                                         ; preds = %if.then.7
  store i32 1, i32* %direction2, align 4
  br label %sw.epilog.12

sw.epilog.12:                                     ; preds = %if.then.7, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8
  br label %if.end

if.end:                                           ; preds = %sw.epilog.12, %if.else
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 2), align 4
  %18 = load i32, i32* %direction2, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %16, i32 %17, i32 0, i32 %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %sw.epilog
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %nav_view = alloca %struct._GimpNavigationView*, align 8
  %view = alloca %struct._GimpView*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %2, %struct._GimpNavigationView** %nav_view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  store %struct._GimpView* %5, %struct._GimpView** %view, align 8
  %6 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %has_grab = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %6, i32 0, i32 11
  %7 = load i32, i32* %has_grab, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.41, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %8)
  store %struct._GdkDisplay* %call4, %struct._GdkDisplay** %display, align 8
  %9 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %9, i32 0, i32 5
  %10 = load i32, i32* %p_x, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %11, i32 0, i32 6
  %12 = load i32, i32* %p_y, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %13, i32 0, i32 7
  %14 = load i32, i32* %p_width, align 4
  %15 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %15, i32 0, i32 3
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 4
  %17 = load i32, i32* %width, align 4
  %cmp7 = icmp eq i32 %14, %17
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %18 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %18, i32 0, i32 8
  %19 = load i32, i32* %p_height, align 4
  %20 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer9 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %20, i32 0, i32 3
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer9, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 5
  %22 = load i32, i32* %height, align 4
  %cmp10 = icmp eq i32 %19, %22
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true.8
  %23 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %23, i32 0, i32 1
  %24 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %24, %struct._GdkCursor* null)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.then
  %25 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %25, i32 0, i32 4
  %26 = load double, double* %x, align 8
  %27 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x12 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %27, i32 0, i32 5
  %28 = load i32, i32* %p_x12, align 4
  %conv = sitofp i32 %28 to double
  %cmp13 = fcmp oge double %26, %conv
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.37

land.lhs.true.15:                                 ; preds = %if.else
  %29 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %29, i32 0, i32 5
  %30 = load double, double* %y, align 8
  %31 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y16 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %31, i32 0, i32 6
  %32 = load i32, i32* %p_y16, align 4
  %conv17 = sitofp i32 %32 to double
  %cmp18 = fcmp oge double %30, %conv17
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.37

land.lhs.true.20:                                 ; preds = %land.lhs.true.15
  %33 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x21 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %33, i32 0, i32 4
  %34 = load double, double* %x21, align 8
  %35 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x22 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %35, i32 0, i32 5
  %36 = load i32, i32* %p_x22, align 4
  %37 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_width23 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %37, i32 0, i32 7
  %38 = load i32, i32* %p_width23, align 4
  %add = add nsw i32 %36, %38
  %conv24 = sitofp i32 %add to double
  %cmp25 = fcmp olt double %34, %conv24
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.37

land.lhs.true.27:                                 ; preds = %land.lhs.true.20
  %39 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %y28 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %39, i32 0, i32 5
  %40 = load double, double* %y28, align 8
  %41 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y29 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %41, i32 0, i32 6
  %42 = load i32, i32* %p_y29, align 4
  %43 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_height30 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %43, i32 0, i32 8
  %44 = load i32, i32* %p_height30, align 4
  %add31 = add nsw i32 %42, %44
  %conv32 = sitofp i32 %add31 to double
  %cmp33 = fcmp olt double %40, %conv32
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.27
  %45 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call36 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %45, i32 52)
  store %struct._GdkCursor* %call36, %struct._GdkCursor** %cursor, align 8
  br label %if.end

if.else.37:                                       ; preds = %land.lhs.true.27, %land.lhs.true.20, %land.lhs.true.15, %if.else
  %46 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call38 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %46, i32 60)
  store %struct._GdkCursor* %call38, %struct._GdkCursor** %cursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end
  %47 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window40 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %47, i32 0, i32 1
  %48 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window40, align 8
  %49 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %48, %struct._GdkCursor* %49)
  %50 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %50)
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %entry
  %51 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %52 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x42 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %52, i32 0, i32 4
  %53 = load double, double* %x42, align 8
  %54 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %54, i32 0, i32 9
  %55 = load i32, i32* %motion_offset_x, align 4
  %conv43 = sitofp i32 %55 to double
  %sub = fsub double %53, %conv43
  %conv44 = fptosi double %sub to i32
  %56 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %y45 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %56, i32 0, i32 5
  %57 = load double, double* %y45, align 8
  %58 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %motion_offset_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %58, i32 0, i32 10
  %59 = load i32, i32* %motion_offset_y, align 4
  %conv46 = sitofp i32 %59 to double
  %sub47 = fsub double %57, %conv46
  %conv48 = fptosi double %sub47 to i32
  call void @gimp_navigation_view_move_to(%struct._GimpNavigationView* %51, i32 %conv44, i32 %conv48)
  %60 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %60)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.end.39, %if.then.11
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_view_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %nav_view = alloca %struct._GimpNavigationView*, align 8
  %scroll_x = alloca i32, align 4
  %scroll_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %2, %struct._GimpNavigationView** %nav_view, align 8
  store i32 0, i32* %scroll_x, align 4
  store i32 0, i32* %scroll_y, align 4
  %3 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %3, i32 0, i32 5
  %4 = load i32, i32* %keyval, align 4
  switch i32 %4, label %sw.default [
    i32 65362, label %sw.bb
    i32 65361, label %sw.bb.2
    i32 65363, label %sw.bb.3
    i32 65364, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 -1, i32* %scroll_y, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 -1, i32* %scroll_x, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 1, i32* %scroll_x, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* %scroll_y, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %5 = load i32, i32* %scroll_x, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %6 = load i32, i32* %scroll_y, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  %7 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %8 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %8, i32 0, i32 5
  %9 = load i32, i32* %p_x, align 4
  %10 = load i32, i32* %scroll_x, align 4
  %add = add nsw i32 %9, %10
  %11 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %11, i32 0, i32 6
  %12 = load i32, i32* %p_y, align 4
  %13 = load i32, i32* %scroll_y, align 4
  %add6 = add nsw i32 %12, %13
  call void @gimp_navigation_view_move_to(%struct._GimpNavigationView* %7, i32 %add, i32 %add6)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_draw_marker(%struct._GimpNavigationView* %nav_view, %struct._cairo* %cr) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %view = alloca %struct._GimpView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 3
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %6, i32 0, i32 3
  %7 = load double, double* %width, align 8
  %tobool2 = fcmp une double %7, 0.000000e+00
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %8, i32 0, i32 4
  %9 = load double, double* %height, align 8
  %tobool4 = fcmp une double %9, 0.000000e+00
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %10 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %11 = bitcast %struct._GimpView* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %widget, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %13, %struct._GdkRectangle* %allocation)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %15 = load i32, i32* %x, align 4
  %conv = sitofp i32 %15 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %16 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %16 to double
  call void @cairo_translate(%struct._cairo* %14, double %conv, double %conv7)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width8, align 4
  %conv9 = sitofp i32 %18 to double
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %19 = load i32, i32* %height10, align 4
  %conv11 = sitofp i32 %19 to double
  call void @cairo_rectangle(%struct._cairo* %17, double 0.000000e+00, double 0.000000e+00, double %conv9, double %conv11)
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %21 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_x = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %21, i32 0, i32 5
  %22 = load i32, i32* %p_x, align 4
  %conv12 = sitofp i32 %22 to double
  %23 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_y = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %23, i32 0, i32 6
  %24 = load i32, i32* %p_y, align 4
  %conv13 = sitofp i32 %24 to double
  %25 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %25, i32 0, i32 7
  %26 = load i32, i32* %p_width, align 4
  %conv14 = sitofp i32 %26 to double
  %27 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %27, i32 0, i32 8
  %28 = load i32, i32* %p_height, align 4
  %conv15 = sitofp i32 %28 to double
  call void @cairo_rectangle(%struct._cairo* %20, double %conv12, double %conv13, double %conv14, double %conv15)
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %29, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_fill_rule(%struct._cairo* %30, i32 1)
  %31 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_x16 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %33, i32 0, i32 5
  %34 = load i32, i32* %p_x16, align 4
  %conv17 = sitofp i32 %34 to double
  %35 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_y18 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %35, i32 0, i32 6
  %36 = load i32, i32* %p_y18, align 4
  %conv19 = sitofp i32 %36 to double
  %37 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_width20 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %37, i32 0, i32 7
  %38 = load i32, i32* %p_width20, align 4
  %conv21 = sitofp i32 %38 to double
  %39 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %p_height22 = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %39, i32 0, i32 8
  %40 = load i32, i32* %p_height22, align 4
  %conv23 = sitofp i32 %40 to double
  call void @cairo_rectangle(%struct._cairo* %32, double %conv17, double %conv19, double %conv21, double %conv23)
  %41 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %41, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %42, double 2.000000e+00)
  %43 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %43)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %entry
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_fill_rule(%struct._cairo*, i32) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_move_to(%struct._GimpNavigationView* %nav_view, i32 %tx, i32 %ty) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  %view = alloca %struct._GimpView*, align 8
  %ratiox = alloca double, align 8
  %ratioy = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  store i32 %tx, i32* %tx.addr, align 4
  store i32 %ty, i32* %ty.addr, align 4
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 3
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  call void @gimp_navigation_view_get_ratio(%struct._GimpNavigationView* %6, double* %ratiox, double* %ratioy)
  %7 = load i32, i32* %tx.addr, align 4
  %conv = sitofp i32 %7 to double
  %8 = load double, double* %ratiox, align 8
  %div = fdiv double %conv, %8
  store double %div, double* %x, align 8
  %9 = load i32, i32* %ty.addr, align 4
  %conv2 = sitofp i32 %9 to double
  %10 = load double, double* %ratioy, align 8
  %div3 = fdiv double %conv2, %10
  store double %div3, double* %y, align 8
  %11 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %12 = bitcast %struct._GimpView* %11 to i8*
  %13 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 0), align 4
  %14 = load double, double* %x, align 8
  %15 = load double, double* %y, align 8
  %16 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %width = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %16, i32 0, i32 3
  %17 = load double, double* %width, align 8
  %18 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %height = getelementptr inbounds %struct._GimpNavigationView, %struct._GimpNavigationView* %18, i32 0, i32 4
  %19 = load double, double* %height, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %12, i32 %13, i32 0, double %14, double %15, double %17, double %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_view_get_ratio(%struct._GimpNavigationView* %nav_view, double* %ratiox, double* %ratioy) #3 {
entry:
  %nav_view.addr = alloca %struct._GimpNavigationView*, align 8
  %ratiox.addr = alloca double*, align 8
  %ratioy.addr = alloca double*, align 8
  %view = alloca %struct._GimpView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpNavigationView* %nav_view, %struct._GimpNavigationView** %nav_view.addr, align 8
  store double* %ratiox, double** %ratiox.addr, align 8
  store double* %ratioy, double** %ratioy.addr, align 8
  %0 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %nav_view.addr, align 8
  %1 = bitcast %struct._GimpNavigationView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 3
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImage*
  store %struct._GimpImage* %7, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 4
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %11)
  %conv6 = sitofp i32 %call5 to double
  %div = fdiv double %conv, %conv6
  %12 = load double*, double** %ratiox.addr, align 8
  store double %div, double* %12, align 8
  %13 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer7 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 3
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer7, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 5
  %15 = load i32, i32* %height, align 4
  %conv8 = sitofp i32 %15 to double
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  %conv10 = sitofp i32 %call9 to double
  %div11 = fdiv double %conv8, %conv10
  %17 = load double*, double** %ratioy.addr, align 8
  store double %div11, double* %17, align 8
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
