; ModuleID = './app/widgets/gimphandlebar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpHandleBarClass = type { %struct._GtkEventBoxClass }
%struct._GtkEventBoxClass = type { %struct._GtkBinClass }
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
%struct._GimpHandleBar = type { %struct._GtkEventBox, i32, [3 x %struct._GtkAdjustment*], double, double, [3 x i32], i32 }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_handle_bar_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpHandleBar\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_handle_bar_set_adjustment = private unnamed_addr constant [31 x i8] c"gimp_handle_bar_set_adjustment\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"GIMP_IS_HANDLE_BAR (bar)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"handle_no >= 0 && handle_no <= 2\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"adjustment == NULL || GTK_IS_ADJUSTMENT (adjustment)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@gimp_handle_bar_parent_class = internal global i8* null, align 8
@GimpHandleBar_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimphandlebar.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_handle_bar_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_handle_bar_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_handle_bar_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_event_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_handle_bar_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHandleBar*)* @gimp_handle_bar_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_handle_bar_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_handle_bar_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_event_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_handle_bar_parent_class, align 8
  %1 = load i32, i32* @GimpHandleBar_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHandleBar_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHandleBarClass*
  call void @gimp_handle_bar_class_init(%struct._GimpHandleBarClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_init(%struct._GimpHandleBar* %bar) #3 {
entry:
  %bar.addr = alloca %struct._GimpHandleBar*, align 8
  store %struct._GimpHandleBar* %bar, %struct._GimpHandleBar** %bar.addr, align 8
  %0 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpHandleBar* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %2, i32 784)
  %3 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %4 = bitcast %struct._GimpHandleBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_event_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEventBox*
  call void @gtk_event_box_set_visible_window(%struct._GtkEventBox* %5, i32 0)
  %6 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %orientation = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %6, i32 0, i32 1
  store i32 0, i32* %orientation, align 4
  %7 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %lower = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %7, i32 0, i32 3
  store double 0.000000e+00, double* %lower, align 8
  %8 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %upper = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %8, i32 0, i32 4
  store double 1.000000e+00, double* %upper, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_handle_bar_new(i32 %orientation) #3 {
entry:
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %call = call i64 @gimp_handle_bar_get_type() #6
  %0 = load i32, i32* %orientation.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %bar, i32 %handle_no, %struct._GtkAdjustment* %adjustment) #3 {
entry:
  %bar.addr = alloca %struct._GimpHandleBar*, align 8
  %handle_no.addr = alloca i32, align 4
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpHandleBar* %bar, %struct._GimpHandleBar** %bar.addr, align 8
  store i32 %handle_no, i32* %handle_no.addr, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpHandleBar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_handle_bar_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_handle_bar_set_adjustment, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %handle_no.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %handle_no.addr, align 4
  %cmp14 = icmp sle i32 %14, 2
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_handle_bar_set_adjustment, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %cmp20 = icmp eq %struct._GtkAdjustment* %15, null
  br i1 %cmp20, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.19
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %17 = bitcast %struct._GtkAdjustment* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gtk_adjustment_get_type() #6
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %lor.lhs.false
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41, %do.body.19
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_handle_bar_set_adjustment, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %30 = load i32, i32* %handle_no.addr, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %31, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj, i32 0, i64 %idxprom
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx, align 8
  %cmp48 = icmp eq %struct._GtkAdjustment* %29, %32
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.47
  br label %return

if.end.50:                                        ; preds = %do.end.47
  %33 = load i32, i32* %handle_no.addr, align 4
  %idxprom51 = sext i32 %33 to i64
  %34 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj52 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %34, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj52, i32 0, i64 %idxprom51
  %35 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx53, align 8
  %tobool54 = icmp ne %struct._GtkAdjustment* %35, null
  br i1 %tobool54, label %if.then.55, label %if.end.66

if.then.55:                                       ; preds = %if.end.50
  %36 = load i32, i32* %handle_no.addr, align 4
  %idxprom56 = sext i32 %36 to i64
  %37 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj57 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %37, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj57, i32 0, i64 %idxprom56
  %38 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx58, align 8
  %39 = bitcast %struct._GtkAdjustment* %38 to i8*
  %40 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %41 = bitcast %struct._GimpHandleBar* %40 to i8*
  %call59 = call i32 @g_signal_handlers_disconnect_matched(i8* %39, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHandleBar*)* @gimp_handle_bar_adjustment_changed to i8*), i8* %41)
  %42 = load i32, i32* %handle_no.addr, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj61 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %43, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj61, i32 0, i64 %idxprom60
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx62, align 8
  %45 = bitcast %struct._GtkAdjustment* %44 to i8*
  call void @g_object_unref(i8* %45)
  %46 = load i32, i32* %handle_no.addr, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj64 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %47, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj64, i32 0, i64 %idxprom63
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %arrayidx65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.55, %if.end.50
  %48 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %49 = load i32, i32* %handle_no.addr, align 4
  %idxprom67 = sext i32 %49 to i64
  %50 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj68 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %50, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj68, i32 0, i64 %idxprom67
  store %struct._GtkAdjustment* %48, %struct._GtkAdjustment** %arrayidx69, align 8
  %51 = load i32, i32* %handle_no.addr, align 4
  %idxprom70 = sext i32 %51 to i64
  %52 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj71 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %52, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj71, i32 0, i64 %idxprom70
  %53 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx72, align 8
  %tobool73 = icmp ne %struct._GtkAdjustment* %53, null
  br i1 %tobool73, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %if.end.66
  %54 = load i32, i32* %handle_no.addr, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj76 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %55, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj76, i32 0, i64 %idxprom75
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx77, align 8
  %57 = bitcast %struct._GtkAdjustment* %56 to i8*
  %call78 = call i8* @g_object_ref(i8* %57)
  %58 = load i32, i32* %handle_no.addr, align 4
  %idxprom79 = sext i32 %58 to i64
  %59 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj80 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %59, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj80, i32 0, i64 %idxprom79
  %60 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx81, align 8
  %61 = bitcast %struct._GtkAdjustment* %60 to i8*
  %62 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %63 = bitcast %struct._GimpHandleBar* %62 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHandleBar*)* @gimp_handle_bar_adjustment_changed to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.74, %if.end.66
  %64 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj84 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %64, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj84, i32 0, i64 0
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx85, align 8
  %tobool86 = icmp ne %struct._GtkAdjustment* %65, null
  br i1 %tobool86, label %if.then.87, label %if.else.91

if.then.87:                                       ; preds = %if.end.83
  %66 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj88 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %66, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj88, i32 0, i64 0
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx89, align 8
  %call90 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %67)
  %68 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %lower = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %68, i32 0, i32 3
  store double %call90, double* %lower, align 8
  br label %if.end.97

if.else.91:                                       ; preds = %if.end.83
  %69 = load i32, i32* %handle_no.addr, align 4
  %idxprom92 = sext i32 %69 to i64
  %70 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj93 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %70, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj93, i32 0, i64 %idxprom92
  %71 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx94, align 8
  %call95 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %71)
  %72 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %lower96 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %72, i32 0, i32 3
  store double %call95, double* %lower96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.91, %if.then.87
  %73 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj98 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %73, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj98, i32 0, i64 2
  %74 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx99, align 8
  %tobool100 = icmp ne %struct._GtkAdjustment* %74, null
  br i1 %tobool100, label %if.then.101, label %if.else.105

if.then.101:                                      ; preds = %if.end.97
  %75 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj102 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %75, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj102, i32 0, i64 2
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx103, align 8
  %call104 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %76)
  %77 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %upper = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %77, i32 0, i32 4
  store double %call104, double* %upper, align 8
  br label %if.end.111

if.else.105:                                      ; preds = %if.end.97
  %78 = load i32, i32* %handle_no.addr, align 4
  %idxprom106 = sext i32 %78 to i64
  %79 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj107 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %79, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj107, i32 0, i64 %idxprom106
  %80 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx108, align 8
  %call109 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %80)
  %81 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %upper110 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %81, i32 0, i32 4
  store double %call109, double* %upper110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.105, %if.then.101
  %82 = load i32, i32* %handle_no.addr, align 4
  %idxprom112 = sext i32 %82 to i64
  %83 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %slider_adj113 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %83, i32 0, i32 2
  %arrayidx114 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj113, i32 0, i64 %idxprom112
  %84 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx114, align 8
  %85 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  call void @gimp_handle_bar_adjustment_changed(%struct._GtkAdjustment* %84, %struct._GimpHandleBar* %85)
  br label %return

return:                                           ; preds = %if.end.111, %if.then.49, %if.else.45, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_adjustment_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpHandleBar* %bar) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %bar.addr = alloca %struct._GimpHandleBar*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHandleBar* %bar, %struct._GimpHandleBar** %bar.addr, align 8
  %0 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpHandleBar* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %2)
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_class_init(%struct._GimpHandleBarClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHandleBarClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpHandleBarClass* %klass, %struct._GimpHandleBarClass** %klass.addr, align 8
  %0 = load %struct._GimpHandleBarClass*, %struct._GimpHandleBarClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHandleBarClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpHandleBarClass*, %struct._GimpHandleBarClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpHandleBarClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_handle_bar_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_handle_bar_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_handle_bar_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_handle_bar_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_handle_bar_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_handle_bar_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gtk_orientation_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %bar = alloca %struct._GimpHandleBar*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_handle_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHandleBar*
  store %struct._GimpHandleBar* %2, %struct._GimpHandleBar** %bar, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %orientation = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %5, i32 0, i32 1
  store i32 %call2, i32* %orientation, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_handle_bar_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %bar = alloca %struct._GimpHandleBar*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_handle_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHandleBar*
  store %struct._GimpHandleBar* %2, %struct._GimpHandleBar** %bar, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %orientation = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %5, i32 0, i32 1
  %6 = load i32, i32* %orientation, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
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
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_handle_bar_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %bar = alloca %struct._GimpHandleBar*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_handle_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHandleBar*
  store %struct._GimpHandleBar* %2, %struct._GimpHandleBar** %bar, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  store i32 %call4, i32* %y, align 4
  store i32 %call4, i32* %x, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width5, align 4
  %8 = load i32, i32* %x, align 4
  %mul = mul nsw i32 2, %8
  %sub = sub nsw i32 %7, %mul
  store i32 %sub, i32* %width, align 4
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %9 = load i32, i32* %height6, align 4
  %10 = load i32, i32* %y, align 4
  %mul7 = mul nsw i32 2, %10
  %sub8 = sub nsw i32 %9, %mul7
  store i32 %sub8, i32* %height, align 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %11)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %12 = load i32, i32* %x10, align 4
  %13 = load i32, i32* %x, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %x, align 4
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %14 = load i32, i32* %y11, align 4
  %15 = load i32, i32* %y, align 4
  %add12 = add nsw i32 %15, %14
  store i32 %add12, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %16)
  %call14 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call13)
  store %struct._cairo* %call14, %struct._cairo** %cr, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %18, i32 0, i32 4
  %19 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %17, %struct._GdkRegion* %19)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %21, double 1.000000e+00)
  %22 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %22, double 5.000000e-01, double 5.000000e-01)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %23, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %25, i32 0, i32 5
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_adj = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %27, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj, i32 0, i64 %idxprom15
  %28 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx16, align 8
  %tobool17 = icmp ne %struct._GtkAdjustment* %28, null
  br i1 %tobool17, label %if.then.18, label %if.end.73

if.then.18:                                       ; preds = %for.body
  %29 = load i32, i32* %width, align 4
  %conv = sitofp i32 %29 to double
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_adj20 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %31, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj20, i32 0, i64 %idxprom19
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx21, align 8
  %call22 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %32)
  %33 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %lower = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %33, i32 0, i32 3
  %34 = load double, double* %lower, align 8
  %sub23 = fsub double %call22, %34
  %mul24 = fmul double %conv, %sub23
  %35 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %upper = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %35, i32 0, i32 4
  %36 = load double, double* %upper, align 8
  %37 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %lower25 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %37, i32 0, i32 3
  %38 = load double, double* %lower25, align 8
  %sub26 = fsub double %36, %38
  %add27 = fadd double %sub26, 1.000000e+00
  %div = fdiv double %mul24, %add27
  %add28 = fadd double %div, 5.000000e-01
  %conv29 = fptosi double %add28 to i32
  %39 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos31 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %40, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos31, i32 0, i64 %idxprom30
  store i32 %conv29, i32* %arrayidx32, align 4
  %41 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %42 = load i32, i32* %i, align 4
  %conv33 = sitofp i32 %42 to double
  %mul34 = fmul double 5.000000e-01, %conv33
  %43 = load i32, i32* %i, align 4
  %conv35 = sitofp i32 %43 to double
  %mul36 = fmul double 5.000000e-01, %conv35
  %44 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %44 to double
  %mul38 = fmul double 5.000000e-01, %conv37
  call void @cairo_set_source_rgb(%struct._cairo* %41, double %mul34, double %mul36, double %mul38)
  %45 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %47 to i64
  %48 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos40 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %48, i32 0, i32 5
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos40, i32 0, i64 %idxprom39
  %49 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %46, %49
  %conv43 = sitofp i32 %add42 to double
  %50 = load i32, i32* %y, align 4
  %conv44 = sitofp i32 %50 to double
  call void @cairo_move_to(%struct._cairo* %45, double %conv43, double %conv44)
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos46 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %54, i32 0, i32 5
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos46, i32 0, i64 %idxprom45
  %55 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %52, %55
  %56 = load i32, i32* %height, align 4
  %sub49 = sub nsw i32 %56, 1
  %div50 = sdiv i32 %sub49, 2
  %sub51 = sub nsw i32 %add48, %div50
  %conv52 = sitofp i32 %sub51 to double
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %height, align 4
  %add53 = add nsw i32 %57, %58
  %sub54 = sub nsw i32 %add53, 1
  %conv55 = sitofp i32 %sub54 to double
  call void @cairo_line_to(%struct._cairo* %51, double %conv52, double %conv55)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %61 to i64
  %62 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos57 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %62, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos57, i32 0, i64 %idxprom56
  %63 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %60, %63
  %64 = load i32, i32* %height, align 4
  %sub60 = sub nsw i32 %64, 1
  %div61 = sdiv i32 %sub60, 2
  %add62 = add nsw i32 %add59, %div61
  %conv63 = sitofp i32 %add62 to double
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %height, align 4
  %add64 = add nsw i32 %65, %66
  %sub65 = sub nsw i32 %add64, 1
  %conv66 = sitofp i32 %sub65 to double
  call void @cairo_line_to(%struct._cairo* %59, double %conv63, double %conv66)
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %69 to i64
  %70 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos68 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %70, i32 0, i32 5
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos68, i32 0, i64 %idxprom67
  %71 = load i32, i32* %arrayidx69, align 4
  %add70 = add nsw i32 %68, %71
  %conv71 = sitofp i32 %add70 to double
  %72 = load i32, i32* %y, align 4
  %conv72 = sitofp i32 %72 to double
  call void @cairo_line_to(%struct._cairo* %67, double %conv71, double %conv72)
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %73)
  %74 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %74, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %75 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %75)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %77)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_handle_bar_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %bar = alloca %struct._GimpHandleBar*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %value = alloca double, align 8
  %min_dist = alloca i32, align 4
  %i = alloca i32, align 4
  %dist = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_handle_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHandleBar*
  store %struct._GimpHandleBar* %2, %struct._GimpHandleBar** %bar, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  store i32 %call4, i32* %border, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width5, align 4
  %8 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %8
  %sub = sub nsw i32 %7, %mul
  store i32 %sub, i32* %width, align 4
  %9 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 2147483647, i32* %min_dist, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %10, 3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %12, i32 0, i32 5
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %cmp7 = icmp ne i32 %13, -1
  br i1 %cmp7, label %if.then.8, label %if.end.28

if.then.8:                                        ; preds = %for.body
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 4
  %15 = load double, double* %x, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_pos10 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %17, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %slider_pos10, i32 0, i64 %idxprom9
  %18 = load i32, i32* %arrayidx11, align 4
  %conv = sitofp i32 %18 to double
  %sub12 = fsub double %15, %conv
  %19 = load i32, i32* %border, align 4
  %conv13 = sitofp i32 %19 to double
  %add = fadd double %sub12, %conv13
  store double %add, double* %dist, align 8
  %20 = load double, double* %dist, align 8
  %call14 = call double @fabs(double %20) #6
  %21 = load i32, i32* %min_dist, align 4
  %conv15 = sitofp i32 %21 to double
  %cmp16 = fcmp olt double %call14, %conv15
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %22 = load double, double* %dist, align 8
  %call18 = call double @fabs(double %22) #6
  %23 = load i32, i32* %min_dist, align 4
  %conv19 = sitofp i32 %23 to double
  %cmp20 = fcmp oeq double %call18, %conv19
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = load double, double* %dist, align 8
  %cmp22 = fcmp ogt double %24, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true, %if.then.8
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %active_slider = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %26, i32 0, i32 6
  store i32 %25, i32* %active_slider, align 4
  %27 = load double, double* %dist, align 8
  %call25 = call double @fabs(double %27) #6
  %conv26 = fptosi double %call25 to i32
  store i32 %conv26, i32* %min_dist, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x29 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %29, i32 0, i32 4
  %30 = load double, double* %x29, align 8
  %31 = load i32, i32* %border, align 4
  %conv30 = sitofp i32 %31 to double
  %sub31 = fsub double %30, %conv30
  %32 = load i32, i32* %width, align 4
  %conv32 = sitofp i32 %32 to double
  %div = fdiv double %sub31, %conv32
  %33 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %upper = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %33, i32 0, i32 4
  %34 = load double, double* %upper, align 8
  %35 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %lower = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %35, i32 0, i32 3
  %36 = load double, double* %lower, align 8
  %sub33 = fsub double %34, %36
  %add34 = fadd double %sub33, 1.000000e+00
  %mul35 = fmul double %div, %add34
  store double %mul35, double* %value, align 8
  %37 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %active_slider36 = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %37, i32 0, i32 6
  %38 = load i32, i32* %active_slider36, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_adj = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %39, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj, i32 0, i64 %idxprom37
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx38, align 8
  %41 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %40, double %41)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_handle_bar_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_handle_bar_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %bar = alloca %struct._GimpHandleBar*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %value = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_handle_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHandleBar*
  store %struct._GimpHandleBar* %2, %struct._GimpHandleBar** %bar, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  store i32 %call4, i32* %border, align 4
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width5, align 4
  %8 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %8
  %sub = sub nsw i32 %7, %mul
  store i32 %sub, i32* %width, align 4
  %9 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %10, i32 0, i32 4
  %11 = load double, double* %x, align 8
  %12 = load i32, i32* %border, align 4
  %conv = sitofp i32 %12 to double
  %sub6 = fsub double %11, %conv
  %13 = load i32, i32* %width, align 4
  %conv7 = sitofp i32 %13 to double
  %div = fdiv double %sub6, %conv7
  %14 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %upper = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %14, i32 0, i32 4
  %15 = load double, double* %upper, align 8
  %16 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %lower = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %16, i32 0, i32 3
  %17 = load double, double* %lower, align 8
  %sub8 = fsub double %15, %17
  %add = fadd double %sub8, 1.000000e+00
  %mul9 = fmul double %div, %add
  store double %mul9, double* %value, align 8
  %18 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %active_slider = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %18, i32 0, i32 6
  %19 = load i32, i32* %active_slider, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._GimpHandleBar*, %struct._GimpHandleBar** %bar, align 8
  %slider_adj = getelementptr inbounds %struct._GimpHandleBar, %struct._GimpHandleBar* %20, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x %struct._GtkAdjustment*], [3 x %struct._GtkAdjustment*]* %slider_adj, i32 0, i64 %idxprom
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx, align 8
  %22 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %21, double %22)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientation_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_event_box_set_visible_window(%struct._GtkEventBox*, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

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