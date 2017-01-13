; ModuleID = './app/widgets/gimpscalebutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpScaleButtonClass = type { %struct._GtkScaleButtonClass }
%struct._GtkScaleButtonClass = type { %struct._GtkButtonClass, void (%struct._GtkScaleButton*, double)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkButtonClass = type { %struct._GtkBinClass, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkScaleButton = type { %struct._GtkButton, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkScaleButtonPrivate* }
%struct._GtkScaleButtonPrivate = type opaque
%struct._GimpScaleButton = type { %struct._GtkScaleButton }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo = type opaque

@gimp_scale_button_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpScaleButton\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_scale_button_new = private unnamed_addr constant [22 x i8] c"gimp_scale_button_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"value >= min && value <= max\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@gimp_scale_button_parent_class = internal global i8* null, align 8
@GimpScaleButton_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%d\E2\80\89%%\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"notify::adjustment\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_scale_button_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_scale_button_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_scale_button_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_scale_button_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 944, void (i8*, i8*)* bitcast (void (i8*)* @gimp_scale_button_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpScaleButton*)* @gimp_scale_button_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_scale_button_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_scale_button_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_button_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_scale_button_parent_class, align 8
  %1 = load i32, i32* @GimpScaleButton_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpScaleButton_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpScaleButtonClass*
  call void @gimp_scale_button_class_init(%struct._GimpScaleButtonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_button_init(%struct._GimpScaleButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpScaleButton*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %plusminus = alloca %struct._GtkWidget*, align 8
  store %struct._GimpScaleButton* %button, %struct._GimpScaleButton** %button.addr, align 8
  %0 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %1 = bitcast %struct._GimpScaleButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %image, align 8
  %3 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %4 = bitcast %struct._GimpScaleButton* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_scale_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkScaleButton*
  %call5 = call %struct._GtkWidget* @gtk_scale_button_get_plus_button(%struct._GtkScaleButton* %5)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %plusminus, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %plusminus, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %plusminus, align 8
  call void @gtk_widget_set_no_show_all(%struct._GtkWidget* %7, i32 1)
  %8 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %9 = bitcast %struct._GimpScaleButton* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_scale_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkScaleButton*
  %call8 = call %struct._GtkWidget* @gtk_scale_button_get_minus_button(%struct._GtkScaleButton* %10)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %plusminus, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %plusminus, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %plusminus, align 8
  call void @gtk_widget_set_no_show_all(%struct._GtkWidget* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %16 = bitcast %struct._GimpScaleButton* %15 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpScaleButton*)* @gimp_scale_button_image_expose to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %18 = bitcast %struct._GimpScaleButton* %17 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpScaleButton*)* @gimp_scale_button_update_tooltip to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  call void @gimp_scale_button_update_tooltip(%struct._GimpScaleButton* %19)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_scale_button_new(double %value, double %min, double %max) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca double, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %step = alloca double, align 8
  store double %value, double* %value.addr, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double, double* %value.addr, align 8
  %1 = load double, double* %min.addr, align 8
  %cmp = fcmp oge double %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load double, double* %value.addr, align 8
  %3 = load double, double* %max.addr, align 8
  %cmp1 = fcmp ole double %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_scale_button_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load double, double* %max.addr, align 8
  %5 = load double, double* %min.addr, align 8
  %sub = fsub double %4, %5
  %div = fdiv double %sub, 1.000000e+01
  store double %div, double* %step, align 8
  %6 = load double, double* %value.addr, align 8
  %7 = load double, double* %min.addr, align 8
  %8 = load double, double* %max.addr, align 8
  %9 = load double, double* %step, align 8
  %10 = load double, double* %step, align 8
  %call = call %struct._GtkObject* @gtk_adjustment_new(double %6, double %7, double %8, double %9, double %10, double 0.000000e+00)
  store %struct._GtkObject* %call, %struct._GtkObject** %adj, align 8
  %call2 = call i64 @gimp_scale_button_get_type() #4
  %11 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._GtkObject* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* null)
  %12 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_button_class_init(%struct._GimpScaleButtonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpScaleButtonClass*, align 8
  %button_class = alloca %struct._GtkScaleButtonClass*, align 8
  store %struct._GimpScaleButtonClass* %klass, %struct._GimpScaleButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpScaleButtonClass*, %struct._GimpScaleButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpScaleButtonClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_scale_button_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkScaleButtonClass*
  store %struct._GtkScaleButtonClass* %2, %struct._GtkScaleButtonClass** %button_class, align 8
  %3 = load %struct._GtkScaleButtonClass*, %struct._GtkScaleButtonClass** %button_class, align 8
  %value_changed = getelementptr inbounds %struct._GtkScaleButtonClass, %struct._GtkScaleButtonClass* %3, i32 0, i32 1
  store void (%struct._GtkScaleButton*, double)* @gimp_scale_button_value_changed, void (%struct._GtkScaleButton*, double)** %value_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_button_value_changed(%struct._GtkScaleButton* %button, double %value) #3 {
entry:
  %button.addr = alloca %struct._GtkScaleButton*, align 8
  %value.addr = alloca double, align 8
  store %struct._GtkScaleButton* %button, %struct._GtkScaleButton** %button.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load i8*, i8** @gimp_scale_button_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_scale_button_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkScaleButtonClass*
  %value_changed = getelementptr inbounds %struct._GtkScaleButtonClass, %struct._GtkScaleButtonClass* %2, i32 0, i32 1
  %3 = load void (%struct._GtkScaleButton*, double)*, void (%struct._GtkScaleButton*, double)** %value_changed, align 8
  %tobool = icmp ne void (%struct._GtkScaleButton*, double)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_scale_button_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call i64 @gtk_scale_button_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GtkScaleButtonClass*
  %value_changed4 = getelementptr inbounds %struct._GtkScaleButtonClass, %struct._GtkScaleButtonClass* %6, i32 0, i32 1
  %7 = load void (%struct._GtkScaleButton*, double)*, void (%struct._GtkScaleButton*, double)** %value_changed4, align 8
  %8 = load %struct._GtkScaleButton*, %struct._GtkScaleButton** %button.addr, align 8
  %9 = load double, double* %value.addr, align 8
  call void %7(%struct._GtkScaleButton* %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkScaleButton*, %struct._GtkScaleButton** %button.addr, align 8
  %11 = bitcast %struct._GtkScaleButton* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_scale_button_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpScaleButton*
  call void @gimp_scale_button_update_tooltip(%struct._GimpScaleButton* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_button_update_tooltip(%struct._GimpScaleButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpScaleButton*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %text = alloca i8*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GimpScaleButton* %button, %struct._GimpScaleButton** %button.addr, align 8
  %0 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %1 = bitcast %struct._GimpScaleButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_scale_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkScaleButton*
  %call2 = call %struct._GtkAdjustment* @gtk_scale_button_get_adjustment(%struct._GtkScaleButton* %2)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  store double %call3, double* %value, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %4)
  store double %call4, double* %lower, align 8
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %5)
  store double %call5, double* %upper, align 8
  %6 = load double, double* %value, align 8
  %7 = load double, double* %lower, align 8
  %sub = fsub double %6, %7
  %mul = fmul double %sub, 1.000000e+02
  %8 = load double, double* %upper, align 8
  %9 = load double, double* %lower, align 8
  %sub6 = fsub double %8, %9
  %div = fdiv double %mul, %sub6
  %add = fadd double 5.000000e-01, %div
  %conv = fptosi double %add to i32
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %conv)
  store i8* %call7, i8** %text, align 8
  %10 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %11 = bitcast %struct._GimpScaleButton* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %13 = load i8*, i8** %text, align 8
  call void @gtk_widget_set_tooltip_text(%struct._GtkWidget* %12, i8* %13)
  %14 = load i8*, i8** %text, align 8
  call void @g_free(i8* %14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkAdjustment* @gtk_scale_button_get_adjustment(%struct._GtkScaleButton*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_widget_set_tooltip_text(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare %struct._GtkWidget* @gtk_scale_button_get_plus_button(%struct._GtkScaleButton*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_widget_set_no_show_all(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_scale_button_get_minus_button(%struct._GtkScaleButton*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scale_button_image_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpScaleButton* %button) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %button.addr = alloca %struct._GimpScaleButton*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %cr = alloca %struct._cairo*, align 8
  %value = alloca i32, align 4
  %steps = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpScaleButton* %button, %struct._GimpScaleButton** %button.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %2 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %5 = load i32, i32* %height2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  %div = sdiv i32 %cond, 2
  store i32 %div, i32* %steps, align 4
  %6 = load %struct._GimpScaleButton*, %struct._GimpScaleButton** %button.addr, align 8
  %7 = bitcast %struct._GimpScaleButton* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_scale_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkScaleButton*
  %call5 = call %struct._GtkAdjustment* @gtk_scale_button_get_adjustment(%struct._GtkScaleButton* %8)
  store %struct._GtkAdjustment* %call5, %struct._GtkAdjustment** %adj, align 8
  %9 = load i32, i32* %steps, align 4
  %cmp6 = icmp slt i32 %9, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call8 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %11)
  %sub = fsub double %call7, %call8
  %12 = load i32, i32* %steps, align 4
  %conv = sitofp i32 %12 to double
  %mul = fmul double %sub, %conv
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call9 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %13)
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call10 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %14)
  %sub11 = fsub double %call9, %call10
  %div12 = fdiv double %mul, %sub11
  %add = fadd double 5.000000e-01, %div12
  %conv13 = fptosi double %add to i32
  store i32 %conv13, i32* %value, align 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call14 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %call15 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call14)
  store %struct._cairo* %call15, %struct._cairo** %cr, align 8
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %17 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %17, i32 0, i32 3
  call void @gdk_cairo_rectangle(%struct._cairo* %16, %struct._GdkRectangle* %area)
  %18 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %18)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %19, double 5.000000e-01)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call16 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %20)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %22 = load i32, i32* %x, align 4
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %23 = load i32, i32* %width20, align 4
  %add21 = add nsw i32 %22, %23
  %conv22 = sitofp i32 %add21 to double
  %sub23 = fsub double %conv22, 5.000000e-01
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %24 = load i32, i32* %y, align 4
  %height24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %25 = load i32, i32* %height24, align 4
  %add25 = add nsw i32 %24, %25
  %conv26 = sitofp i32 %add25 to double
  call void @cairo_translate(%struct._cairo* %21, double %sub23, double %conv26)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_scale(%struct._cairo* %26, double -2.000000e+00, double -2.000000e+00)
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %28 = load i32, i32* %x27, align 4
  %conv28 = sitofp i32 %28 to double
  %add29 = fadd double %conv28, 5.000000e-01
  %y30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %29 = load i32, i32* %y30, align 4
  %height31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %30 = load i32, i32* %height31, align 4
  %add32 = add nsw i32 %29, %30
  %conv33 = sitofp i32 %add32 to double
  call void @cairo_translate(%struct._cairo* %27, double %add29, double %conv33)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_scale(%struct._cairo* %31, double 2.000000e+00, double -2.000000e+00)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.19
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %value, align 4
  %cmp35 = icmp slt i32 %32, %33
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %35 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %35 to double
  call void @cairo_move_to(%struct._cairo* %34, double %conv37, double 0.000000e+00)
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load i32, i32* %i, align 4
  %conv38 = sitofp i32 %37 to double
  %38 = load i32, i32* %i, align 4
  %conv39 = sitofp i32 %38 to double
  %add40 = fadd double %conv39, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %36, double %conv38, double %add40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call41 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %41)
  %idxprom = zext i32 %call41 to i64
  %42 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %42, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %40, %struct._GdkColor* %arrayidx)
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %43)
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.end
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %steps, align 4
  %cmp43 = icmp slt i32 %44, %45
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %46 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %47 = load i32, i32* %i, align 4
  %conv46 = sitofp i32 %47 to double
  call void @cairo_move_to(%struct._cairo* %46, double %conv46, double 0.000000e+00)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %49 = load i32, i32* %i, align 4
  %conv47 = sitofp i32 %49 to double
  %50 = load i32, i32* %i, align 4
  %conv48 = sitofp i32 %50 to double
  %add49 = fadd double %conv48, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %48, double %conv47, double %add49)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %51 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %53 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg53 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %53, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg53, i32 0, i64 4
  call void @gdk_cairo_set_source_color(%struct._cairo* %52, %struct._GdkColor* %arrayidx54)
  %54 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %54)
  %55 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %55)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.52, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_rectangle(%struct._cairo*, %struct._GdkRectangle*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
