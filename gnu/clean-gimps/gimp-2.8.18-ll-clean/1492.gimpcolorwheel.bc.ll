; ModuleID = './modules/gimpcolorwheel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GimpColorWheel = type { %struct._GtkWidget, i8* }
%struct.GimpColorWheelPrivate = type { double, double, double, double, i32, i32, %struct._GdkDrawable*, i32, i8 }
%struct._GimpColorWheelClass = type { %struct._GtkWidgetClass, void (%struct._GimpColorWheel*)*, void (%struct._GimpColorWheel*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._cairo = type opaque
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo_surface = type opaque

@gimp_color_wheel_type_id = internal global i64 0, align 8
@__func__.gimp_color_wheel_set_color = private unnamed_addr constant [27 x i8] c"gimp_color_wheel_set_color\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"GIMP_IS_COLOR_WHEEL (wheel)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"h >= 0.0 && h <= 1.0\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"s >= 0.0 && s <= 1.0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"v >= 0.0 && v <= 1.0\00", align 1
@wheel_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_color_wheel_get_color = private unnamed_addr constant [27 x i8] c"gimp_color_wheel_get_color\00", align 1
@__func__.gimp_color_wheel_set_ring_fraction = private unnamed_addr constant [35 x i8] c"gimp_color_wheel_set_ring_fraction\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GIMP_IS_COLOR_WHEEL (hsv)\00", align 1
@__func__.gimp_color_wheel_get_ring_fraction = private unnamed_addr constant [35 x i8] c"gimp_color_wheel_get_ring_fraction\00", align 1
@__func__.gimp_color_wheel_is_adjusting = private unnamed_addr constant [30 x i8] c"gimp_color_wheel_is_adjusting\00", align 1
@gimp_color_wheel_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 768, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_wheel_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._GimpColorWheelClass*)* @gimp_color_wheel_class_finalize to void (i8*, i8*)*), i8* null, i16 104, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorWheel*)* @gimp_color_wheel_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"GimpColorWheel\00", align 1
@gimp_color_wheel_parent_class = internal global i8* null, align 8
@GimpColorWheel_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"focus-line-width\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"focus-padding\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimpcolorwheel.c\00", align 1
@__func__.gimp_color_wheel_button_release = private unnamed_addr constant [32 x i8] c"gimp_color_wheel_button_release\00", align 1
@__func__.gimp_color_wheel_motion = private unnamed_addr constant [24 x i8] c"gimp_color_wheel_motion\00", align 1
@__func__.hsv_to_rgb = private unnamed_addr constant [11 x i8] c"hsv_to_rgb\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"colorwheel_light\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"colorwheel_dark\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_wheel_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_wheel_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @color_wheel_register_type(%struct._GTypeModule* %module) #1 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @gimp_color_wheel_register_type(%struct._GTypeModule* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_register_type(%struct._GTypeModule* %type_module) #1 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @gimp_color_wheel_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @gimp_color_wheel_type_id, align 8
  %1 = load i64, i64* @gimp_color_wheel_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_wheel_new() #1 {
entry:
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %wheel, double %h, double %s, double %v) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %v, double* %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_wheel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_wheel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %h.addr, align 8
  %cmp12 = fcmp oge double %13, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double, double* %h.addr, align 8
  %cmp14 = fcmp ole double %14, 1.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_wheel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load double, double* %s.addr, align 8
  %cmp20 = fcmp oge double %15, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %16 = load double, double* %s.addr, align 8
  %cmp22 = fcmp ole double %16, 1.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_wheel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load double, double* %v.addr, align 8
  %cmp28 = fcmp oge double %17, 0.000000e+00
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %do.body.27
  %18 = load double, double* %v.addr, align 8
  %cmp30 = fcmp ole double %18, 1.000000e+00
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.29, %do.body.27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_wheel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %19 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv35 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %19, i32 0, i32 1
  %20 = load i8*, i8** %priv35, align 8
  %21 = bitcast i8* %20 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %21, %struct.GimpColorWheelPrivate** %priv, align 8
  %22 = load double, double* %h.addr, align 8
  %23 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h36 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %23, i32 0, i32 0
  store double %22, double* %h36, align 8
  %24 = load double, double* %s.addr, align 8
  %25 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s37 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %25, i32 0, i32 1
  store double %24, double* %s37, align 8
  %26 = load double, double* %v.addr, align 8
  %27 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v38 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %27, i32 0, i32 2
  store double %26, double* %v38, align 8
  %28 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %29 = bitcast %struct._GimpColorWheel* %28 to i8*
  %30 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wheel_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %29, i32 %30, i32 0)
  %31 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %32 = bitcast %struct._GimpColorWheel* %31 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call39)
  %33 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %33)
  br label %return

return:                                           ; preds = %do.end.34, %if.else.32, %if.else.24, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_signal_emit(i8*, i32, i32, ...) #2

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_color_wheel_get_color(%struct._GimpColorWheel* %wheel, double* %h, double* %s, double* %v) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %h.addr = alloca double*, align 8
  %s.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double* %h, double** %h.addr, align 8
  store double* %s, double** %s.addr, align 8
  store double* %v, double** %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_wheel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_wheel_get_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %15, %struct.GimpColorWheelPrivate** %priv, align 8
  %16 = load double*, double** %h.addr, align 8
  %tobool12 = icmp ne double* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %17 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h14 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %17, i32 0, i32 0
  %18 = load double, double* %h14, align 8
  %19 = load double*, double** %h.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %20 = load double*, double** %s.addr, align 8
  %tobool16 = icmp ne double* %20, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s18 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %21, i32 0, i32 1
  %22 = load double, double* %s18, align 8
  %23 = load double*, double** %s.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %24 = load double*, double** %v.addr, align 8
  %tobool20 = icmp ne double* %24, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %25 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v22 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %25, i32 0, i32 2
  %26 = load double, double* %v22, align 8
  %27 = load double*, double** %v.addr, align 8
  store double %26, double* %27, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.then.21, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_wheel_set_ring_fraction(%struct._GimpColorWheel* %hsv, double %fraction) #1 {
entry:
  %hsv.addr = alloca %struct._GimpColorWheel*, align 8
  %fraction.addr = alloca double, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorWheel* %hsv, %struct._GimpColorWheel** %hsv.addr, align 8
  store double %fraction, double* %fraction.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_wheel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_wheel_set_ring_fraction, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %15, %struct.GimpColorWheelPrivate** %priv, align 8
  %16 = load double, double* %fraction.addr, align 8
  %cmp12 = fcmp ogt double %16, 9.900000e-01
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.16

cond.false:                                       ; preds = %do.end
  %17 = load double, double* %fraction.addr, align 8
  %cmp13 = fcmp olt double %17, 1.000000e-02
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %18 = load double, double* %fraction.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi double [ 1.000000e-02, %cond.true.14 ], [ %18, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi double [ 9.900000e-01, %cond.true ], [ %cond, %cond.end ]
  %19 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_fraction = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %19, i32 0, i32 3
  store double %cond17, double* %ring_fraction, align 8
  %20 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %21 = bitcast %struct._GimpColorWheel* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %22)
  br label %return

return:                                           ; preds = %cond.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_color_wheel_get_ring_fraction(%struct._GimpColorWheel* %wheel) #1 {
entry:
  %retval = alloca double, align 8
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_wheel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_wheel_get_ring_fraction, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  store double 1.000000e-01, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %15, %struct.GimpColorWheelPrivate** %priv, align 8
  %16 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_fraction = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %16, i32 0, i32 3
  %17 = load double, double* %ring_fraction, align 8
  store double %17, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load double, double* %retval
  ret double %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_color_wheel_is_adjusting(%struct._GimpColorWheel* %wheel) #1 {
entry:
  %retval = alloca i32, align 4
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_wheel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_wheel_is_adjusting, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %15, %struct.GimpColorWheelPrivate** %priv, align 8
  %16 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %16, i32 0, i32 7
  %17 = load i32, i32* %mode, align 4
  %cmp12 = icmp ne i32 %17, 0
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_class_intern_init(i8* %klass) #1 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_wheel_parent_class, align 8
  %1 = load i32, i32* @GimpColorWheel_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorWheel_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorWheelClass*
  call void @gimp_color_wheel_class_init(%struct._GimpColorWheelClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_class_finalize(%struct._GimpColorWheelClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpColorWheelClass*, align 8
  store %struct._GimpColorWheelClass* %klass, %struct._GimpColorWheelClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_init(%struct._GimpColorWheel* %wheel) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %2, %struct.GimpColorWheelPrivate** %priv, align 8
  %3 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %4 = bitcast %struct.GimpColorWheelPrivate* %3 to i8*
  %5 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %5, i32 0, i32 1
  store i8* %4, i8** %priv2, align 8
  %6 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %7 = bitcast %struct._GimpColorWheel* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_widget_set_has_window(%struct._GtkWidget* %8, i32 0)
  %9 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %10 = bitcast %struct._GimpColorWheel* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %11, i32 1)
  %12 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_fraction = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %12, i32 0, i32 3
  store double 1.000000e-01, double* %ring_fraction, align 8
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 4
  store i32 100, i32* %size, align 4
  %14 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %14, i32 0, i32 5
  store i32 10, i32* %ring_width, align 4
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #2

declare i8* @g_type_class_peek_parent(i8*) #2

declare void @g_type_class_adjust_private_offset(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_class_init(%struct._GimpColorWheelClass* %class) #1 {
entry:
  %class.addr = alloca %struct._GimpColorWheelClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %wheel_class = alloca %struct._GimpColorWheelClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpColorWheelClass* %class, %struct._GimpColorWheelClass** %class.addr, align 8
  %0 = load %struct._GimpColorWheelClass*, %struct._GimpColorWheelClass** %class.addr, align 8
  %1 = bitcast %struct._GimpColorWheelClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorWheelClass*, %struct._GimpColorWheelClass** %class.addr, align 8
  %4 = bitcast %struct._GimpColorWheelClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpColorWheelClass*, %struct._GimpColorWheelClass** %class.addr, align 8
  %7 = bitcast %struct._GimpColorWheelClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_color_wheel_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpColorWheelClass*
  store %struct._GimpColorWheelClass* %8, %struct._GimpColorWheelClass** %wheel_class, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gimp_color_wheel_map, void (%struct._GtkWidget*)** %map, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_color_wheel_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_color_wheel_realize, void (%struct._GtkWidget*)** %realize, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_color_wheel_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_color_wheel_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_color_wheel_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_wheel_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_wheel_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_color_wheel_motion, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_color_wheel_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %focus = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %19, i32 0, i32 23
  store i32 (%struct._GtkWidget*, i32)* @gimp_color_wheel_focus, i32 (%struct._GtkWidget*, i32)** %focus, align 8
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %grab_broken_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %20, i32 0, i32 66
  store i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)* @gimp_color_wheel_grab_broken, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)** %grab_broken_event, align 8
  %21 = load %struct._GimpColorWheelClass*, %struct._GimpColorWheelClass** %wheel_class, align 8
  %move = getelementptr inbounds %struct._GimpColorWheelClass, %struct._GimpColorWheelClass* %21, i32 0, i32 2
  store void (%struct._GimpColorWheel*, i32)* @gimp_color_wheel_move, void (%struct._GimpColorWheel*, i32)** %move, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %23 = bitcast %struct._GObjectClass* %22 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 %24, i32 1, i32 720, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wheel_signals, i32 0, i64 0), align 4
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %26 = bitcast %struct._GObjectClass* %25 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i64 @gtk_direction_type_get_type() #7
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 %27, i32 34, i32 728, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call7)
  store i32 %call8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wheel_signals, i32 0, i64 1), align 4
  %28 = load %struct._GimpColorWheelClass*, %struct._GimpColorWheelClass** %class.addr, align 8
  %29 = bitcast %struct._GimpColorWheelClass* %28 to i8*
  %call9 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %29)
  store %struct._GtkBindingSet* %call9, %struct._GtkBindingSet** %binding_set, align 8
  %30 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %30, i32 65362, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 2)
  %31 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %31, i32 65431, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 2)
  %32 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %32, i32 65364, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 3)
  %33 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %33, i32 65433, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 3)
  %34 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %34, i32 65363, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 5)
  %35 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %35, i32 65432, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 5)
  %36 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %36, i32 65361, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 4)
  %37 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %37, i32 65430, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 48, i32 4)
  %38 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %39 = bitcast %struct._GObjectClass* %38 to i8*
  call void @g_type_class_add_private(i8* %39, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_map(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load i8*, i8** @gimp_color_wheel_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 8
  %9 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %map, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %9(%struct._GtkWidget* %10)
  %11 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %11, i32 0, i32 6
  %12 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_show(%struct._GdkDrawable* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_unmap(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 6
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_hide(%struct._GdkDrawable* %7)
  %8 = load i8*, i8** @gimp_color_wheel_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call3)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 9
  %11 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %11(%struct._GtkWidget* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_realize(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %attr = alloca %struct._GdkWindowAttr, align 8
  %attr_mask = alloca i32, align 4
  %parent_window = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_realized(%struct._GtkWidget* %7, i32 1)
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 9
  store i32 2, i32* %window_type, align 4
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %x3 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 2
  store i32 %8, i32* %x3, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %9 = load i32, i32* %y, align 4
  %y4 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 3
  store i32 %9, i32* %y4, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %width5 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 4
  store i32 %10, i32* %width5, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  %height6 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 5
  store i32 %11, i32* %height6, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 6
  store i32 1, i32* %wclass, align 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call i32 @gtk_widget_get_events(%struct._GtkWidget* %12)
  %or = or i32 %call7, 1024
  %or8 = or i32 %or, 256
  %or9 = or i32 %or8, 512
  %or10 = or i32 %or9, 4
  %or11 = or i32 %or10, 4096
  %or12 = or i32 %or11, 8192
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attr, i32 0, i32 1
  store i32 %or12, i32* %event_mask, align 4
  store i32 12, i32* %attr_mask, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call %struct._GdkDrawable* @gtk_widget_get_parent_window(%struct._GtkWidget* %13)
  store %struct._GdkDrawable* %call13, %struct._GdkDrawable** %parent_window, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent_window, align 8
  call void @gtk_widget_set_window(%struct._GtkWidget* %14, %struct._GdkDrawable* %15)
  %16 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent_window, align 8
  %17 = bitcast %struct._GdkDrawable* %16 to i8*
  %call14 = call i8* @g_object_ref(i8* %17)
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent_window, align 8
  %19 = load i32, i32* %attr_mask, align 4
  %call15 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %18, %struct._GdkWindowAttr* %attr, i32 %19)
  %20 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %20, i32 0, i32 6
  store %struct._GdkDrawable* %call15, %struct._GdkDrawable** %window, align 8
  %21 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window16 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %21, i32 0, i32 6
  %22 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window16, align 8
  %23 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %24 = bitcast %struct._GimpColorWheel* %23 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %22, i8* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_style_attach(%struct._GtkWidget* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_unrealize(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 6
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %7, i8* null)
  %8 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window3 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %8, i32 0, i32 6
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window3, align 8
  call void @gdk_window_destroy(%struct._GdkDrawable* %9)
  %10 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window4 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %10, i32 0, i32 6
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %window4, align 8
  %11 = load i8*, i8** @gimp_color_wheel_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call5)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 11
  %14 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %14(%struct._GtkWidget* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %focus_width = alloca i32, align 4
  %focus_pad = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32* %focus_pad, i8* null)
  %1 = load i32, i32* %focus_width, align 4
  %2 = load i32, i32* %focus_pad, align 4
  %add = add nsw i32 %1, %2
  %mul = mul nsw i32 2, %add
  %add1 = add nsw i32 100, %mul
  %3 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %3, i32 0, i32 0
  store i32 %add1, i32* %width, align 4
  %4 = load i32, i32* %focus_width, align 4
  %5 = load i32, i32* %focus_pad, align 4
  %add2 = add nsw i32 %4, %5
  %mul3 = mul nsw i32 2, %add2
  %add4 = add nsw i32 100, %mul3
  %6 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %6, i32 0, i32 1
  store i32 %add4, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %focus_width = alloca i32, align 4
  %focus_pad = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32* %focus_pad, i8* null)
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %9, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %focus_width, align 4
  %12 = load i32, i32* %focus_pad, align 4
  %add = add nsw i32 %11, %12
  %mul = mul nsw i32 2, %add
  %sub = sub nsw i32 %10, %mul
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 3
  %14 = load i32, i32* %height, align 4
  %15 = load i32, i32* %focus_width, align 4
  %16 = load i32, i32* %focus_pad, align 4
  %add3 = add nsw i32 %15, %16
  %mul4 = mul nsw i32 2, %add3
  %sub5 = sub nsw i32 %14, %mul4
  %cmp = icmp slt i32 %sub, %sub5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 2
  %18 = load i32, i32* %width6, align 4
  %19 = load i32, i32* %focus_width, align 4
  %20 = load i32, i32* %focus_pad, align 4
  %add7 = add nsw i32 %19, %20
  %mul8 = mul nsw i32 2, %add7
  %sub9 = sub nsw i32 %18, %mul8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 3
  %22 = load i32, i32* %height10, align 4
  %23 = load i32, i32* %focus_width, align 4
  %24 = load i32, i32* %focus_pad, align 4
  %add11 = add nsw i32 %23, %24
  %mul12 = mul nsw i32 2, %add11
  %sub13 = sub nsw i32 %22, %mul12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ %sub13, %cond.false ]
  %25 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %25, i32 0, i32 4
  store i32 %cond, i32* %size, align 4
  %26 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size14 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %26, i32 0, i32 4
  %27 = load i32, i32* %size14, align 4
  %conv = sitofp i32 %27 to double
  %28 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_fraction = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %28, i32 0, i32 3
  %29 = load double, double* %ring_fraction, align 8
  %mul15 = fmul double %conv, %29
  %conv16 = fptosi double %mul15 to i32
  %30 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %30, i32 0, i32 5
  store i32 %conv16, i32* %ring_width, align 4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %31)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %32 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %32, i32 0, i32 6
  %33 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %34, i32 0, i32 0
  %35 = load i32, i32* %x, align 4
  %36 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %36, i32 0, i32 1
  %37 = load i32, i32* %y, align 4
  %38 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %38, i32 0, i32 2
  %39 = load i32, i32* %width18, align 4
  %40 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %40, i32 0, i32 3
  %41 = load i32, i32* %height19, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %33, i32 %35, i32 %37, i32 %39, i32 %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %s14 = alloca double, align 8
  %v15 = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 7
  %7 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 8
  %9 = load i32, i32* %button, align 4
  %cmp3 = icmp ne i32 %9, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 4
  %11 = load double, double* %x4, align 8
  store double %11, double* %x, align 8
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y5 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 5
  %13 = load double, double* %y5, align 8
  store double %13, double* %y, align 8
  %14 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %15 = load double, double* %x, align 8
  %16 = load double, double* %y, align 8
  %call6 = call i32 @is_in_ring(%struct._GimpColorWheel* %14, double %15, double %16)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode8 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %17, i32 0, i32 7
  store i32 1, i32* %mode8, align 4
  %18 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 3
  %20 = load i32, i32* %time, align 4
  call void @set_cross_grab(%struct._GimpColorWheel* %18, i32 %20)
  %21 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %22 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %23 = load double, double* %x, align 8
  %24 = load double, double* %y, align 8
  %call9 = call double @compute_v(%struct._GimpColorWheel* %22, double %23, double %24)
  %25 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %25, i32 0, i32 1
  %26 = load double, double* %s, align 8
  %27 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %27, i32 0, i32 2
  %28 = load double, double* %v, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %21, double %call9, double %26, double %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %29)
  %30 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %30, i32 0, i32 8
  %bf.load = load i8, i8* %focus_on_ring, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %focus_on_ring, align 4
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %31 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %32 = load double, double* %x, align 8
  %33 = load double, double* %y, align 8
  %call11 = call i32 @is_in_triangle(%struct._GimpColorWheel* %31, double %32, double %33)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.10
  %34 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode16 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %34, i32 0, i32 7
  store i32 2, i32* %mode16, align 4
  %35 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %36 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time17 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %36, i32 0, i32 3
  %37 = load i32, i32* %time17, align 4
  call void @set_cross_grab(%struct._GimpColorWheel* %35, i32 %37)
  %38 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %39 = load double, double* %x, align 8
  %40 = load double, double* %y, align 8
  call void @compute_sv(%struct._GimpColorWheel* %38, double %39, double %40, double* %s14, double* %v15)
  %41 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %42 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %42, i32 0, i32 0
  %43 = load double, double* %h, align 8
  %44 = load double, double* %s14, align 8
  %45 = load double, double* %v15, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %41, double %43, double %44, double %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %46)
  %47 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring18 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %47, i32 0, i32 8
  %bf.load19 = load i8, i8* %focus_on_ring18, align 4
  %bf.clear20 = and i8 %bf.load19, -2
  store i8 %bf.clear20, i8* %focus_on_ring18, align 4
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.13, %if.then.7, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %mode = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %s14 = alloca double, align 8
  %v15 = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode3 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 7
  %7 = load i32, i32* %mode3, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 8
  %9 = load i32, i32* %button, align 4
  %cmp4 = icmp ne i32 %9, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode5 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %10, i32 0, i32 7
  %11 = load i32, i32* %mode5, align 4
  store i32 %11, i32* %mode, align 4
  %12 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode6 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %12, i32 0, i32 7
  store i32 0, i32* %mode6, align 4
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x7 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 4
  %14 = load double, double* %x7, align 8
  store double %14, double* %x, align 8
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 5
  %16 = load double, double* %y8, align 8
  store double %16, double* %y, align 8
  %17 = load i32, i32* %mode, align 4
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %18 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %19 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %20 = load double, double* %x, align 8
  %21 = load double, double* %y, align 8
  %call11 = call double @compute_v(%struct._GimpColorWheel* %19, double %20, double %21)
  %22 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %22, i32 0, i32 1
  %23 = load double, double* %s, align 8
  %24 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %24, i32 0, i32 2
  %25 = load double, double* %v, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %18, double %call11, double %23, double %25)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %26 = load i32, i32* %mode, align 4
  %cmp12 = icmp eq i32 %26, 2
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else
  %27 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %28 = load double, double* %x, align 8
  %29 = load double, double* %y, align 8
  call void @compute_sv(%struct._GimpColorWheel* %27, double %28, double %29, double* %s14, double* %v15)
  %30 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %31 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %31, i32 0, i32 0
  %32 = load double, double* %h, align 8
  %33 = load double, double* %s14, align 8
  %34 = load double, double* %v15, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %30, double %32, double %33, double %34)
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else.16
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 741, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_wheel_button_release, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %35 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %35, i32 0, i32 1
  %36 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call19 = call %struct._GdkDisplay* @gdk_window_get_display(%struct._GdkDrawable* %36)
  %37 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %37, i32 0, i32 3
  %38 = load i32, i32* %time, align 4
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call19, i32 %38)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %s12 = alloca double, align 8
  %v13 = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 7
  %7 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %8)
  %9 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x3 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %9, i32 0, i32 4
  %10 = load double, double* %x3, align 8
  store double %10, double* %x, align 8
  %11 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y4 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %11, i32 0, i32 5
  %12 = load double, double* %y4, align 8
  store double %12, double* %y, align 8
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode5 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 7
  %14 = load i32, i32* %mode5, align 4
  %cmp6 = icmp eq i32 %14, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %15 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %16 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %17 = load double, double* %x, align 8
  %18 = load double, double* %y, align 8
  %call8 = call double @compute_v(%struct._GimpColorWheel* %16, double %17, double %18)
  %19 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %19, i32 0, i32 1
  %20 = load double, double* %s, align 8
  %21 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %21, i32 0, i32 2
  %22 = load double, double* %v, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %15, double %call8, double %20, double %22)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %23 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode9 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %23, i32 0, i32 7
  %24 = load i32, i32* %mode9, align 4
  %cmp10 = icmp eq i32 %24, 2
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.else
  %25 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %26 = load double, double* %x, align 8
  %27 = load double, double* %y, align 8
  call void @compute_sv(%struct._GimpColorWheel* %25, double %26, double %27, double* %s12, double* %v13)
  %28 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %29 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %29, i32 0, i32 0
  %30 = load double, double* %h, align 8
  %31 = load double, double* %s12, align 8
  %32 = load double, double* %v13, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %28, double %30, double %31, double %32)
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.15
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 779, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_color_wheel_motion, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then.7, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %dest = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %6, i32 0, i32 1
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  %cmp = icmp eq %struct._GdkDrawable* %7, %call3
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %10, %struct._GdkRectangle* %allocation)
  %11 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %11, i32 0, i32 3
  %call5 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %area, %struct._GdkRectangle* %allocation, %struct._GdkRectangle* %dest)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  %call10 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call9)
  store %struct._cairo* %call10, %struct._cairo** %cr, align 8
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %conv = sitofp i32 %14 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %15 to double
  call void @cairo_translate(%struct._cairo* %13, double %conv, double %conv11)
  %16 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest, i32 0, i32 0
  %18 = load i32, i32* %x12, align 4
  %x13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %19 = load i32, i32* %x13, align 4
  %sub = sub nsw i32 %18, %19
  %y14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest, i32 0, i32 1
  %20 = load i32, i32* %y14, align 4
  %y15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %21 = load i32, i32* %y15, align 4
  %sub16 = sub nsw i32 %20, %21
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest, i32 0, i32 2
  %22 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest, i32 0, i32 3
  %23 = load i32, i32* %height, align 4
  call void @paint(%struct._GimpColorWheel* %16, %struct._cairo* %17, i32 %sub, i32 %sub16, i32 %22, i32 %23)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %25)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.30

land.lhs.true.19:                                 ; preds = %if.end.8
  %26 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %26, i32 0, i32 8
  %bf.load = load i8, i8* %focus_on_ring, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %land.lhs.true.19
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call22 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call23 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call24 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %29)
  %30 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area25 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %30, i32 0, i32 3
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %32 = load i32, i32* %x26, align 4
  %y27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %33 = load i32, i32* %y27, align 4
  %width28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %34 = load i32, i32* %width28, align 4
  %height29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %35 = load i32, i32* %height29, align 4
  call void @gtk_paint_focus(%struct._GtkStyle* %call22, %struct._GdkDrawable* %call23, i32 %call24, %struct._GdkRectangle* %area25, %struct._GtkWidget* %31, i8* null, i32 %32, i32 %33, i32 %34, i32 %35)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.21, %land.lhs.true.19, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.7, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_focus(%struct._GtkWidget* %widget, i32 %dir) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dir.addr = alloca i32, align 4
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %8, i32 0, i32 8
  %bf.load = load i8, i8* %focus_on_ring, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %focus_on_ring, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring5 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %9, i32 0, i32 8
  %bf.load6 = load i8, i8* %focus_on_ring5, align 4
  %bf.clear7 = and i8 %bf.load6, -2
  %bf.set = or i8 %bf.clear7, 1
  store i8 %bf.set, i8* %focus_on_ring5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %10)
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  %11 = load i32, i32* %dir.addr, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.32
    i32 1, label %sw.bb.32
    i32 5, label %sw.bb.45
    i32 0, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.8
  %12 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring9 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %12, i32 0, i32 8
  %bf.load10 = load i8, i8* %focus_on_ring9, align 4
  %bf.clear11 = and i8 %bf.load10, 1
  %bf.cast = zext i8 %bf.clear11 to i32
  %tobool12 = icmp ne i32 %bf.cast, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.else.14:                                       ; preds = %sw.bb
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring15 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 8
  %bf.load16 = load i8, i8* %focus_on_ring15, align 4
  %bf.clear17 = and i8 %bf.load16, -2
  %bf.set18 = or i8 %bf.clear17, 1
  store i8 %bf.set18, i8* %focus_on_ring15, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.8
  %14 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring21 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %14, i32 0, i32 8
  %bf.load22 = load i8, i8* %focus_on_ring21, align 4
  %bf.clear23 = and i8 %bf.load22, 1
  %bf.cast24 = zext i8 %bf.clear23 to i32
  %tobool25 = icmp ne i32 %bf.cast24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %sw.bb.20
  %15 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring27 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %15, i32 0, i32 8
  %bf.load28 = load i8, i8* %focus_on_ring27, align 4
  %bf.clear29 = and i8 %bf.load28, -2
  store i8 %bf.clear29, i8* %focus_on_ring27, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %sw.bb.20
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.26
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.8, %if.end.8
  %16 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring33 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %16, i32 0, i32 8
  %bf.load34 = load i8, i8* %focus_on_ring33, align 4
  %bf.clear35 = and i8 %bf.load34, 1
  %bf.cast36 = zext i8 %bf.clear35 to i32
  %tobool37 = icmp ne i32 %bf.cast36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %sw.bb.32
  store i32 0, i32* %retval
  br label %return

if.else.39:                                       ; preds = %sw.bb.32
  %17 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring40 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %17, i32 0, i32 8
  %bf.load41 = load i8, i8* %focus_on_ring40, align 4
  %bf.clear42 = and i8 %bf.load41, -2
  %bf.set43 = or i8 %bf.clear42, 1
  store i8 %bf.set43, i8* %focus_on_ring40, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.8, %if.end.8
  %18 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring46 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %18, i32 0, i32 8
  %bf.load47 = load i8, i8* %focus_on_ring46, align 4
  %bf.clear48 = and i8 %bf.load47, 1
  %bf.cast49 = zext i8 %bf.clear48 to i32
  %tobool50 = icmp ne i32 %bf.cast49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %sw.bb.45
  %19 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring52 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %19, i32 0, i32 8
  %bf.load53 = load i8, i8* %focus_on_ring52, align 4
  %bf.clear54 = and i8 %bf.load53, -2
  store i8 %bf.clear54, i8* %focus_on_ring52, align 4
  br label %if.end.56

if.else.55:                                       ; preds = %sw.bb.45
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.51
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.8, %if.end.56, %if.end.44, %if.end.31, %if.end.19
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.55, %if.then.38, %if.else.30, %if.then.13, %if.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_wheel_grab_broken(%struct._GtkWidget* %widget, %struct._GdkEventGrabBroken* %event) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventGrabBroken*, align 8
  %wheel = alloca %struct._GimpColorWheel*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventGrabBroken* %event, %struct._GdkEventGrabBroken** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_wheel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorWheel*
  store %struct._GimpColorWheel* %2, %struct._GimpColorWheel** %wheel, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %mode = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 7
  store i32 0, i32* %mode, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_wheel_move(%struct._GimpColorWheel* %wheel, i32 %dir) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %dir.addr = alloca i32, align 4
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %hue = alloca double, align 8
  %sat = alloca double, align 8
  %val = alloca double, align 8
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %vx = alloca i32, align 4
  %vy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %2, %struct.GimpColorWheelPrivate** %priv, align 8
  %3 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %3, i32 0, i32 0
  %4 = load double, double* %h, align 8
  store double %4, double* %hue, align 8
  %5 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %5, i32 0, i32 1
  %6 = load double, double* %s, align 8
  store double %6, double* %sat, align 8
  %7 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %7, i32 0, i32 2
  %8 = load double, double* %v, align 8
  store double %8, double* %val, align 8
  %9 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  call void @compute_triangle(%struct._GimpColorWheel* %9, i32* %hx, i32* %hy, i32* %sx, i32* %sy, i32* %vx, i32* %vy)
  %10 = load i32, i32* %sx, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %vx, align 4
  %12 = load i32, i32* %sx, align 4
  %sub = sub nsw i32 %11, %12
  %conv2 = sitofp i32 %sub to double
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v3 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 2
  %14 = load double, double* %v3, align 8
  %mul = fmul double %conv2, %14
  %add = fadd double %conv, %mul
  %15 = load i32, i32* %hx, align 4
  %16 = load i32, i32* %vx, align 4
  %sub4 = sub nsw i32 %15, %16
  %conv5 = sitofp i32 %sub4 to double
  %17 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s6 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %17, i32 0, i32 1
  %18 = load double, double* %s6, align 8
  %mul7 = fmul double %conv5, %18
  %19 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v8 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %19, i32 0, i32 2
  %20 = load double, double* %v8, align 8
  %mul9 = fmul double %mul7, %20
  %add10 = fadd double %add, %mul9
  %add11 = fadd double %add10, 5.000000e-01
  %call = call double @floor(double %add11) #7
  %conv12 = fptosi double %call to i32
  store i32 %conv12, i32* %x, align 4
  %21 = load i32, i32* %sy, align 4
  %conv13 = sitofp i32 %21 to double
  %22 = load i32, i32* %vy, align 4
  %23 = load i32, i32* %sy, align 4
  %sub14 = sub nsw i32 %22, %23
  %conv15 = sitofp i32 %sub14 to double
  %24 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v16 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %24, i32 0, i32 2
  %25 = load double, double* %v16, align 8
  %mul17 = fmul double %conv15, %25
  %add18 = fadd double %conv13, %mul17
  %26 = load i32, i32* %hy, align 4
  %27 = load i32, i32* %vy, align 4
  %sub19 = sub nsw i32 %26, %27
  %conv20 = sitofp i32 %sub19 to double
  %28 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s21 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %28, i32 0, i32 1
  %29 = load double, double* %s21, align 8
  %mul22 = fmul double %conv20, %29
  %30 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v23 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %30, i32 0, i32 2
  %31 = load double, double* %v23, align 8
  %mul24 = fmul double %mul22, %31
  %add25 = fadd double %add18, %mul24
  %add26 = fadd double %add25, 5.000000e-01
  %call27 = call double @floor(double %add26) #7
  %conv28 = fptosi double %call27 to i32
  store i32 %conv28, i32* %y, align 4
  %32 = load i32, i32* %dir.addr, align 4
  switch i32 %32, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.46
    i32 5, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %entry
  %33 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %33, i32 0, i32 8
  %bf.load = load i8, i8* %focus_on_ring, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %34 = load double, double* %hue, align 8
  %add29 = fadd double %34, 2.000000e-03
  store double %add29, double* %hue, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %35 = load i32, i32* %y, align 4
  %sub30 = sub nsw i32 %35, 1
  store i32 %sub30, i32* %y, align 4
  %36 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %37 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %37 to double
  %38 = load i32, i32* %y, align 4
  %conv32 = sitofp i32 %38 to double
  call void @compute_sv(%struct._GimpColorWheel* %36, double %conv31, double %conv32, double* %sat, double* %val)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %39 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring34 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %39, i32 0, i32 8
  %bf.load35 = load i8, i8* %focus_on_ring34, align 4
  %bf.clear36 = and i8 %bf.load35, 1
  %bf.cast37 = zext i8 %bf.clear36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %sw.bb.33
  %40 = load double, double* %hue, align 8
  %sub40 = fsub double %40, 2.000000e-03
  store double %sub40, double* %hue, align 8
  br label %if.end.45

if.else.41:                                       ; preds = %sw.bb.33
  %41 = load i32, i32* %y, align 4
  %add42 = add nsw i32 %41, 1
  store i32 %add42, i32* %y, align 4
  %42 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %43 = load i32, i32* %x, align 4
  %conv43 = sitofp i32 %43 to double
  %44 = load i32, i32* %y, align 4
  %conv44 = sitofp i32 %44 to double
  call void @compute_sv(%struct._GimpColorWheel* %42, double %conv43, double %conv44, double* %sat, double* %val)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.then.39
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %45 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring47 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %45, i32 0, i32 8
  %bf.load48 = load i8, i8* %focus_on_ring47, align 4
  %bf.clear49 = and i8 %bf.load48, 1
  %bf.cast50 = zext i8 %bf.clear49 to i32
  %tobool51 = icmp ne i32 %bf.cast50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %sw.bb.46
  %46 = load double, double* %hue, align 8
  %add53 = fadd double %46, 2.000000e-03
  store double %add53, double* %hue, align 8
  br label %if.end.58

if.else.54:                                       ; preds = %sw.bb.46
  %47 = load i32, i32* %x, align 4
  %sub55 = sub nsw i32 %47, 1
  store i32 %sub55, i32* %x, align 4
  %48 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %49 = load i32, i32* %x, align 4
  %conv56 = sitofp i32 %49 to double
  %50 = load i32, i32* %y, align 4
  %conv57 = sitofp i32 %50 to double
  call void @compute_sv(%struct._GimpColorWheel* %48, double %conv56, double %conv57, double* %sat, double* %val)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.then.52
  br label %sw.epilog

sw.bb.59:                                         ; preds = %entry
  %51 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring60 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %51, i32 0, i32 8
  %bf.load61 = load i8, i8* %focus_on_ring60, align 4
  %bf.clear62 = and i8 %bf.load61, 1
  %bf.cast63 = zext i8 %bf.clear62 to i32
  %tobool64 = icmp ne i32 %bf.cast63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %sw.bb.59
  %52 = load double, double* %hue, align 8
  %sub66 = fsub double %52, 2.000000e-03
  store double %sub66, double* %hue, align 8
  br label %if.end.71

if.else.67:                                       ; preds = %sw.bb.59
  %53 = load i32, i32* %x, align 4
  %add68 = add nsw i32 %53, 1
  store i32 %add68, i32* %x, align 4
  %54 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %55 = load i32, i32* %x, align 4
  %conv69 = sitofp i32 %55 to double
  %56 = load i32, i32* %y, align 4
  %conv70 = sitofp i32 %56 to double
  call void @compute_sv(%struct._GimpColorWheel* %54, double %conv69, double %conv70, double* %sat, double* %val)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.65
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.71, %if.end.58, %if.end.45, %if.end
  %57 = load double, double* %hue, align 8
  %cmp = fcmp olt double %57, 0.000000e+00
  br i1 %cmp, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %sw.epilog
  store double 1.000000e+00, double* %hue, align 8
  br label %if.end.79

if.else.74:                                       ; preds = %sw.epilog
  %58 = load double, double* %hue, align 8
  %cmp75 = fcmp ogt double %58, 1.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else.74
  store double 0.000000e+00, double* %hue, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.else.74
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.73
  %59 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %60 = load double, double* %hue, align 8
  %61 = load double, double* %sat, align 8
  %62 = load double, double* %val, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %59, double %60, double %61, double %62)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_direction_type_get_type() #4

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #2

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #2

declare void @g_type_class_add_private(i8*, i64) #2

declare void @gdk_window_show(%struct._GdkDrawable*) #2

declare void @gdk_window_hide(%struct._GdkDrawable*) #2

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #2

declare void @gtk_widget_set_realized(%struct._GtkWidget*, i32) #2

declare i32 @gtk_widget_get_events(%struct._GtkWidget*) #2

declare %struct._GdkDrawable* @gtk_widget_get_parent_window(%struct._GtkWidget*) #2

declare void @gtk_widget_set_window(%struct._GtkWidget*, %struct._GdkDrawable*) #2

declare i8* @g_object_ref(i8*) #2

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #2

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #2

declare void @gtk_widget_style_attach(%struct._GtkWidget*) #2

declare void @gdk_window_destroy(%struct._GdkDrawable*) #2

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #2

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #2

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #2

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_in_ring(%struct._GimpColorWheel* %wheel, double %x, double %y) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dist = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %inner = alloca double, align 8
  %outer = alloca double, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %2, %struct.GimpColorWheelPrivate** %priv, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %4 = bitcast %struct._GimpColorWheel* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %7 to double
  %div4 = fdiv double %conv3, 2.000000e+00
  store double %div4, double* %center_y, align 8
  %8 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %8, i32 0, i32 4
  %9 = load i32, i32* %size, align 4
  %conv5 = sitofp i32 %9 to double
  %div6 = fdiv double %conv5, 2.000000e+00
  store double %div6, double* %outer, align 8
  %10 = load double, double* %outer, align 8
  %11 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %ring_width, align 4
  %conv7 = sitofp i32 %12 to double
  %sub = fsub double %10, %conv7
  store double %sub, double* %inner, align 8
  %13 = load double, double* %x.addr, align 8
  %14 = load double, double* %center_x, align 8
  %sub8 = fsub double %13, %14
  store double %sub8, double* %dx, align 8
  %15 = load double, double* %center_y, align 8
  %16 = load double, double* %y.addr, align 8
  %sub9 = fsub double %15, %16
  store double %sub9, double* %dy, align 8
  %17 = load double, double* %dx, align 8
  %18 = load double, double* %dx, align 8
  %mul = fmul double %17, %18
  %19 = load double, double* %dy, align 8
  %20 = load double, double* %dy, align 8
  %mul10 = fmul double %19, %20
  %add = fadd double %mul, %mul10
  store double %add, double* %dist, align 8
  %21 = load double, double* %dist, align 8
  %22 = load double, double* %inner, align 8
  %23 = load double, double* %inner, align 8
  %mul11 = fmul double %22, %23
  %cmp = fcmp oge double %21, %mul11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %24 = load double, double* %dist, align 8
  %25 = load double, double* %outer, align 8
  %26 = load double, double* %outer, align 8
  %mul13 = fmul double %25, %26
  %cmp14 = fcmp ole double %24, %mul13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %27 = phi i1 [ false, %entry ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @set_cross_grab(%struct._GimpColorWheel* %wheel, i32 %time) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %time.addr = alloca i32, align 4
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %2, %struct.GimpColorWheelPrivate** %priv, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %4 = bitcast %struct._GimpColorWheel* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %5)
  %call4 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call3, i32 34)
  store %struct._GdkCursor* %call4, %struct._GdkCursor** %cursor, align 8
  %6 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %window = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %6, i32 0, i32 6
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %8 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %9 = load i32, i32* %time.addr, align 4
  %call5 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %7, i32 0, i32 524, %struct._GdkDrawable* null, %struct._GdkCursor* %8, i32 %9)
  %10 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @compute_v(%struct._GimpColorWheel* %wheel, double %x, double %y) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %angle = alloca double, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %2, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %4 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %4 to double
  %div3 = fdiv double %conv2, 2.000000e+00
  store double %div3, double* %center_y, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load double, double* %center_x, align 8
  %sub = fsub double %5, %6
  store double %sub, double* %dx, align 8
  %7 = load double, double* %center_y, align 8
  %8 = load double, double* %y.addr, align 8
  %sub4 = fsub double %7, %8
  store double %sub4, double* %dy, align 8
  %9 = load double, double* %dy, align 8
  %10 = load double, double* %dx, align 8
  %call5 = call double @atan2(double %9, double %10) #10
  store double %call5, double* %angle, align 8
  %11 = load double, double* %angle, align 8
  %cmp = fcmp olt double %11, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load double, double* %angle, align 8
  %add = fadd double %12, 0x401921FB54442D18
  store double %add, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load double, double* %angle, align 8
  %div7 = fdiv double %13, 0x401921FB54442D18
  ret double %div7
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_in_triangle(%struct._GimpColorWheel* %wheel, double %x, double %y) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %vx = alloca i32, align 4
  %vy = alloca i32, align 4
  %det = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  call void @compute_triangle(%struct._GimpColorWheel* %0, i32* %hx, i32* %hy, i32* %sx, i32* %sy, i32* %vx, i32* %vy)
  %1 = load i32, i32* %vx, align 4
  %2 = load i32, i32* %sx, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load i32, i32* %hy, align 4
  %4 = load i32, i32* %sy, align 4
  %sub1 = sub nsw i32 %3, %4
  %mul = mul nsw i32 %sub, %sub1
  %5 = load i32, i32* %vy, align 4
  %6 = load i32, i32* %sy, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load i32, i32* %hx, align 4
  %8 = load i32, i32* %sx, align 4
  %sub3 = sub nsw i32 %7, %8
  %mul4 = mul nsw i32 %sub2, %sub3
  %sub5 = sub nsw i32 %mul, %mul4
  %conv = sitofp i32 %sub5 to double
  store double %conv, double* %det, align 8
  %9 = load double, double* %x.addr, align 8
  %10 = load i32, i32* %sx, align 4
  %conv6 = sitofp i32 %10 to double
  %sub7 = fsub double %9, %conv6
  %11 = load i32, i32* %hy, align 4
  %12 = load i32, i32* %sy, align 4
  %sub8 = sub nsw i32 %11, %12
  %conv9 = sitofp i32 %sub8 to double
  %mul10 = fmul double %sub7, %conv9
  %13 = load double, double* %y.addr, align 8
  %14 = load i32, i32* %sy, align 4
  %conv11 = sitofp i32 %14 to double
  %sub12 = fsub double %13, %conv11
  %15 = load i32, i32* %hx, align 4
  %16 = load i32, i32* %sx, align 4
  %sub13 = sub nsw i32 %15, %16
  %conv14 = sitofp i32 %sub13 to double
  %mul15 = fmul double %sub12, %conv14
  %sub16 = fsub double %mul10, %mul15
  %17 = load double, double* %det, align 8
  %div = fdiv double %sub16, %17
  store double %div, double* %s, align 8
  %18 = load i32, i32* %vx, align 4
  %19 = load i32, i32* %sx, align 4
  %sub17 = sub nsw i32 %18, %19
  %conv18 = sitofp i32 %sub17 to double
  %20 = load double, double* %y.addr, align 8
  %21 = load i32, i32* %sy, align 4
  %conv19 = sitofp i32 %21 to double
  %sub20 = fsub double %20, %conv19
  %mul21 = fmul double %conv18, %sub20
  %22 = load i32, i32* %vy, align 4
  %23 = load i32, i32* %sy, align 4
  %sub22 = sub nsw i32 %22, %23
  %conv23 = sitofp i32 %sub22 to double
  %24 = load double, double* %x.addr, align 8
  %25 = load i32, i32* %sx, align 4
  %conv24 = sitofp i32 %25 to double
  %sub25 = fsub double %24, %conv24
  %mul26 = fmul double %conv23, %sub25
  %sub27 = fsub double %mul21, %mul26
  %26 = load double, double* %det, align 8
  %div28 = fdiv double %sub27, %26
  store double %div28, double* %v, align 8
  %27 = load double, double* %s, align 8
  %cmp = fcmp oge double %27, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %28 = load double, double* %v, align 8
  %cmp30 = fcmp oge double %28, 0.000000e+00
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load double, double* %s, align 8
  %30 = load double, double* %v, align 8
  %add = fadd double %29, %30
  %cmp32 = fcmp ole double %add, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp32, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @compute_sv(%struct._GimpColorWheel* %wheel, double %x, double %y, double* %s, double* %v) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %s.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %ihx = alloca i32, align 4
  %ihy = alloca i32, align 4
  %isx = alloca i32, align 4
  %isy = alloca i32, align 4
  %ivx = alloca i32, align 4
  %ivy = alloca i32, align 4
  %hx = alloca double, align 8
  %hy = alloca double, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %vx = alloca double, align 8
  %vy = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %s, double** %s.addr, align 8
  store double* %v, double** %v.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %2, %struct._GdkRectangle* %allocation)
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  call void @compute_triangle(%struct._GimpColorWheel* %3, i32* %ihx, i32* %ihy, i32* %isx, i32* %isy, i32* %ivx, i32* %ivy)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  %conv = sitofp i32 %4 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %5 to double
  %div3 = fdiv double %conv2, 2.000000e+00
  store double %div3, double* %center_y, align 8
  %6 = load i32, i32* %ihx, align 4
  %conv4 = sitofp i32 %6 to double
  %7 = load double, double* %center_x, align 8
  %sub = fsub double %conv4, %7
  store double %sub, double* %hx, align 8
  %8 = load double, double* %center_y, align 8
  %9 = load i32, i32* %ihy, align 4
  %conv5 = sitofp i32 %9 to double
  %sub6 = fsub double %8, %conv5
  store double %sub6, double* %hy, align 8
  %10 = load i32, i32* %isx, align 4
  %conv7 = sitofp i32 %10 to double
  %11 = load double, double* %center_x, align 8
  %sub8 = fsub double %conv7, %11
  store double %sub8, double* %sx, align 8
  %12 = load double, double* %center_y, align 8
  %13 = load i32, i32* %isy, align 4
  %conv9 = sitofp i32 %13 to double
  %sub10 = fsub double %12, %conv9
  store double %sub10, double* %sy, align 8
  %14 = load i32, i32* %ivx, align 4
  %conv11 = sitofp i32 %14 to double
  %15 = load double, double* %center_x, align 8
  %sub12 = fsub double %conv11, %15
  store double %sub12, double* %vx, align 8
  %16 = load double, double* %center_y, align 8
  %17 = load i32, i32* %ivy, align 4
  %conv13 = sitofp i32 %17 to double
  %sub14 = fsub double %16, %conv13
  store double %sub14, double* %vy, align 8
  %18 = load double, double* %center_x, align 8
  %19 = load double, double* %x.addr, align 8
  %sub15 = fsub double %19, %18
  store double %sub15, double* %x.addr, align 8
  %20 = load double, double* %center_y, align 8
  %21 = load double, double* %y.addr, align 8
  %sub16 = fsub double %20, %21
  store double %sub16, double* %y.addr, align 8
  %22 = load double, double* %vx, align 8
  %23 = load double, double* %x.addr, align 8
  %24 = load double, double* %sx, align 8
  %sub17 = fsub double %23, %24
  %mul = fmul double %22, %sub17
  %25 = load double, double* %vy, align 8
  %26 = load double, double* %y.addr, align 8
  %27 = load double, double* %sy, align 8
  %sub18 = fsub double %26, %27
  %mul19 = fmul double %25, %sub18
  %add = fadd double %mul, %mul19
  %cmp = fcmp olt double %add, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else.43

if.then:                                          ; preds = %entry
  %28 = load double*, double** %s.addr, align 8
  store double 1.000000e+00, double* %28, align 8
  %29 = load double, double* %x.addr, align 8
  %30 = load double, double* %sx, align 8
  %sub21 = fsub double %29, %30
  %31 = load double, double* %hx, align 8
  %32 = load double, double* %sx, align 8
  %sub22 = fsub double %31, %32
  %mul23 = fmul double %sub21, %sub22
  %33 = load double, double* %y.addr, align 8
  %34 = load double, double* %sy, align 8
  %sub24 = fsub double %33, %34
  %35 = load double, double* %hy, align 8
  %36 = load double, double* %sy, align 8
  %sub25 = fsub double %35, %36
  %mul26 = fmul double %sub24, %sub25
  %add27 = fadd double %mul23, %mul26
  %37 = load double, double* %hx, align 8
  %38 = load double, double* %sx, align 8
  %sub28 = fsub double %37, %38
  %39 = load double, double* %hx, align 8
  %40 = load double, double* %sx, align 8
  %sub29 = fsub double %39, %40
  %mul30 = fmul double %sub28, %sub29
  %41 = load double, double* %hy, align 8
  %42 = load double, double* %sy, align 8
  %sub31 = fsub double %41, %42
  %43 = load double, double* %hy, align 8
  %44 = load double, double* %sy, align 8
  %sub32 = fsub double %43, %44
  %mul33 = fmul double %sub31, %sub32
  %add34 = fadd double %mul30, %mul33
  %div35 = fdiv double %add27, %add34
  %45 = load double*, double** %v.addr, align 8
  store double %div35, double* %45, align 8
  %46 = load double*, double** %v.addr, align 8
  %47 = load double, double* %46, align 8
  %cmp36 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then
  %48 = load double*, double** %v.addr, align 8
  store double 0.000000e+00, double* %48, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.then
  %49 = load double*, double** %v.addr, align 8
  %50 = load double, double* %49, align 8
  %cmp39 = fcmp ogt double %50, 1.000000e+00
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  %51 = load double*, double** %v.addr, align 8
  store double 1.000000e+00, double* %51, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.then.38
  br label %if.end.168

if.else.43:                                       ; preds = %entry
  %52 = load double, double* %hx, align 8
  %53 = load double, double* %x.addr, align 8
  %54 = load double, double* %sx, align 8
  %sub44 = fsub double %53, %54
  %mul45 = fmul double %52, %sub44
  %55 = load double, double* %hy, align 8
  %56 = load double, double* %y.addr, align 8
  %57 = load double, double* %sy, align 8
  %sub46 = fsub double %56, %57
  %mul47 = fmul double %55, %sub46
  %add48 = fadd double %mul45, %mul47
  %cmp49 = fcmp olt double %add48, 0.000000e+00
  br i1 %cmp49, label %if.then.51, label %if.else.76

if.then.51:                                       ; preds = %if.else.43
  %58 = load double*, double** %s.addr, align 8
  store double 0.000000e+00, double* %58, align 8
  %59 = load double, double* %x.addr, align 8
  %60 = load double, double* %sx, align 8
  %sub52 = fsub double %59, %60
  %61 = load double, double* %vx, align 8
  %62 = load double, double* %sx, align 8
  %sub53 = fsub double %61, %62
  %mul54 = fmul double %sub52, %sub53
  %63 = load double, double* %y.addr, align 8
  %64 = load double, double* %sy, align 8
  %sub55 = fsub double %63, %64
  %65 = load double, double* %vy, align 8
  %66 = load double, double* %sy, align 8
  %sub56 = fsub double %65, %66
  %mul57 = fmul double %sub55, %sub56
  %add58 = fadd double %mul54, %mul57
  %67 = load double, double* %vx, align 8
  %68 = load double, double* %sx, align 8
  %sub59 = fsub double %67, %68
  %69 = load double, double* %vx, align 8
  %70 = load double, double* %sx, align 8
  %sub60 = fsub double %69, %70
  %mul61 = fmul double %sub59, %sub60
  %71 = load double, double* %vy, align 8
  %72 = load double, double* %sy, align 8
  %sub62 = fsub double %71, %72
  %73 = load double, double* %vy, align 8
  %74 = load double, double* %sy, align 8
  %sub63 = fsub double %73, %74
  %mul64 = fmul double %sub62, %sub63
  %add65 = fadd double %mul61, %mul64
  %div66 = fdiv double %add58, %add65
  %75 = load double*, double** %v.addr, align 8
  store double %div66, double* %75, align 8
  %76 = load double*, double** %v.addr, align 8
  %77 = load double, double* %76, align 8
  %cmp67 = fcmp olt double %77, 0.000000e+00
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.then.51
  %78 = load double*, double** %v.addr, align 8
  store double 0.000000e+00, double* %78, align 8
  br label %if.end.75

if.else.70:                                       ; preds = %if.then.51
  %79 = load double*, double** %v.addr, align 8
  %80 = load double, double* %79, align 8
  %cmp71 = fcmp ogt double %80, 1.000000e+00
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.70
  %81 = load double*, double** %v.addr, align 8
  store double 1.000000e+00, double* %81, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.else.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.69
  br label %if.end.167

if.else.76:                                       ; preds = %if.else.43
  %82 = load double, double* %sx, align 8
  %83 = load double, double* %x.addr, align 8
  %84 = load double, double* %hx, align 8
  %sub77 = fsub double %83, %84
  %mul78 = fmul double %82, %sub77
  %85 = load double, double* %sy, align 8
  %86 = load double, double* %y.addr, align 8
  %87 = load double, double* %hy, align 8
  %sub79 = fsub double %86, %87
  %mul80 = fmul double %85, %sub79
  %add81 = fadd double %mul78, %mul80
  %cmp82 = fcmp olt double %add81, 0.000000e+00
  br i1 %cmp82, label %if.then.84, label %if.else.109

if.then.84:                                       ; preds = %if.else.76
  %88 = load double*, double** %v.addr, align 8
  store double 1.000000e+00, double* %88, align 8
  %89 = load double, double* %x.addr, align 8
  %90 = load double, double* %vx, align 8
  %sub85 = fsub double %89, %90
  %91 = load double, double* %hx, align 8
  %92 = load double, double* %vx, align 8
  %sub86 = fsub double %91, %92
  %mul87 = fmul double %sub85, %sub86
  %93 = load double, double* %y.addr, align 8
  %94 = load double, double* %vy, align 8
  %sub88 = fsub double %93, %94
  %95 = load double, double* %hy, align 8
  %96 = load double, double* %vy, align 8
  %sub89 = fsub double %95, %96
  %mul90 = fmul double %sub88, %sub89
  %add91 = fadd double %mul87, %mul90
  %97 = load double, double* %hx, align 8
  %98 = load double, double* %vx, align 8
  %sub92 = fsub double %97, %98
  %99 = load double, double* %hx, align 8
  %100 = load double, double* %vx, align 8
  %sub93 = fsub double %99, %100
  %mul94 = fmul double %sub92, %sub93
  %101 = load double, double* %hy, align 8
  %102 = load double, double* %vy, align 8
  %sub95 = fsub double %101, %102
  %103 = load double, double* %hy, align 8
  %104 = load double, double* %vy, align 8
  %sub96 = fsub double %103, %104
  %mul97 = fmul double %sub95, %sub96
  %add98 = fadd double %mul94, %mul97
  %div99 = fdiv double %add91, %add98
  %105 = load double*, double** %s.addr, align 8
  store double %div99, double* %105, align 8
  %106 = load double*, double** %s.addr, align 8
  %107 = load double, double* %106, align 8
  %cmp100 = fcmp olt double %107, 0.000000e+00
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.then.84
  %108 = load double*, double** %s.addr, align 8
  store double 0.000000e+00, double* %108, align 8
  br label %if.end.108

if.else.103:                                      ; preds = %if.then.84
  %109 = load double*, double** %s.addr, align 8
  %110 = load double, double* %109, align 8
  %cmp104 = fcmp ogt double %110, 1.000000e+00
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.else.103
  %111 = load double*, double** %s.addr, align 8
  store double 1.000000e+00, double* %111, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.else.103
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.102
  br label %if.end.166

if.else.109:                                      ; preds = %if.else.76
  %112 = load double, double* %x.addr, align 8
  %113 = load double, double* %sx, align 8
  %sub110 = fsub double %112, %113
  %114 = load double, double* %hy, align 8
  %115 = load double, double* %vy, align 8
  %sub111 = fsub double %114, %115
  %mul112 = fmul double %sub110, %sub111
  %116 = load double, double* %y.addr, align 8
  %117 = load double, double* %sy, align 8
  %sub113 = fsub double %116, %117
  %118 = load double, double* %hx, align 8
  %119 = load double, double* %vx, align 8
  %sub114 = fsub double %118, %119
  %mul115 = fmul double %sub113, %sub114
  %sub116 = fsub double %mul112, %mul115
  %120 = load double, double* %vx, align 8
  %121 = load double, double* %sx, align 8
  %sub117 = fsub double %120, %121
  %122 = load double, double* %hy, align 8
  %123 = load double, double* %vy, align 8
  %sub118 = fsub double %122, %123
  %mul119 = fmul double %sub117, %sub118
  %124 = load double, double* %vy, align 8
  %125 = load double, double* %sy, align 8
  %sub120 = fsub double %124, %125
  %126 = load double, double* %hx, align 8
  %127 = load double, double* %vx, align 8
  %sub121 = fsub double %126, %127
  %mul122 = fmul double %sub120, %sub121
  %sub123 = fsub double %mul119, %mul122
  %div124 = fdiv double %sub116, %sub123
  %128 = load double*, double** %v.addr, align 8
  store double %div124, double* %128, align 8
  %129 = load double*, double** %v.addr, align 8
  %130 = load double, double* %129, align 8
  %cmp125 = fcmp ole double %130, 0.000000e+00
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else.109
  %131 = load double*, double** %v.addr, align 8
  store double 0.000000e+00, double* %131, align 8
  %132 = load double*, double** %s.addr, align 8
  store double 0.000000e+00, double* %132, align 8
  br label %if.end.165

if.else.128:                                      ; preds = %if.else.109
  %133 = load double*, double** %v.addr, align 8
  %134 = load double, double* %133, align 8
  %cmp129 = fcmp ogt double %134, 1.000000e+00
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.else.128
  %135 = load double*, double** %v.addr, align 8
  store double 1.000000e+00, double* %135, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.else.128
  %136 = load double, double* %hy, align 8
  %137 = load double, double* %vy, align 8
  %sub133 = fsub double %136, %137
  %call134 = call double @fabs(double %sub133) #7
  %138 = load double, double* %hx, align 8
  %139 = load double, double* %vx, align 8
  %sub135 = fsub double %138, %139
  %call136 = call double @fabs(double %sub135) #7
  %cmp137 = fcmp olt double %call134, %call136
  br i1 %cmp137, label %if.then.139, label %if.else.147

if.then.139:                                      ; preds = %if.end.132
  %140 = load double, double* %x.addr, align 8
  %141 = load double, double* %sx, align 8
  %sub140 = fsub double %140, %141
  %142 = load double*, double** %v.addr, align 8
  %143 = load double, double* %142, align 8
  %144 = load double, double* %vx, align 8
  %145 = load double, double* %sx, align 8
  %sub141 = fsub double %144, %145
  %mul142 = fmul double %143, %sub141
  %sub143 = fsub double %sub140, %mul142
  %146 = load double*, double** %v.addr, align 8
  %147 = load double, double* %146, align 8
  %148 = load double, double* %hx, align 8
  %149 = load double, double* %vx, align 8
  %sub144 = fsub double %148, %149
  %mul145 = fmul double %147, %sub144
  %div146 = fdiv double %sub143, %mul145
  %150 = load double*, double** %s.addr, align 8
  store double %div146, double* %150, align 8
  br label %if.end.155

if.else.147:                                      ; preds = %if.end.132
  %151 = load double, double* %y.addr, align 8
  %152 = load double, double* %sy, align 8
  %sub148 = fsub double %151, %152
  %153 = load double*, double** %v.addr, align 8
  %154 = load double, double* %153, align 8
  %155 = load double, double* %vy, align 8
  %156 = load double, double* %sy, align 8
  %sub149 = fsub double %155, %156
  %mul150 = fmul double %154, %sub149
  %sub151 = fsub double %sub148, %mul150
  %157 = load double*, double** %v.addr, align 8
  %158 = load double, double* %157, align 8
  %159 = load double, double* %hy, align 8
  %160 = load double, double* %vy, align 8
  %sub152 = fsub double %159, %160
  %mul153 = fmul double %158, %sub152
  %div154 = fdiv double %sub151, %mul153
  %161 = load double*, double** %s.addr, align 8
  store double %div154, double* %161, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.147, %if.then.139
  %162 = load double*, double** %s.addr, align 8
  %163 = load double, double* %162, align 8
  %cmp156 = fcmp olt double %163, 0.000000e+00
  br i1 %cmp156, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %if.end.155
  %164 = load double*, double** %s.addr, align 8
  store double 0.000000e+00, double* %164, align 8
  br label %if.end.164

if.else.159:                                      ; preds = %if.end.155
  %165 = load double*, double** %s.addr, align 8
  %166 = load double, double* %165, align 8
  %cmp160 = fcmp ogt double %166, 1.000000e+00
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.else.159
  %167 = load double*, double** %s.addr, align 8
  store double 1.000000e+00, double* %167, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %if.else.159
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.158
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.127
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.108
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.75
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.42
  ret void
}

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #2

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #2

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #2

declare void @gdk_cursor_unref(%struct._GdkCursor*) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind uwtable
define internal void @compute_triangle(%struct._GimpColorWheel* %wheel, i32* %hx, i32* %hy, i32* %sx, i32* %sy, i32* %vx, i32* %vy) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %hx.addr = alloca i32*, align 8
  %hy.addr = alloca i32*, align 8
  %sx.addr = alloca i32*, align 8
  %sy.addr = alloca i32*, align 8
  %vx.addr = alloca i32*, align 8
  %vy.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %inner = alloca double, align 8
  %outer = alloca double, align 8
  %angle = alloca double, align 8
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store i32* %hx, i32** %hx.addr, align 8
  store i32* %hy, i32** %hy.addr, align 8
  store i32* %sx, i32** %sx.addr, align 8
  store i32* %sy, i32** %sy.addr, align 8
  store i32* %vx, i32** %vx.addr, align 8
  store i32* %vy, i32** %vy.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %2, %struct.GimpColorWheelPrivate** %priv, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %4 = bitcast %struct._GimpColorWheel* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %7 to double
  %div4 = fdiv double %conv3, 2.000000e+00
  store double %div4, double* %center_y, align 8
  %8 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %8, i32 0, i32 4
  %9 = load i32, i32* %size, align 4
  %conv5 = sitofp i32 %9 to double
  %div6 = fdiv double %conv5, 2.000000e+00
  store double %div6, double* %outer, align 8
  %10 = load double, double* %outer, align 8
  %11 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %ring_width, align 4
  %conv7 = sitofp i32 %12 to double
  %sub = fsub double %10, %conv7
  store double %sub, double* %inner, align 8
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 0
  %14 = load double, double* %h, align 8
  %mul = fmul double %14, 2.000000e+00
  %mul8 = fmul double %mul, 0x400921FB54442D18
  store double %mul8, double* %angle, align 8
  %15 = load double, double* %center_x, align 8
  %16 = load double, double* %angle, align 8
  %call9 = call double @cos(double %16) #10
  %17 = load double, double* %inner, align 8
  %mul10 = fmul double %call9, %17
  %add = fadd double %15, %mul10
  %add11 = fadd double %add, 5.000000e-01
  %call12 = call double @floor(double %add11) #7
  %conv13 = fptosi double %call12 to i32
  %18 = load i32*, i32** %hx.addr, align 8
  store i32 %conv13, i32* %18, align 4
  %19 = load double, double* %center_y, align 8
  %20 = load double, double* %angle, align 8
  %call14 = call double @sin(double %20) #10
  %21 = load double, double* %inner, align 8
  %mul15 = fmul double %call14, %21
  %sub16 = fsub double %19, %mul15
  %add17 = fadd double %sub16, 5.000000e-01
  %call18 = call double @floor(double %add17) #7
  %conv19 = fptosi double %call18 to i32
  %22 = load i32*, i32** %hy.addr, align 8
  store i32 %conv19, i32* %22, align 4
  %23 = load double, double* %center_x, align 8
  %24 = load double, double* %angle, align 8
  %add20 = fadd double %24, 0x4000C152382D7365
  %call21 = call double @cos(double %add20) #10
  %25 = load double, double* %inner, align 8
  %mul22 = fmul double %call21, %25
  %add23 = fadd double %23, %mul22
  %add24 = fadd double %add23, 5.000000e-01
  %call25 = call double @floor(double %add24) #7
  %conv26 = fptosi double %call25 to i32
  %26 = load i32*, i32** %sx.addr, align 8
  store i32 %conv26, i32* %26, align 4
  %27 = load double, double* %center_y, align 8
  %28 = load double, double* %angle, align 8
  %add27 = fadd double %28, 0x4000C152382D7365
  %call28 = call double @sin(double %add27) #10
  %29 = load double, double* %inner, align 8
  %mul29 = fmul double %call28, %29
  %sub30 = fsub double %27, %mul29
  %add31 = fadd double %sub30, 5.000000e-01
  %call32 = call double @floor(double %add31) #7
  %conv33 = fptosi double %call32 to i32
  %30 = load i32*, i32** %sy.addr, align 8
  store i32 %conv33, i32* %30, align 4
  %31 = load double, double* %center_x, align 8
  %32 = load double, double* %angle, align 8
  %add34 = fadd double %32, 0x4010C152382D7365
  %call35 = call double @cos(double %add34) #10
  %33 = load double, double* %inner, align 8
  %mul36 = fmul double %call35, %33
  %add37 = fadd double %31, %mul36
  %add38 = fadd double %add37, 5.000000e-01
  %call39 = call double @floor(double %add38) #7
  %conv40 = fptosi double %call39 to i32
  %34 = load i32*, i32** %vx.addr, align 8
  store i32 %conv40, i32* %34, align 4
  %35 = load double, double* %center_y, align 8
  %36 = load double, double* %angle, align 8
  %add41 = fadd double %36, 0x4010C152382D7365
  %call42 = call double @sin(double %add41) #10
  %37 = load double, double* %inner, align 8
  %mul43 = fmul double %call42, %37
  %sub44 = fsub double %35, %mul43
  %add45 = fadd double %sub44, 5.000000e-01
  %call46 = call double @floor(double %add45) #7
  %conv47 = fptosi double %call46 to i32
  %38 = load i32*, i32** %vy.addr, align 8
  store i32 %conv47, i32* %38, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #2

declare %struct._GdkDisplay* @gdk_window_get_display(%struct._GdkDrawable*) #2

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #2

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #2

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #2

declare void @cairo_translate(%struct._cairo*, double, double) #2

; Function Attrs: nounwind uwtable
define internal void @paint(%struct._GimpColorWheel* %hsv, %struct._cairo* %cr, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %hsv.addr = alloca %struct._GimpColorWheel*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpColorWheel* %hsv, %struct._GimpColorWheel** %hsv.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  call void @paint_ring(%struct._GimpColorWheel* %0, %struct._cairo* %1, i32 %2, i32 %3, i32 %4, i32 %5)
  %6 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void @paint_triangle(%struct._GimpColorWheel* %6, %struct._cairo* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #2

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #2

declare void @gtk_paint_focus(%struct._GtkStyle*, %struct._GdkDrawable*, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #2

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #2

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @paint_ring(%struct._GimpColorWheel* %wheel, %struct._cairo* %cr, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dist = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %inner = alloca double, align 8
  %outer = alloca double, align 8
  %buf = alloca i32*, align 8
  %p = alloca i32*, align 8
  %angle = alloca double, align 8
  %hue = alloca double, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %source = alloca %struct._cairo_surface*, align 8
  %source_cr = alloca %struct._cairo*, align 8
  %stride = alloca i32, align 4
  %focus_width = alloca i32, align 4
  %focus_pad = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %7 = bitcast %struct._GimpColorWheel* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %allocation)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32* %focus_pad, i8* null)
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %10 = load i32, i32* %width5, align 4
  %conv = sitofp i32 %10 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height6, align 4
  %conv7 = sitofp i32 %11 to double
  %div8 = fdiv double %conv7, 2.000000e+00
  store double %div8, double* %center_y, align 8
  %12 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %12, i32 0, i32 4
  %13 = load i32, i32* %size, align 4
  %conv9 = sitofp i32 %13 to double
  %div10 = fdiv double %conv9, 2.000000e+00
  store double %div10, double* %outer, align 8
  %14 = load double, double* %outer, align 8
  %15 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %15, i32 0, i32 5
  %16 = load i32, i32* %ring_width, align 4
  %conv11 = sitofp i32 %16 to double
  %sub = fsub double %14, %conv11
  store double %sub, double* %inner, align 8
  %17 = load i32, i32* %width.addr, align 4
  %call12 = call i32 @cairo_format_stride_for_width(i32 1, i32 %17)
  store i32 %call12, i32* %stride, align 4
  %18 = load i32, i32* %height.addr, align 4
  %19 = load i32, i32* %stride, align 4
  %mul = mul nsw i32 %18, %19
  %div13 = sdiv i32 %mul, 4
  %conv14 = sext i32 %div13 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 4)
  %20 = bitcast i8* %call15 to i32*
  store i32* %20, i32** %buf, align 8
  store i32 0, i32* %yy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %entry
  %21 = load i32, i32* %yy, align 4
  %22 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %23 = load i32*, i32** %buf, align 8
  %24 = load i32, i32* %yy, align 4
  %25 = load i32, i32* %width.addr, align 4
  %mul17 = mul nsw i32 %24, %25
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %26 = load i32, i32* %yy, align 4
  %27 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %26, %27
  %conv18 = sitofp i32 %add to double
  %28 = load double, double* %center_y, align 8
  %sub19 = fsub double %conv18, %28
  %sub20 = fsub double -0.000000e+00, %sub19
  store double %sub20, double* %dy, align 8
  store i32 0, i32* %xx, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %xx, align 4
  %30 = load i32, i32* %width.addr, align 4
  %cmp22 = icmp slt i32 %29, %30
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %31 = load i32, i32* %xx, align 4
  %32 = load i32, i32* %x.addr, align 4
  %add25 = add nsw i32 %31, %32
  %conv26 = sitofp i32 %add25 to double
  %33 = load double, double* %center_x, align 8
  %sub27 = fsub double %conv26, %33
  store double %sub27, double* %dx, align 8
  %34 = load double, double* %dx, align 8
  %35 = load double, double* %dx, align 8
  %mul28 = fmul double %34, %35
  %36 = load double, double* %dy, align 8
  %37 = load double, double* %dy, align 8
  %mul29 = fmul double %36, %37
  %add30 = fadd double %mul28, %mul29
  store double %add30, double* %dist, align 8
  %38 = load double, double* %dist, align 8
  %39 = load double, double* %inner, align 8
  %sub31 = fsub double %39, 1.000000e+00
  %40 = load double, double* %inner, align 8
  %sub32 = fsub double %40, 1.000000e+00
  %mul33 = fmul double %sub31, %sub32
  %cmp34 = fcmp olt double %38, %mul33
  br i1 %cmp34, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.24
  %41 = load double, double* %dist, align 8
  %42 = load double, double* %outer, align 8
  %add36 = fadd double %42, 1.000000e+00
  %43 = load double, double* %outer, align 8
  %add37 = fadd double %43, 1.000000e+00
  %mul38 = fmul double %add36, %add37
  %cmp39 = fcmp ogt double %41, %mul38
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.24
  %44 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  store i32 0, i32* %44, align 4
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %45 = load double, double* %dy, align 8
  %46 = load double, double* %dx, align 8
  %call41 = call double @atan2(double %45, double %46) #10
  store double %call41, double* %angle, align 8
  %47 = load double, double* %angle, align 8
  %cmp42 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end
  %48 = load double, double* %angle, align 8
  %add45 = fadd double %48, 0x401921FB54442D18
  store double %add45, double* %angle, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end
  %49 = load double, double* %angle, align 8
  %div47 = fdiv double %49, 0x401921FB54442D18
  store double %div47, double* %hue, align 8
  %50 = load double, double* %hue, align 8
  store double %50, double* %r, align 8
  store double 1.000000e+00, double* %g, align 8
  store double 1.000000e+00, double* %b, align 8
  call void @hsv_to_rgb(double* %r, double* %g, double* %b)
  %51 = load double, double* %r, align 8
  %mul48 = fmul double %51, 2.550000e+02
  %add49 = fadd double %mul48, 5.000000e-01
  %call50 = call double @floor(double %add49) #7
  %conv51 = fptosi double %call50 to i32
  %shl = shl i32 %conv51, 16
  %52 = load double, double* %g, align 8
  %mul52 = fmul double %52, 2.550000e+02
  %add53 = fadd double %mul52, 5.000000e-01
  %call54 = call double @floor(double %add53) #7
  %conv55 = fptosi double %call54 to i32
  %shl56 = shl i32 %conv55, 8
  %or = or i32 %shl, %shl56
  %53 = load double, double* %b, align 8
  %mul57 = fmul double %53, 2.550000e+02
  %add58 = fadd double %mul57, 5.000000e-01
  %call59 = call double @floor(double %add58) #7
  %conv60 = fptosi double %call59 to i32
  %or61 = or i32 %or, %conv60
  %54 = load i32*, i32** %p, align 8
  %incdec.ptr62 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %incdec.ptr62, i32** %p, align 8
  store i32 %or61, i32* %54, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.then
  %55 = load i32, i32* %xx, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %xx, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end
  %56 = load i32, i32* %yy, align 4
  %inc64 = add nsw i32 %56, 1
  store i32 %inc64, i32* %yy, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %57 = load i32*, i32** %buf, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* %width.addr, align 4
  %60 = load i32, i32* %height.addr, align 4
  %61 = load i32, i32* %stride, align 4
  %call66 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %58, i32 1, i32 %59, i32 %60, i32 %61)
  store %struct._cairo_surface* %call66, %struct._cairo_surface** %source, align 8
  %62 = load %struct._cairo_surface*, %struct._cairo_surface** %source, align 8
  %call67 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %62)
  store %struct._cairo* %call67, %struct._cairo** %source_cr, align 8
  %63 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %63, i32 0, i32 0
  %64 = load double, double* %h, align 8
  store double %64, double* %r, align 8
  store double 1.000000e+00, double* %g, align 8
  store double 1.000000e+00, double* %b, align 8
  call void @hsv_to_rgb(double* %r, double* %g, double* %b)
  %65 = load double, double* %r, align 8
  %mul68 = fmul double %65, 3.000000e-01
  %66 = load double, double* %g, align 8
  %mul69 = fmul double %66, 5.900000e-01
  %add70 = fadd double %mul68, %mul69
  %67 = load double, double* %b, align 8
  %mul71 = fmul double %67, 1.100000e-01
  %add72 = fadd double %add70, %mul71
  %cmp73 = fcmp ogt double %add72, 5.000000e-01
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %for.end.65
  %68 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %68, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.76

if.else:                                          ; preds = %for.end.65
  %69 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %69, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.75
  %70 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  %71 = load i32, i32* %x.addr, align 4
  %sub77 = sub nsw i32 0, %71
  %conv78 = sitofp i32 %sub77 to double
  %72 = load double, double* %center_x, align 8
  %add79 = fadd double %conv78, %72
  %73 = load i32, i32* %y.addr, align 4
  %sub80 = sub nsw i32 0, %73
  %conv81 = sitofp i32 %sub80 to double
  %74 = load double, double* %center_y, align 8
  %add82 = fadd double %conv81, %74
  call void @cairo_move_to(%struct._cairo* %70, double %add79, double %add82)
  %75 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  %76 = load i32, i32* %x.addr, align 4
  %sub83 = sub nsw i32 0, %76
  %conv84 = sitofp i32 %sub83 to double
  %77 = load double, double* %center_x, align 8
  %add85 = fadd double %conv84, %77
  %78 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h86 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %78, i32 0, i32 0
  %79 = load double, double* %h86, align 8
  %mul87 = fmul double %79, 2.000000e+00
  %mul88 = fmul double %mul87, 0x400921FB54442D18
  %call89 = call double @cos(double %mul88) #10
  %80 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size90 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %80, i32 0, i32 4
  %81 = load i32, i32* %size90, align 4
  %conv91 = sitofp i32 %81 to double
  %mul92 = fmul double %call89, %conv91
  %div93 = fdiv double %mul92, 2.000000e+00
  %add94 = fadd double %add85, %div93
  %82 = load i32, i32* %y.addr, align 4
  %sub95 = sub nsw i32 0, %82
  %conv96 = sitofp i32 %sub95 to double
  %83 = load double, double* %center_y, align 8
  %add97 = fadd double %conv96, %83
  %84 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h98 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %84, i32 0, i32 0
  %85 = load double, double* %h98, align 8
  %mul99 = fmul double %85, 2.000000e+00
  %mul100 = fmul double %mul99, 0x400921FB54442D18
  %call101 = call double @sin(double %mul100) #10
  %86 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size102 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %86, i32 0, i32 4
  %87 = load i32, i32* %size102, align 4
  %conv103 = sitofp i32 %87 to double
  %mul104 = fmul double %call101, %conv103
  %div105 = fdiv double %mul104, 2.000000e+00
  %sub106 = fsub double %add97, %div105
  call void @cairo_line_to(%struct._cairo* %75, double %add94, double %sub106)
  %88 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  call void @cairo_stroke(%struct._cairo* %88)
  %89 = load %struct._cairo*, %struct._cairo** %source_cr, align 8
  call void @cairo_destroy(%struct._cairo* %89)
  %90 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %90)
  %91 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %92 = load %struct._cairo_surface*, %struct._cairo_surface** %source, align 8
  %93 = load i32, i32* %x.addr, align 4
  %conv107 = sitofp i32 %93 to double
  %94 = load i32, i32* %y.addr, align 4
  %conv108 = sitofp i32 %94 to double
  call void @cairo_set_source_surface(%struct._cairo* %91, %struct._cairo_surface* %92, double %conv107, double %conv108)
  %95 = load %struct._cairo_surface*, %struct._cairo_surface** %source, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %95)
  %96 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %97 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width109 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %97, i32 0, i32 5
  %98 = load i32, i32* %ring_width109, align 4
  %conv110 = sitofp i32 %98 to double
  call void @cairo_set_line_width(%struct._cairo* %96, double %conv110)
  %99 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_path(%struct._cairo* %99)
  %100 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %101 = load double, double* %center_x, align 8
  %102 = load double, double* %center_y, align 8
  %103 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %size111 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %103, i32 0, i32 4
  %104 = load i32, i32* %size111, align 4
  %conv112 = sitofp i32 %104 to double
  %div113 = fdiv double %conv112, 2.000000e+00
  %105 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %ring_width114 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %105, i32 0, i32 5
  %106 = load i32, i32* %ring_width114, align 4
  %conv115 = sitofp i32 %106 to double
  %div116 = fdiv double %conv115, 2.000000e+00
  %sub117 = fsub double %div113, %div116
  call void @cairo_arc(%struct._cairo* %100, double %101, double %102, double %sub117, double 0.000000e+00, double 0x401921FB54442D18)
  %107 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %107)
  %108 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %108)
  %109 = load i32*, i32** %buf, align 8
  %110 = bitcast i32* %109 to i8*
  call void @g_free(i8* %110)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_triangle(%struct._GimpColorWheel* %wheel, %struct._cairo* %cr, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %wheel.addr = alloca %struct._GimpColorWheel*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpColorWheelPrivate*, align 8
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %vx = alloca i32, align 4
  %vy = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %g3 = alloca i32, align 4
  %b3 = alloca i32, align 4
  %t = alloca i32, align 4
  %buf = alloca i32*, align 8
  %p = alloca i32*, align 8
  %c = alloca i32, align 4
  %xl = alloca i32, align 4
  %xr = alloca i32, align 4
  %rl = alloca i32, align 4
  %rr = alloca i32, align 4
  %gl = alloca i32, align 4
  %gr = alloca i32, align 4
  %bl = alloca i32, align 4
  %br = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %x_interp = alloca i32, align 4
  %y_interp = alloca i32, align 4
  %x_start = alloca i32, align 4
  %x_end = alloca i32, align 4
  %source = alloca %struct._cairo_surface*, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %detail = alloca i8*, align 8
  %stride = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %focus_width = alloca i32, align 4
  %focus_pad = alloca i32, align 4
  store %struct._GimpColorWheel* %wheel, %struct._GimpColorWheel** %wheel.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %1 = bitcast %struct._GimpColorWheel* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpColorWheel, %struct._GimpColorWheel* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpColorWheelPrivate*
  store %struct.GimpColorWheelPrivate* %5, %struct.GimpColorWheelPrivate** %priv, align 8
  %6 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %wheel.addr, align 8
  call void @compute_triangle(%struct._GimpColorWheel* %6, i32* %hx, i32* %hy, i32* %sx, i32* %sy, i32* %vx, i32* %vy)
  %7 = load i32, i32* %hx, align 4
  store i32 %7, i32* %x1, align 4
  %8 = load i32, i32* %hy, align 4
  store i32 %8, i32* %y1, align 4
  %9 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %9, i32 0, i32 0
  %10 = load double, double* %h, align 8
  call void @get_color(double %10, double 1.000000e+00, double 1.000000e+00, i32* %r1, i32* %g1, i32* %b1)
  %11 = load i32, i32* %sx, align 4
  store i32 %11, i32* %x2, align 4
  %12 = load i32, i32* %sy, align 4
  store i32 %12, i32* %y2, align 4
  %13 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h3 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %13, i32 0, i32 0
  %14 = load double, double* %h3, align 8
  call void @get_color(double %14, double 1.000000e+00, double 0.000000e+00, i32* %r2, i32* %g2, i32* %b2)
  %15 = load i32, i32* %vx, align 4
  store i32 %15, i32* %x3, align 4
  %16 = load i32, i32* %vy, align 4
  store i32 %16, i32* %y3, align 4
  %17 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h4 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %17, i32 0, i32 0
  %18 = load double, double* %h4, align 8
  call void @get_color(double %18, double 0.000000e+00, double 1.000000e+00, i32* %r3, i32* %g3, i32* %b3)
  %19 = load i32, i32* %y2, align 4
  %20 = load i32, i32* %y3, align 4
  %cmp = icmp sgt i32 %19, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %x2, align 4
  store i32 %21, i32* %t, align 4
  %22 = load i32, i32* %x3, align 4
  store i32 %22, i32* %x2, align 4
  %23 = load i32, i32* %t, align 4
  store i32 %23, i32* %x3, align 4
  %24 = load i32, i32* %y2, align 4
  store i32 %24, i32* %t, align 4
  %25 = load i32, i32* %y3, align 4
  store i32 %25, i32* %y2, align 4
  %26 = load i32, i32* %t, align 4
  store i32 %26, i32* %y3, align 4
  %27 = load i32, i32* %r2, align 4
  store i32 %27, i32* %t, align 4
  %28 = load i32, i32* %r3, align 4
  store i32 %28, i32* %r2, align 4
  %29 = load i32, i32* %t, align 4
  store i32 %29, i32* %r3, align 4
  %30 = load i32, i32* %g2, align 4
  store i32 %30, i32* %t, align 4
  %31 = load i32, i32* %g3, align 4
  store i32 %31, i32* %g2, align 4
  %32 = load i32, i32* %t, align 4
  store i32 %32, i32* %g3, align 4
  %33 = load i32, i32* %b2, align 4
  store i32 %33, i32* %t, align 4
  %34 = load i32, i32* %b3, align 4
  store i32 %34, i32* %b2, align 4
  %35 = load i32, i32* %t, align 4
  store i32 %35, i32* %b3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load i32, i32* %y1, align 4
  %37 = load i32, i32* %y3, align 4
  %cmp5 = icmp sgt i32 %36, %37
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %38 = load i32, i32* %x1, align 4
  store i32 %38, i32* %t, align 4
  %39 = load i32, i32* %x3, align 4
  store i32 %39, i32* %x1, align 4
  %40 = load i32, i32* %t, align 4
  store i32 %40, i32* %x3, align 4
  %41 = load i32, i32* %y1, align 4
  store i32 %41, i32* %t, align 4
  %42 = load i32, i32* %y3, align 4
  store i32 %42, i32* %y1, align 4
  %43 = load i32, i32* %t, align 4
  store i32 %43, i32* %y3, align 4
  %44 = load i32, i32* %r1, align 4
  store i32 %44, i32* %t, align 4
  %45 = load i32, i32* %r3, align 4
  store i32 %45, i32* %r1, align 4
  %46 = load i32, i32* %t, align 4
  store i32 %46, i32* %r3, align 4
  %47 = load i32, i32* %g1, align 4
  store i32 %47, i32* %t, align 4
  %48 = load i32, i32* %g3, align 4
  store i32 %48, i32* %g1, align 4
  %49 = load i32, i32* %t, align 4
  store i32 %49, i32* %g3, align 4
  %50 = load i32, i32* %b1, align 4
  store i32 %50, i32* %t, align 4
  %51 = load i32, i32* %b3, align 4
  store i32 %51, i32* %b1, align 4
  %52 = load i32, i32* %t, align 4
  store i32 %52, i32* %b3, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %53 = load i32, i32* %y1, align 4
  %54 = load i32, i32* %y2, align 4
  %cmp8 = icmp sgt i32 %53, %54
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %55 = load i32, i32* %x1, align 4
  store i32 %55, i32* %t, align 4
  %56 = load i32, i32* %x2, align 4
  store i32 %56, i32* %x1, align 4
  %57 = load i32, i32* %t, align 4
  store i32 %57, i32* %x2, align 4
  %58 = load i32, i32* %y1, align 4
  store i32 %58, i32* %t, align 4
  %59 = load i32, i32* %y2, align 4
  store i32 %59, i32* %y1, align 4
  %60 = load i32, i32* %t, align 4
  store i32 %60, i32* %y2, align 4
  %61 = load i32, i32* %r1, align 4
  store i32 %61, i32* %t, align 4
  %62 = load i32, i32* %r2, align 4
  store i32 %62, i32* %r1, align 4
  %63 = load i32, i32* %t, align 4
  store i32 %63, i32* %r2, align 4
  %64 = load i32, i32* %g1, align 4
  store i32 %64, i32* %t, align 4
  %65 = load i32, i32* %g2, align 4
  store i32 %65, i32* %g1, align 4
  %66 = load i32, i32* %t, align 4
  store i32 %66, i32* %g2, align 4
  %67 = load i32, i32* %b1, align 4
  store i32 %67, i32* %t, align 4
  %68 = load i32, i32* %b2, align 4
  store i32 %68, i32* %b1, align 4
  %69 = load i32, i32* %t, align 4
  store i32 %69, i32* %b2, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %70 = load i32, i32* %width.addr, align 4
  %call11 = call i32 @cairo_format_stride_for_width(i32 1, i32 %70)
  store i32 %call11, i32* %stride, align 4
  %71 = load i32, i32* %height.addr, align 4
  %72 = load i32, i32* %stride, align 4
  %mul = mul nsw i32 %71, %72
  %div = sdiv i32 %mul, 4
  %conv = sext i32 %div to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %73 = bitcast i8* %call12 to i32*
  store i32* %73, i32** %buf, align 8
  store i32 0, i32* %yy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.305, %if.end.10
  %74 = load i32, i32* %yy, align 4
  %75 = load i32, i32* %height.addr, align 4
  %cmp13 = icmp slt i32 %74, %75
  br i1 %cmp13, label %for.body, label %for.end.307

for.body:                                         ; preds = %for.cond
  %76 = load i32*, i32** %buf, align 8
  %77 = load i32, i32* %yy, align 4
  %78 = load i32, i32* %width.addr, align 4
  %mul15 = mul nsw i32 %77, %78
  %idx.ext = sext i32 %mul15 to i64
  %add.ptr = getelementptr inbounds i32, i32* %76, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %79 = load i32, i32* %yy, align 4
  %80 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %79, %80
  %81 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %81, 3
  %cmp16 = icmp sge i32 %add, %sub
  br i1 %cmp16, label %land.lhs.true, label %if.end.304

land.lhs.true:                                    ; preds = %for.body
  %82 = load i32, i32* %yy, align 4
  %83 = load i32, i32* %y.addr, align 4
  %add18 = add nsw i32 %82, %83
  %84 = load i32, i32* %y3, align 4
  %add19 = add nsw i32 %84, 3
  %cmp20 = icmp slt i32 %add18, %add19
  br i1 %cmp20, label %if.then.22, label %if.end.304

if.then.22:                                       ; preds = %land.lhs.true
  %85 = load i32, i32* %yy, align 4
  %86 = load i32, i32* %y.addr, align 4
  %add23 = add nsw i32 %85, %86
  %87 = load i32, i32* %y3, align 4
  %cmp24 = icmp sgt i32 %add23, %87
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %88 = load i32, i32* %y3, align 4
  br label %cond.end.32

cond.false:                                       ; preds = %if.then.22
  %89 = load i32, i32* %yy, align 4
  %90 = load i32, i32* %y.addr, align 4
  %add26 = add nsw i32 %89, %90
  %91 = load i32, i32* %y1, align 4
  %cmp27 = icmp slt i32 %add26, %91
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  %92 = load i32, i32* %y1, align 4
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %93 = load i32, i32* %yy, align 4
  %94 = load i32, i32* %y.addr, align 4
  %add31 = add nsw i32 %93, %94
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi i32 [ %92, %cond.true.29 ], [ %add31, %cond.false.30 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi i32 [ %88, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond33, i32* %y_interp, align 4
  %95 = load i32, i32* %y_interp, align 4
  %96 = load i32, i32* %y2, align 4
  %cmp34 = icmp slt i32 %95, %96
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %cond.end.32
  %97 = load i32, i32* %y2, align 4
  %98 = load i32, i32* %y1, align 4
  %sub37 = sub nsw i32 %97, %98
  %cmp38 = icmp ne i32 %sub37, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.47

cond.true.40:                                     ; preds = %if.then.36
  %99 = load i32, i32* %x1, align 4
  %100 = load i32, i32* %x2, align 4
  %101 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %100, %101
  %102 = load i32, i32* %y_interp, align 4
  %103 = load i32, i32* %y1, align 4
  %sub42 = sub nsw i32 %102, %103
  %mul43 = mul nsw i32 %sub41, %sub42
  %104 = load i32, i32* %y2, align 4
  %105 = load i32, i32* %y1, align 4
  %sub44 = sub nsw i32 %104, %105
  %div45 = sdiv i32 %mul43, %sub44
  %add46 = add nsw i32 %99, %div45
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.then.36
  %106 = load i32, i32* %x1, align 4
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.40
  %cond49 = phi i32 [ %add46, %cond.true.40 ], [ %106, %cond.false.47 ]
  store i32 %cond49, i32* %xl, align 4
  %107 = load i32, i32* %y2, align 4
  %108 = load i32, i32* %y1, align 4
  %sub50 = sub nsw i32 %107, %108
  %cmp51 = icmp ne i32 %sub50, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.60

cond.true.53:                                     ; preds = %cond.end.48
  %109 = load i32, i32* %r1, align 4
  %110 = load i32, i32* %r2, align 4
  %111 = load i32, i32* %r1, align 4
  %sub54 = sub nsw i32 %110, %111
  %112 = load i32, i32* %y_interp, align 4
  %113 = load i32, i32* %y1, align 4
  %sub55 = sub nsw i32 %112, %113
  %mul56 = mul nsw i32 %sub54, %sub55
  %114 = load i32, i32* %y2, align 4
  %115 = load i32, i32* %y1, align 4
  %sub57 = sub nsw i32 %114, %115
  %div58 = sdiv i32 %mul56, %sub57
  %add59 = add nsw i32 %109, %div58
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.end.48
  %116 = load i32, i32* %r1, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.53
  %cond62 = phi i32 [ %add59, %cond.true.53 ], [ %116, %cond.false.60 ]
  store i32 %cond62, i32* %rl, align 4
  %117 = load i32, i32* %y2, align 4
  %118 = load i32, i32* %y1, align 4
  %sub63 = sub nsw i32 %117, %118
  %cmp64 = icmp ne i32 %sub63, 0
  br i1 %cmp64, label %cond.true.66, label %cond.false.73

cond.true.66:                                     ; preds = %cond.end.61
  %119 = load i32, i32* %g1, align 4
  %120 = load i32, i32* %g2, align 4
  %121 = load i32, i32* %g1, align 4
  %sub67 = sub nsw i32 %120, %121
  %122 = load i32, i32* %y_interp, align 4
  %123 = load i32, i32* %y1, align 4
  %sub68 = sub nsw i32 %122, %123
  %mul69 = mul nsw i32 %sub67, %sub68
  %124 = load i32, i32* %y2, align 4
  %125 = load i32, i32* %y1, align 4
  %sub70 = sub nsw i32 %124, %125
  %div71 = sdiv i32 %mul69, %sub70
  %add72 = add nsw i32 %119, %div71
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.61
  %126 = load i32, i32* %g1, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.66
  %cond75 = phi i32 [ %add72, %cond.true.66 ], [ %126, %cond.false.73 ]
  store i32 %cond75, i32* %gl, align 4
  %127 = load i32, i32* %y2, align 4
  %128 = load i32, i32* %y1, align 4
  %sub76 = sub nsw i32 %127, %128
  %cmp77 = icmp ne i32 %sub76, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.86

cond.true.79:                                     ; preds = %cond.end.74
  %129 = load i32, i32* %b1, align 4
  %130 = load i32, i32* %b2, align 4
  %131 = load i32, i32* %b1, align 4
  %sub80 = sub nsw i32 %130, %131
  %132 = load i32, i32* %y_interp, align 4
  %133 = load i32, i32* %y1, align 4
  %sub81 = sub nsw i32 %132, %133
  %mul82 = mul nsw i32 %sub80, %sub81
  %134 = load i32, i32* %y2, align 4
  %135 = load i32, i32* %y1, align 4
  %sub83 = sub nsw i32 %134, %135
  %div84 = sdiv i32 %mul82, %sub83
  %add85 = add nsw i32 %129, %div84
  br label %cond.end.87

cond.false.86:                                    ; preds = %cond.end.74
  %136 = load i32, i32* %b1, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.79
  %cond88 = phi i32 [ %add85, %cond.true.79 ], [ %136, %cond.false.86 ]
  store i32 %cond88, i32* %bl, align 4
  br label %if.end.141

if.else:                                          ; preds = %cond.end.32
  %137 = load i32, i32* %y3, align 4
  %138 = load i32, i32* %y2, align 4
  %sub89 = sub nsw i32 %137, %138
  %cmp90 = icmp ne i32 %sub89, 0
  br i1 %cmp90, label %cond.true.92, label %cond.false.99

cond.true.92:                                     ; preds = %if.else
  %139 = load i32, i32* %x2, align 4
  %140 = load i32, i32* %x3, align 4
  %141 = load i32, i32* %x2, align 4
  %sub93 = sub nsw i32 %140, %141
  %142 = load i32, i32* %y_interp, align 4
  %143 = load i32, i32* %y2, align 4
  %sub94 = sub nsw i32 %142, %143
  %mul95 = mul nsw i32 %sub93, %sub94
  %144 = load i32, i32* %y3, align 4
  %145 = load i32, i32* %y2, align 4
  %sub96 = sub nsw i32 %144, %145
  %div97 = sdiv i32 %mul95, %sub96
  %add98 = add nsw i32 %139, %div97
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.else
  %146 = load i32, i32* %x2, align 4
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.92
  %cond101 = phi i32 [ %add98, %cond.true.92 ], [ %146, %cond.false.99 ]
  store i32 %cond101, i32* %xl, align 4
  %147 = load i32, i32* %y3, align 4
  %148 = load i32, i32* %y2, align 4
  %sub102 = sub nsw i32 %147, %148
  %cmp103 = icmp ne i32 %sub102, 0
  br i1 %cmp103, label %cond.true.105, label %cond.false.112

cond.true.105:                                    ; preds = %cond.end.100
  %149 = load i32, i32* %r2, align 4
  %150 = load i32, i32* %r3, align 4
  %151 = load i32, i32* %r2, align 4
  %sub106 = sub nsw i32 %150, %151
  %152 = load i32, i32* %y_interp, align 4
  %153 = load i32, i32* %y2, align 4
  %sub107 = sub nsw i32 %152, %153
  %mul108 = mul nsw i32 %sub106, %sub107
  %154 = load i32, i32* %y3, align 4
  %155 = load i32, i32* %y2, align 4
  %sub109 = sub nsw i32 %154, %155
  %div110 = sdiv i32 %mul108, %sub109
  %add111 = add nsw i32 %149, %div110
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end.100
  %156 = load i32, i32* %r2, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.105
  %cond114 = phi i32 [ %add111, %cond.true.105 ], [ %156, %cond.false.112 ]
  store i32 %cond114, i32* %rl, align 4
  %157 = load i32, i32* %y3, align 4
  %158 = load i32, i32* %y2, align 4
  %sub115 = sub nsw i32 %157, %158
  %cmp116 = icmp ne i32 %sub115, 0
  br i1 %cmp116, label %cond.true.118, label %cond.false.125

cond.true.118:                                    ; preds = %cond.end.113
  %159 = load i32, i32* %g2, align 4
  %160 = load i32, i32* %g3, align 4
  %161 = load i32, i32* %g2, align 4
  %sub119 = sub nsw i32 %160, %161
  %162 = load i32, i32* %y_interp, align 4
  %163 = load i32, i32* %y2, align 4
  %sub120 = sub nsw i32 %162, %163
  %mul121 = mul nsw i32 %sub119, %sub120
  %164 = load i32, i32* %y3, align 4
  %165 = load i32, i32* %y2, align 4
  %sub122 = sub nsw i32 %164, %165
  %div123 = sdiv i32 %mul121, %sub122
  %add124 = add nsw i32 %159, %div123
  br label %cond.end.126

cond.false.125:                                   ; preds = %cond.end.113
  %166 = load i32, i32* %g2, align 4
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.118
  %cond127 = phi i32 [ %add124, %cond.true.118 ], [ %166, %cond.false.125 ]
  store i32 %cond127, i32* %gl, align 4
  %167 = load i32, i32* %y3, align 4
  %168 = load i32, i32* %y2, align 4
  %sub128 = sub nsw i32 %167, %168
  %cmp129 = icmp ne i32 %sub128, 0
  br i1 %cmp129, label %cond.true.131, label %cond.false.138

cond.true.131:                                    ; preds = %cond.end.126
  %169 = load i32, i32* %b2, align 4
  %170 = load i32, i32* %b3, align 4
  %171 = load i32, i32* %b2, align 4
  %sub132 = sub nsw i32 %170, %171
  %172 = load i32, i32* %y_interp, align 4
  %173 = load i32, i32* %y2, align 4
  %sub133 = sub nsw i32 %172, %173
  %mul134 = mul nsw i32 %sub132, %sub133
  %174 = load i32, i32* %y3, align 4
  %175 = load i32, i32* %y2, align 4
  %sub135 = sub nsw i32 %174, %175
  %div136 = sdiv i32 %mul134, %sub135
  %add137 = add nsw i32 %169, %div136
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end.126
  %176 = load i32, i32* %b2, align 4
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.131
  %cond140 = phi i32 [ %add137, %cond.true.131 ], [ %176, %cond.false.138 ]
  store i32 %cond140, i32* %bl, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %cond.end.139, %cond.end.87
  %177 = load i32, i32* %y3, align 4
  %178 = load i32, i32* %y1, align 4
  %sub142 = sub nsw i32 %177, %178
  %cmp143 = icmp ne i32 %sub142, 0
  br i1 %cmp143, label %cond.true.145, label %cond.false.152

cond.true.145:                                    ; preds = %if.end.141
  %179 = load i32, i32* %x1, align 4
  %180 = load i32, i32* %x3, align 4
  %181 = load i32, i32* %x1, align 4
  %sub146 = sub nsw i32 %180, %181
  %182 = load i32, i32* %y_interp, align 4
  %183 = load i32, i32* %y1, align 4
  %sub147 = sub nsw i32 %182, %183
  %mul148 = mul nsw i32 %sub146, %sub147
  %184 = load i32, i32* %y3, align 4
  %185 = load i32, i32* %y1, align 4
  %sub149 = sub nsw i32 %184, %185
  %div150 = sdiv i32 %mul148, %sub149
  %add151 = add nsw i32 %179, %div150
  br label %cond.end.153

cond.false.152:                                   ; preds = %if.end.141
  %186 = load i32, i32* %x1, align 4
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.145
  %cond154 = phi i32 [ %add151, %cond.true.145 ], [ %186, %cond.false.152 ]
  store i32 %cond154, i32* %xr, align 4
  %187 = load i32, i32* %y3, align 4
  %188 = load i32, i32* %y1, align 4
  %sub155 = sub nsw i32 %187, %188
  %cmp156 = icmp ne i32 %sub155, 0
  br i1 %cmp156, label %cond.true.158, label %cond.false.165

cond.true.158:                                    ; preds = %cond.end.153
  %189 = load i32, i32* %r1, align 4
  %190 = load i32, i32* %r3, align 4
  %191 = load i32, i32* %r1, align 4
  %sub159 = sub nsw i32 %190, %191
  %192 = load i32, i32* %y_interp, align 4
  %193 = load i32, i32* %y1, align 4
  %sub160 = sub nsw i32 %192, %193
  %mul161 = mul nsw i32 %sub159, %sub160
  %194 = load i32, i32* %y3, align 4
  %195 = load i32, i32* %y1, align 4
  %sub162 = sub nsw i32 %194, %195
  %div163 = sdiv i32 %mul161, %sub162
  %add164 = add nsw i32 %189, %div163
  br label %cond.end.166

cond.false.165:                                   ; preds = %cond.end.153
  %196 = load i32, i32* %r1, align 4
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.158
  %cond167 = phi i32 [ %add164, %cond.true.158 ], [ %196, %cond.false.165 ]
  store i32 %cond167, i32* %rr, align 4
  %197 = load i32, i32* %y3, align 4
  %198 = load i32, i32* %y1, align 4
  %sub168 = sub nsw i32 %197, %198
  %cmp169 = icmp ne i32 %sub168, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.178

cond.true.171:                                    ; preds = %cond.end.166
  %199 = load i32, i32* %g1, align 4
  %200 = load i32, i32* %g3, align 4
  %201 = load i32, i32* %g1, align 4
  %sub172 = sub nsw i32 %200, %201
  %202 = load i32, i32* %y_interp, align 4
  %203 = load i32, i32* %y1, align 4
  %sub173 = sub nsw i32 %202, %203
  %mul174 = mul nsw i32 %sub172, %sub173
  %204 = load i32, i32* %y3, align 4
  %205 = load i32, i32* %y1, align 4
  %sub175 = sub nsw i32 %204, %205
  %div176 = sdiv i32 %mul174, %sub175
  %add177 = add nsw i32 %199, %div176
  br label %cond.end.179

cond.false.178:                                   ; preds = %cond.end.166
  %206 = load i32, i32* %g1, align 4
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.178, %cond.true.171
  %cond180 = phi i32 [ %add177, %cond.true.171 ], [ %206, %cond.false.178 ]
  store i32 %cond180, i32* %gr, align 4
  %207 = load i32, i32* %y3, align 4
  %208 = load i32, i32* %y1, align 4
  %sub181 = sub nsw i32 %207, %208
  %cmp182 = icmp ne i32 %sub181, 0
  br i1 %cmp182, label %cond.true.184, label %cond.false.191

cond.true.184:                                    ; preds = %cond.end.179
  %209 = load i32, i32* %b1, align 4
  %210 = load i32, i32* %b3, align 4
  %211 = load i32, i32* %b1, align 4
  %sub185 = sub nsw i32 %210, %211
  %212 = load i32, i32* %y_interp, align 4
  %213 = load i32, i32* %y1, align 4
  %sub186 = sub nsw i32 %212, %213
  %mul187 = mul nsw i32 %sub185, %sub186
  %214 = load i32, i32* %y3, align 4
  %215 = load i32, i32* %y1, align 4
  %sub188 = sub nsw i32 %214, %215
  %div189 = sdiv i32 %mul187, %sub188
  %add190 = add nsw i32 %209, %div189
  br label %cond.end.192

cond.false.191:                                   ; preds = %cond.end.179
  %216 = load i32, i32* %b1, align 4
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.184
  %cond193 = phi i32 [ %add190, %cond.true.184 ], [ %216, %cond.false.191 ]
  store i32 %cond193, i32* %br, align 4
  %217 = load i32, i32* %xl, align 4
  %218 = load i32, i32* %xr, align 4
  %cmp194 = icmp sgt i32 %217, %218
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %cond.end.192
  %219 = load i32, i32* %xl, align 4
  store i32 %219, i32* %t, align 4
  %220 = load i32, i32* %xr, align 4
  store i32 %220, i32* %xl, align 4
  %221 = load i32, i32* %t, align 4
  store i32 %221, i32* %xr, align 4
  %222 = load i32, i32* %rl, align 4
  store i32 %222, i32* %t, align 4
  %223 = load i32, i32* %rr, align 4
  store i32 %223, i32* %rl, align 4
  %224 = load i32, i32* %t, align 4
  store i32 %224, i32* %rr, align 4
  %225 = load i32, i32* %gl, align 4
  store i32 %225, i32* %t, align 4
  %226 = load i32, i32* %gr, align 4
  store i32 %226, i32* %gl, align 4
  %227 = load i32, i32* %t, align 4
  store i32 %227, i32* %gr, align 4
  %228 = load i32, i32* %bl, align 4
  store i32 %228, i32* %t, align 4
  %229 = load i32, i32* %br, align 4
  store i32 %229, i32* %bl, align 4
  %230 = load i32, i32* %t, align 4
  store i32 %230, i32* %br, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %cond.end.192
  %231 = load i32, i32* %xl, align 4
  %sub198 = sub nsw i32 %231, 3
  %232 = load i32, i32* %x.addr, align 4
  %cmp199 = icmp sgt i32 %sub198, %232
  br i1 %cmp199, label %cond.true.201, label %cond.false.203

cond.true.201:                                    ; preds = %if.end.197
  %233 = load i32, i32* %xl, align 4
  %sub202 = sub nsw i32 %233, 3
  br label %cond.end.204

cond.false.203:                                   ; preds = %if.end.197
  %234 = load i32, i32* %x.addr, align 4
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.201
  %cond205 = phi i32 [ %sub202, %cond.true.201 ], [ %234, %cond.false.203 ]
  store i32 %cond205, i32* %x_start, align 4
  %235 = load i32, i32* %xr, align 4
  %add206 = add nsw i32 %235, 3
  %236 = load i32, i32* %x.addr, align 4
  %237 = load i32, i32* %width.addr, align 4
  %add207 = add nsw i32 %236, %237
  %cmp208 = icmp slt i32 %add206, %add207
  br i1 %cmp208, label %cond.true.210, label %cond.false.212

cond.true.210:                                    ; preds = %cond.end.204
  %238 = load i32, i32* %xr, align 4
  %add211 = add nsw i32 %238, 3
  br label %cond.end.214

cond.false.212:                                   ; preds = %cond.end.204
  %239 = load i32, i32* %x.addr, align 4
  %240 = load i32, i32* %width.addr, align 4
  %add213 = add nsw i32 %239, %240
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.210
  %cond215 = phi i32 [ %add211, %cond.true.210 ], [ %add213, %cond.false.212 ]
  store i32 %cond215, i32* %x_end, align 4
  %241 = load i32, i32* %x_start, align 4
  %242 = load i32, i32* %x_end, align 4
  %cmp216 = icmp slt i32 %241, %242
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %cond.end.214
  %243 = load i32, i32* %x_start, align 4
  br label %cond.end.220

cond.false.219:                                   ; preds = %cond.end.214
  %244 = load i32, i32* %x_end, align 4
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.219, %cond.true.218
  %cond221 = phi i32 [ %243, %cond.true.218 ], [ %244, %cond.false.219 ]
  store i32 %cond221, i32* %x_start, align 4
  %245 = load i32, i32* %rl, align 4
  %shl = shl i32 %245, 16
  %246 = load i32, i32* %gl, align 4
  %shl222 = shl i32 %246, 8
  %or = or i32 %shl, %shl222
  %247 = load i32, i32* %bl, align 4
  %or223 = or i32 %or, %247
  store i32 %or223, i32* %c, align 4
  %248 = load i32, i32* %x.addr, align 4
  store i32 %248, i32* %xx, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc, %cond.end.220
  %249 = load i32, i32* %xx, align 4
  %250 = load i32, i32* %x_start, align 4
  %cmp225 = icmp slt i32 %249, %250
  br i1 %cmp225, label %for.body.227, label %for.end

for.body.227:                                     ; preds = %for.cond.224
  %251 = load i32, i32* %c, align 4
  %252 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  store i32 %251, i32* %252, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.227
  %253 = load i32, i32* %xx, align 4
  %inc = add nsw i32 %253, 1
  store i32 %inc, i32* %xx, align 4
  br label %for.cond.224

for.end:                                          ; preds = %for.cond.224
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.288, %for.end
  %254 = load i32, i32* %xx, align 4
  %255 = load i32, i32* %x_end, align 4
  %cmp229 = icmp slt i32 %254, %255
  br i1 %cmp229, label %for.body.231, label %for.end.290

for.body.231:                                     ; preds = %for.cond.228
  %256 = load i32, i32* %xx, align 4
  %257 = load i32, i32* %xr, align 4
  %cmp232 = icmp sgt i32 %256, %257
  br i1 %cmp232, label %cond.true.234, label %cond.false.235

cond.true.234:                                    ; preds = %for.body.231
  %258 = load i32, i32* %xr, align 4
  br label %cond.end.242

cond.false.235:                                   ; preds = %for.body.231
  %259 = load i32, i32* %xx, align 4
  %260 = load i32, i32* %xl, align 4
  %cmp236 = icmp slt i32 %259, %260
  br i1 %cmp236, label %cond.true.238, label %cond.false.239

cond.true.238:                                    ; preds = %cond.false.235
  %261 = load i32, i32* %xl, align 4
  br label %cond.end.240

cond.false.239:                                   ; preds = %cond.false.235
  %262 = load i32, i32* %xx, align 4
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.239, %cond.true.238
  %cond241 = phi i32 [ %261, %cond.true.238 ], [ %262, %cond.false.239 ]
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.end.240, %cond.true.234
  %cond243 = phi i32 [ %258, %cond.true.234 ], [ %cond241, %cond.end.240 ]
  store i32 %cond243, i32* %x_interp, align 4
  %263 = load i32, i32* %xr, align 4
  %264 = load i32, i32* %xl, align 4
  %sub244 = sub nsw i32 %263, %264
  %cmp245 = icmp ne i32 %sub244, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.254

cond.true.247:                                    ; preds = %cond.end.242
  %265 = load i32, i32* %rl, align 4
  %266 = load i32, i32* %rr, align 4
  %267 = load i32, i32* %rl, align 4
  %sub248 = sub nsw i32 %266, %267
  %268 = load i32, i32* %x_interp, align 4
  %269 = load i32, i32* %xl, align 4
  %sub249 = sub nsw i32 %268, %269
  %mul250 = mul nsw i32 %sub248, %sub249
  %270 = load i32, i32* %xr, align 4
  %271 = load i32, i32* %xl, align 4
  %sub251 = sub nsw i32 %270, %271
  %div252 = sdiv i32 %mul250, %sub251
  %add253 = add nsw i32 %265, %div252
  br label %cond.end.255

cond.false.254:                                   ; preds = %cond.end.242
  %272 = load i32, i32* %rl, align 4
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.254, %cond.true.247
  %cond256 = phi i32 [ %add253, %cond.true.247 ], [ %272, %cond.false.254 ]
  %shl257 = shl i32 %cond256, 16
  %273 = load i32, i32* %xr, align 4
  %274 = load i32, i32* %xl, align 4
  %sub258 = sub nsw i32 %273, %274
  %cmp259 = icmp ne i32 %sub258, 0
  br i1 %cmp259, label %cond.true.261, label %cond.false.268

cond.true.261:                                    ; preds = %cond.end.255
  %275 = load i32, i32* %gl, align 4
  %276 = load i32, i32* %gr, align 4
  %277 = load i32, i32* %gl, align 4
  %sub262 = sub nsw i32 %276, %277
  %278 = load i32, i32* %x_interp, align 4
  %279 = load i32, i32* %xl, align 4
  %sub263 = sub nsw i32 %278, %279
  %mul264 = mul nsw i32 %sub262, %sub263
  %280 = load i32, i32* %xr, align 4
  %281 = load i32, i32* %xl, align 4
  %sub265 = sub nsw i32 %280, %281
  %div266 = sdiv i32 %mul264, %sub265
  %add267 = add nsw i32 %275, %div266
  br label %cond.end.269

cond.false.268:                                   ; preds = %cond.end.255
  %282 = load i32, i32* %gl, align 4
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.268, %cond.true.261
  %cond270 = phi i32 [ %add267, %cond.true.261 ], [ %282, %cond.false.268 ]
  %shl271 = shl i32 %cond270, 8
  %or272 = or i32 %shl257, %shl271
  %283 = load i32, i32* %xr, align 4
  %284 = load i32, i32* %xl, align 4
  %sub273 = sub nsw i32 %283, %284
  %cmp274 = icmp ne i32 %sub273, 0
  br i1 %cmp274, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %cond.end.269
  %285 = load i32, i32* %bl, align 4
  %286 = load i32, i32* %br, align 4
  %287 = load i32, i32* %bl, align 4
  %sub277 = sub nsw i32 %286, %287
  %288 = load i32, i32* %x_interp, align 4
  %289 = load i32, i32* %xl, align 4
  %sub278 = sub nsw i32 %288, %289
  %mul279 = mul nsw i32 %sub277, %sub278
  %290 = load i32, i32* %xr, align 4
  %291 = load i32, i32* %xl, align 4
  %sub280 = sub nsw i32 %290, %291
  %div281 = sdiv i32 %mul279, %sub280
  %add282 = add nsw i32 %285, %div281
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.269
  %292 = load i32, i32* %bl, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.276
  %cond285 = phi i32 [ %add282, %cond.true.276 ], [ %292, %cond.false.283 ]
  %or286 = or i32 %or272, %cond285
  %293 = load i32*, i32** %p, align 8
  %incdec.ptr287 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %incdec.ptr287, i32** %p, align 8
  store i32 %or286, i32* %293, align 4
  br label %for.inc.288

for.inc.288:                                      ; preds = %cond.end.284
  %294 = load i32, i32* %xx, align 4
  %inc289 = add nsw i32 %294, 1
  store i32 %inc289, i32* %xx, align 4
  br label %for.cond.228

for.end.290:                                      ; preds = %for.cond.228
  %295 = load i32, i32* %rr, align 4
  %shl291 = shl i32 %295, 16
  %296 = load i32, i32* %gr, align 4
  %shl292 = shl i32 %296, 8
  %or293 = or i32 %shl291, %shl292
  %297 = load i32, i32* %br, align 4
  %or294 = or i32 %or293, %297
  store i32 %or294, i32* %c, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.301, %for.end.290
  %298 = load i32, i32* %xx, align 4
  %299 = load i32, i32* %x.addr, align 4
  %300 = load i32, i32* %width.addr, align 4
  %add296 = add nsw i32 %299, %300
  %cmp297 = icmp slt i32 %298, %add296
  br i1 %cmp297, label %for.body.299, label %for.end.303

for.body.299:                                     ; preds = %for.cond.295
  %301 = load i32, i32* %c, align 4
  %302 = load i32*, i32** %p, align 8
  %incdec.ptr300 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %incdec.ptr300, i32** %p, align 8
  store i32 %301, i32* %302, align 4
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.body.299
  %303 = load i32, i32* %xx, align 4
  %inc302 = add nsw i32 %303, 1
  store i32 %inc302, i32* %xx, align 4
  br label %for.cond.295

for.end.303:                                      ; preds = %for.cond.295
  br label %if.end.304

if.end.304:                                       ; preds = %for.end.303, %land.lhs.true, %for.body
  br label %for.inc.305

for.inc.305:                                      ; preds = %if.end.304
  %304 = load i32, i32* %yy, align 4
  %inc306 = add nsw i32 %304, 1
  store i32 %inc306, i32* %yy, align 4
  br label %for.cond

for.end.307:                                      ; preds = %for.cond
  %305 = load i32*, i32** %buf, align 8
  %306 = bitcast i32* %305 to i8*
  %307 = load i32, i32* %width.addr, align 4
  %308 = load i32, i32* %height.addr, align 4
  %309 = load i32, i32* %stride, align 4
  %call308 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %306, i32 1, i32 %307, i32 %308, i32 %309)
  store %struct._cairo_surface* %call308, %struct._cairo_surface** %source, align 8
  %310 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %311 = load %struct._cairo_surface*, %struct._cairo_surface** %source, align 8
  %312 = load i32, i32* %x.addr, align 4
  %conv309 = sitofp i32 %312 to double
  %313 = load i32, i32* %y.addr, align 4
  %conv310 = sitofp i32 %313 to double
  call void @cairo_set_source_surface(%struct._cairo* %310, %struct._cairo_surface* %311, double %conv309, double %conv310)
  %314 = load %struct._cairo_surface*, %struct._cairo_surface** %source, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %314)
  %315 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %316 = load i32, i32* %x1, align 4
  %conv311 = sitofp i32 %316 to double
  %317 = load i32, i32* %y1, align 4
  %conv312 = sitofp i32 %317 to double
  call void @cairo_move_to(%struct._cairo* %315, double %conv311, double %conv312)
  %318 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %319 = load i32, i32* %x2, align 4
  %conv313 = sitofp i32 %319 to double
  %320 = load i32, i32* %y2, align 4
  %conv314 = sitofp i32 %320 to double
  call void @cairo_line_to(%struct._cairo* %318, double %conv313, double %conv314)
  %321 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %322 = load i32, i32* %x3, align 4
  %conv315 = sitofp i32 %322 to double
  %323 = load i32, i32* %y3, align 4
  %conv316 = sitofp i32 %323 to double
  call void @cairo_line_to(%struct._cairo* %321, double %conv315, double %conv316)
  %324 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %324)
  %325 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %325)
  %326 = load i32*, i32** %buf, align 8
  %327 = bitcast i32* %326 to i8*
  call void @g_free(i8* %327)
  %328 = load i32, i32* %sx, align 4
  %conv317 = sitofp i32 %328 to double
  %329 = load i32, i32* %vx, align 4
  %330 = load i32, i32* %sx, align 4
  %sub318 = sub nsw i32 %329, %330
  %conv319 = sitofp i32 %sub318 to double
  %331 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %331, i32 0, i32 2
  %332 = load double, double* %v, align 8
  %mul320 = fmul double %conv319, %332
  %add321 = fadd double %conv317, %mul320
  %333 = load i32, i32* %hx, align 4
  %334 = load i32, i32* %vx, align 4
  %sub322 = sub nsw i32 %333, %334
  %conv323 = sitofp i32 %sub322 to double
  %335 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %335, i32 0, i32 1
  %336 = load double, double* %s, align 8
  %mul324 = fmul double %conv323, %336
  %337 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v325 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %337, i32 0, i32 2
  %338 = load double, double* %v325, align 8
  %mul326 = fmul double %mul324, %338
  %add327 = fadd double %add321, %mul326
  %add328 = fadd double %add327, 5.000000e-01
  %call329 = call double @floor(double %add328) #7
  %conv330 = fptosi double %call329 to i32
  store i32 %conv330, i32* %xx, align 4
  %339 = load i32, i32* %sy, align 4
  %conv331 = sitofp i32 %339 to double
  %340 = load i32, i32* %vy, align 4
  %341 = load i32, i32* %sy, align 4
  %sub332 = sub nsw i32 %340, %341
  %conv333 = sitofp i32 %sub332 to double
  %342 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v334 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %342, i32 0, i32 2
  %343 = load double, double* %v334, align 8
  %mul335 = fmul double %conv333, %343
  %add336 = fadd double %conv331, %mul335
  %344 = load i32, i32* %hy, align 4
  %345 = load i32, i32* %vy, align 4
  %sub337 = sub nsw i32 %344, %345
  %conv338 = sitofp i32 %sub337 to double
  %346 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s339 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %346, i32 0, i32 1
  %347 = load double, double* %s339, align 8
  %mul340 = fmul double %conv338, %347
  %348 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v341 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %348, i32 0, i32 2
  %349 = load double, double* %v341, align 8
  %mul342 = fmul double %mul340, %349
  %add343 = fadd double %add336, %mul342
  %add344 = fadd double %add343, 5.000000e-01
  %call345 = call double @floor(double %add344) #7
  %conv346 = fptosi double %call345 to i32
  store i32 %conv346, i32* %yy, align 4
  %350 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %h347 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %350, i32 0, i32 0
  %351 = load double, double* %h347, align 8
  store double %351, double* %r, align 8
  %352 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %s348 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %352, i32 0, i32 1
  %353 = load double, double* %s348, align 8
  store double %353, double* %g, align 8
  %354 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %v349 = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %354, i32 0, i32 2
  %355 = load double, double* %v349, align 8
  store double %355, double* %b, align 8
  call void @hsv_to_rgb(double* %r, double* %g, double* %b)
  %356 = load double, double* %r, align 8
  %mul350 = fmul double %356, 3.000000e-01
  %357 = load double, double* %g, align 8
  %mul351 = fmul double %357, 5.900000e-01
  %add352 = fadd double %mul350, %mul351
  %358 = load double, double* %b, align 8
  %mul353 = fmul double %358, 1.100000e-01
  %add354 = fadd double %add352, %mul353
  %cmp355 = fcmp ogt double %add354, 5.000000e-01
  br i1 %cmp355, label %if.then.357, label %if.else.358

if.then.357:                                      ; preds = %for.end.307
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8** %detail, align 8
  %359 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %359, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.359

if.else.358:                                      ; preds = %for.end.307
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8** %detail, align 8
  %360 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %360, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.358, %if.then.357
  %361 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_path(%struct._cairo* %361)
  %362 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %363 = load i32, i32* %xx, align 4
  %conv360 = sitofp i32 %363 to double
  %364 = load i32, i32* %yy, align 4
  %conv361 = sitofp i32 %364 to double
  call void @cairo_arc(%struct._cairo* %362, double %conv360, double %conv361, double 4.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %365 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %365)
  %366 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call362 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %366)
  %tobool = icmp ne i32 %call362, 0
  br i1 %tobool, label %land.lhs.true.363, label %if.end.385

land.lhs.true.363:                                ; preds = %if.end.359
  %367 = load %struct.GimpColorWheelPrivate*, %struct.GimpColorWheelPrivate** %priv, align 8
  %focus_on_ring = getelementptr inbounds %struct.GimpColorWheelPrivate, %struct.GimpColorWheelPrivate* %367, i32 0, i32 8
  %bf.load = load i8, i8* %focus_on_ring, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool364 = icmp ne i32 %bf.cast, 0
  br i1 %tobool364, label %if.end.385, label %if.then.365

if.then.365:                                      ; preds = %land.lhs.true.363
  %368 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %368, %struct._GdkRectangle* %allocation)
  %369 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %369, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32* %focus_pad, i8* null)
  %370 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call366 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %370)
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call367 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %371)
  %372 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call368 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %372)
  %373 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %374 = load i8*, i8** %detail, align 8
  %x369 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %375 = load i32, i32* %x369, align 4
  %376 = load i32, i32* %xx, align 4
  %add370 = add nsw i32 %375, %376
  %sub371 = sub nsw i32 %add370, 6
  %377 = load i32, i32* %focus_width, align 4
  %sub372 = sub nsw i32 %sub371, %377
  %378 = load i32, i32* %focus_pad, align 4
  %sub373 = sub nsw i32 %sub372, %378
  %y374 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %379 = load i32, i32* %y374, align 4
  %380 = load i32, i32* %yy, align 4
  %add375 = add nsw i32 %379, %380
  %sub376 = sub nsw i32 %add375, 6
  %381 = load i32, i32* %focus_width, align 4
  %sub377 = sub nsw i32 %sub376, %381
  %382 = load i32, i32* %focus_pad, align 4
  %sub378 = sub nsw i32 %sub377, %382
  %383 = load i32, i32* %focus_width, align 4
  %add379 = add nsw i32 6, %383
  %384 = load i32, i32* %focus_pad, align 4
  %add380 = add nsw i32 %add379, %384
  %mul381 = mul nsw i32 2, %add380
  %385 = load i32, i32* %focus_width, align 4
  %add382 = add nsw i32 6, %385
  %386 = load i32, i32* %focus_pad, align 4
  %add383 = add nsw i32 %add382, %386
  %mul384 = mul nsw i32 2, %add383
  call void @gtk_paint_focus(%struct._GtkStyle* %call366, %struct._GdkDrawable* %call367, i32 %call368, %struct._GdkRectangle* null, %struct._GtkWidget* %373, i8* %374, i32 %sub373, i32 %sub378, i32 %mul381, i32 %mul384)
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.365, %land.lhs.true.363, %if.end.359
  ret void
}

declare i32 @cairo_format_stride_for_width(i32, i32) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @hsv_to_rgb(double* %h, double* %s, double* %v) #1 {
entry:
  %h.addr = alloca double*, align 8
  %s.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %hue = alloca double, align 8
  %saturation = alloca double, align 8
  %value = alloca double, align 8
  %f = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %t = alloca double, align 8
  store double* %h, double** %h.addr, align 8
  store double* %s, double** %s.addr, align 8
  store double* %v, double** %v.addr, align 8
  %0 = load double*, double** %s.addr, align 8
  %1 = load double, double* %0, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double*, double** %v.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %h.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double*, double** %v.addr, align 8
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %s.addr, align 8
  store double %6, double* %7, align 8
  br label %if.end.19

if.else:                                          ; preds = %entry
  %8 = load double*, double** %h.addr, align 8
  %9 = load double, double* %8, align 8
  %mul = fmul double %9, 6.000000e+00
  store double %mul, double* %hue, align 8
  %10 = load double*, double** %s.addr, align 8
  %11 = load double, double* %10, align 8
  store double %11, double* %saturation, align 8
  %12 = load double*, double** %v.addr, align 8
  %13 = load double, double* %12, align 8
  store double %13, double* %value, align 8
  %14 = load double, double* %hue, align 8
  %cmp1 = fcmp oeq double %14, 6.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store double 0.000000e+00, double* %hue, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %15 = load double, double* %hue, align 8
  %16 = load double, double* %hue, align 8
  %conv = fptosi double %16 to i32
  %conv3 = sitofp i32 %conv to double
  %sub = fsub double %15, %conv3
  store double %sub, double* %f, align 8
  %17 = load double, double* %value, align 8
  %18 = load double, double* %saturation, align 8
  %sub4 = fsub double 1.000000e+00, %18
  %mul5 = fmul double %17, %sub4
  store double %mul5, double* %p, align 8
  %19 = load double, double* %value, align 8
  %20 = load double, double* %saturation, align 8
  %21 = load double, double* %f, align 8
  %mul6 = fmul double %20, %21
  %sub7 = fsub double 1.000000e+00, %mul6
  %mul8 = fmul double %19, %sub7
  store double %mul8, double* %q, align 8
  %22 = load double, double* %value, align 8
  %23 = load double, double* %saturation, align 8
  %24 = load double, double* %f, align 8
  %sub9 = fsub double 1.000000e+00, %24
  %mul10 = fmul double %23, %sub9
  %sub11 = fsub double 1.000000e+00, %mul10
  %mul12 = fmul double %22, %sub11
  store double %mul12, double* %t, align 8
  %25 = load double, double* %hue, align 8
  %conv13 = fptosi double %25 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.16
    i32 4, label %sw.bb.17
    i32 5, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %26 = load double, double* %value, align 8
  %27 = load double*, double** %h.addr, align 8
  store double %26, double* %27, align 8
  %28 = load double, double* %t, align 8
  %29 = load double*, double** %s.addr, align 8
  store double %28, double* %29, align 8
  %30 = load double, double* %p, align 8
  %31 = load double*, double** %v.addr, align 8
  store double %30, double* %31, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %32 = load double, double* %q, align 8
  %33 = load double*, double** %h.addr, align 8
  store double %32, double* %33, align 8
  %34 = load double, double* %value, align 8
  %35 = load double*, double** %s.addr, align 8
  store double %34, double* %35, align 8
  %36 = load double, double* %p, align 8
  %37 = load double*, double** %v.addr, align 8
  store double %36, double* %37, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %38 = load double, double* %p, align 8
  %39 = load double*, double** %h.addr, align 8
  store double %38, double* %39, align 8
  %40 = load double, double* %value, align 8
  %41 = load double*, double** %s.addr, align 8
  store double %40, double* %41, align 8
  %42 = load double, double* %t, align 8
  %43 = load double*, double** %v.addr, align 8
  store double %42, double* %43, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %44 = load double, double* %p, align 8
  %45 = load double*, double** %h.addr, align 8
  store double %44, double* %45, align 8
  %46 = load double, double* %q, align 8
  %47 = load double*, double** %s.addr, align 8
  store double %46, double* %47, align 8
  %48 = load double, double* %value, align 8
  %49 = load double*, double** %v.addr, align 8
  store double %48, double* %49, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %50 = load double, double* %t, align 8
  %51 = load double*, double** %h.addr, align 8
  store double %50, double* %51, align 8
  %52 = load double, double* %p, align 8
  %53 = load double*, double** %s.addr, align 8
  store double %52, double* %53, align 8
  %54 = load double, double* %value, align 8
  %55 = load double*, double** %v.addr, align 8
  store double %54, double* %55, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %56 = load double, double* %value, align 8
  %57 = load double*, double** %h.addr, align 8
  store double %56, double* %57, align 8
  %58 = load double, double* %p, align 8
  %59 = load double*, double** %s.addr, align 8
  store double %58, double* %59, align 8
  %60 = load double, double* %q, align 8
  %61 = load double*, double** %v.addr, align 8
  store double %60, double* %61, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 422, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.hsv_to_rgb, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog, %if.then
  ret void
}

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #2

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #2

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #2

declare void @cairo_line_to(%struct._cairo*, double, double) #2

declare void @cairo_stroke(%struct._cairo*) #2

declare void @cairo_save(%struct._cairo*) #2

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #2

declare void @cairo_surface_destroy(%struct._cairo_surface*) #2

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @cairo_new_path(%struct._cairo*) #2

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #2

declare void @cairo_restore(%struct._cairo*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_color(double %h, double %s, double %v, i32* %r, i32* %g, i32* %b) #1 {
entry:
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %r.addr = alloca i32*, align 8
  %g.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %v, double* %v.addr, align 8
  store i32* %r, i32** %r.addr, align 8
  store i32* %g, i32** %g.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  call void @hsv_to_rgb(double* %h.addr, double* %s.addr, double* %v.addr)
  %0 = load double, double* %h.addr, align 8
  %mul = fmul double %0, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #7
  %conv = fptosi double %call to i32
  %1 = load i32*, i32** %r.addr, align 8
  store i32 %conv, i32* %1, align 4
  %2 = load double, double* %s.addr, align 8
  %mul1 = fmul double %2, 2.550000e+02
  %add2 = fadd double %mul1, 5.000000e-01
  %call3 = call double @floor(double %add2) #7
  %conv4 = fptosi double %call3 to i32
  %3 = load i32*, i32** %g.addr, align 8
  store i32 %conv4, i32* %3, align 4
  %4 = load double, double* %v.addr, align 8
  %mul5 = fmul double %4, 2.550000e+02
  %add6 = fadd double %mul5, 5.000000e-01
  %call7 = call double @floor(double %add6) #7
  %conv8 = fptosi double %call7 to i32
  %5 = load i32*, i32** %b.addr, align 8
  store i32 %conv8, i32* %5, align 4
  ret void
}

declare void @cairo_close_path(%struct._cairo*) #2

declare void @cairo_fill(%struct._cairo*) #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #2

declare void @gtk_widget_set_has_window(%struct._GtkWidget*, i32) #2

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
