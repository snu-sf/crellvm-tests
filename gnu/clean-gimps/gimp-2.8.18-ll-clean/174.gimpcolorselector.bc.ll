; ModuleID = './libgimpwidgets/gimpcolorselector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
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
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkOrientable = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_color_selector_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpColorSelector\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_selector_new = private unnamed_addr constant [24 x i8] c"gimp_color_selector_new\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"g_type_is_a (selector_type, GIMP_TYPE_COLOR_SELECTOR)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hsv != NULL\00", align 1
@__func__.gimp_color_selector_set_toggles_visible = private unnamed_addr constant [40 x i8] c"gimp_color_selector_set_toggles_visible\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"GIMP_IS_COLOR_SELECTOR (selector)\00", align 1
@__func__.gimp_color_selector_set_toggles_sensitive = private unnamed_addr constant [42 x i8] c"gimp_color_selector_set_toggles_sensitive\00", align 1
@__func__.gimp_color_selector_set_show_alpha = private unnamed_addr constant [35 x i8] c"gimp_color_selector_set_show_alpha\00", align 1
@__func__.gimp_color_selector_set_color = private unnamed_addr constant [30 x i8] c"gimp_color_selector_set_color\00", align 1
@__func__.gimp_color_selector_set_channel = private unnamed_addr constant [32 x i8] c"gimp_color_selector_set_channel\00", align 1
@__func__.gimp_color_selector_color_changed = private unnamed_addr constant [34 x i8] c"gimp_color_selector_color_changed\00", align 1
@selector_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_color_selector_channel_changed = private unnamed_addr constant [36 x i8] c"gimp_color_selector_channel_changed\00", align 1
@__func__.gimp_color_selector_set_config = private unnamed_addr constant [31 x i8] c"gimp_color_selector_set_config\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"config == NULL || GIMP_IS_COLOR_CONFIG (config)\00", align 1
@gimp_color_selector_parent_class = internal global i8* null, align 8
@GimpColorSelector_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"channel-changed\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_selector_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_selector_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_selector_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_selector_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorSelector*)* @gimp_color_selector_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_selector_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_selector_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_selector_parent_class, align 8
  %1 = load i32, i32* @GimpColorSelector_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorSelector_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorSelectorClass*
  call void @gimp_color_selector_class_init(%struct._GimpColorSelectorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_init(%struct._GimpColorSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_visible = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %0, i32 0, i32 1
  store i32 1, i32* %toggles_visible, align 4
  %1 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_sensitive = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %1, i32 0, i32 2
  store i32 1, i32* %toggles_sensitive, align 4
  %2 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %show_alpha = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %2, i32 0, i32 3
  store i32 1, i32* %show_alpha, align 4
  %3 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %4 = bitcast %struct._GimpColorSelector* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %5, i32 1)
  %6 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %6, i32 0, i32 4
  call void @gimp_rgba_set(%struct._GimpRGB* %rgb, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 4
  %8 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %8, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb2, %struct._GimpHSV* %hsv)
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %9, i32 0, i32 6
  store i32 0, i32* %channel, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_selector_new(i64 %selector_type, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, i32 %channel) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %selector_type.addr = alloca i64, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %channel.addr = alloca i32, align 4
  %selector = alloca %struct._GimpColorSelector*, align 8
  store i64 %selector_type, i64* %selector_type.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %selector_type.addr, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_color_selector_new, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.2
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_color_selector_new, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp8 = icmp ne %struct._GimpHSV* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_color_selector_new, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i64, i64* %selector_type.addr, align 8
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %3, i8* null)
  %4 = bitcast i8* %call13 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %4, %struct._GimpColorSelector** %selector, align 8
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %7 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %5, %struct._GimpRGB* %6, %struct._GimpHSV* %7)
  %8 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %9 = load i32, i32* %channel.addr, align 4
  call void @gimp_color_selector_set_channel(%struct._GimpColorSelector* %8, i32 %9)
  %10 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %11 = bitcast %struct._GimpColorSelector* %10 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call14)
  %12 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %13
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_selector_set_color, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_selector_set_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp18 = icmp ne %struct._GimpHSV* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_selector_set_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb23 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %15, i32 0, i32 4
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %17 = bitcast %struct._GimpRGB* %rgb23 to i8*
  %18 = bitcast %struct._GimpRGB* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  %19 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv24 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %19, i32 0, i32 5
  %20 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %21 = bitcast %struct._GimpHSV* %hsv24 to i8*
  %22 = bitcast %struct._GimpHSV* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %24 = bitcast %struct._GimpColorSelector* %23 to %struct._GTypeInstance*
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %26 = bitcast %struct._GTypeClass* %25 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %26, %struct._GimpColorSelectorClass** %selector_class, align 8
  %27 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %27, i32 0, i32 7
  %28 = load void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %tobool26 = icmp ne void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* %28, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.22
  %29 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color28 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %29, i32 0, i32 7
  %30 = load void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color28, align 8
  %31 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %33 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  call void %30(%struct._GimpColorSelector* %31, %struct._GimpRGB* %32, %struct._GimpHSV* %33)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end.22
  %34 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %34)
  br label %return

return:                                           ; preds = %if.end.29, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_channel(%struct._GimpColorSelector* %selector, i32 %channel) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_selector_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %channel.addr, align 4
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %channel11 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %14, i32 0, i32 6
  %15 = load i32, i32* %channel11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %channel.addr, align 4
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %channel15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 6
  store i32 %16, i32* %channel15, align 4
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %19 = bitcast %struct._GimpColorSelector* %18 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %21, %struct._GimpColorSelectorClass** %selector_class, align 8
  %22 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %22, i32 0, i32 8
  %23 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  %tobool17 = icmp ne void (%struct._GimpColorSelector*, i32)* %23, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.13
  %24 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_channel19 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %24, i32 0, i32 8
  %25 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_channel19, align 8
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %27 = load i32, i32* %channel.addr, align 4
  call void %25(%struct._GimpColorSelector* %26, i32 %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.13
  %28 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  call void @gimp_color_selector_channel_changed(%struct._GimpColorSelector* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.end.20, %do.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector* %selector, i32 %visible) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %visible.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_selector_set_toggles_visible, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_visible = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %13, i32 0, i32 1
  %14 = load i32, i32* %toggles_visible, align 4
  %15 = load i32, i32* %visible.addr, align 4
  %cmp11 = icmp ne i32 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %do.end
  %16 = load i32, i32* %visible.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_visible15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 1
  store i32 %cond, i32* %toggles_visible15, align 4
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %19 = bitcast %struct._GimpColorSelector* %18 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %21, %struct._GimpColorSelectorClass** %selector_class, align 8
  %22 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_visible = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %22, i32 0, i32 4
  %23 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible, align 8
  %tobool17 = icmp ne void (%struct._GimpColorSelector*, i32)* %23, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.12
  %24 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_visible19 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %24, i32 0, i32 4
  %25 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible19, align 8
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %27 = load i32, i32* %visible.addr, align 4
  call void %25(%struct._GimpColorSelector* %26, i32 %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.end.20, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_toggles_sensitive(%struct._GimpColorSelector* %selector, i32 %sensitive) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %sensitive.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_color_selector_set_toggles_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_sensitive = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %13, i32 0, i32 2
  %14 = load i32, i32* %toggles_sensitive, align 4
  %15 = load i32, i32* %sensitive.addr, align 4
  %cmp11 = icmp ne i32 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %do.end
  %16 = load i32, i32* %sensitive.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %toggles_sensitive15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 2
  store i32 %cond, i32* %toggles_sensitive15, align 4
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %19 = bitcast %struct._GimpColorSelector* %18 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %21, %struct._GimpColorSelectorClass** %selector_class, align 8
  %22 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_sensitive = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %22, i32 0, i32 5
  %23 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive, align 8
  %tobool17 = icmp ne void (%struct._GimpColorSelector*, i32)* %23, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.12
  %24 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_sensitive19 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %24, i32 0, i32 5
  %25 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive19, align 8
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %27 = load i32, i32* %sensitive.addr, align 4
  call void %25(%struct._GimpColorSelector* %26, i32 %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.end.20, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %selector, i32 %show_alpha) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %show_alpha.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %show_alpha, i32* %show_alpha.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selector_set_show_alpha, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %show_alpha.addr, align 4
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %show_alpha11 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %14, i32 0, i32 3
  %15 = load i32, i32* %show_alpha11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %show_alpha.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  %cond = select i1 %tobool15, i32 1, i32 0
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %show_alpha16 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 3
  store i32 %cond, i32* %show_alpha16, align 4
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %19 = bitcast %struct._GimpColorSelector* %18 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %21, %struct._GimpColorSelectorClass** %selector_class, align 8
  %22 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_show_alpha = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %22, i32 0, i32 6
  %23 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_show_alpha, align 8
  %tobool18 = icmp ne void (%struct._GimpColorSelector*, i32)* %23, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.13
  %24 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_show_alpha20 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %24, i32 0, i32 6
  %25 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_show_alpha20, align 8
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %27 = load i32, i32* %show_alpha.addr, align 4
  call void %25(%struct._GimpColorSelector* %26, i32 %27)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.end.21, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_color_selector_color_changed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %14 = bitcast %struct._GimpColorSelector* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 0), align 4
  %16 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %16, i32 0, i32 4
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 5
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_channel_changed(%struct._GimpColorSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_selector_channel_changed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %14 = bitcast %struct._GimpColorSelector* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 1), align 4
  %16 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %16, i32 0, i32 6
  %17 = load i32, i32* %channel, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selector_set_config(%struct._GimpColorSelector* %selector, %struct._GimpColorConfig* %config) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selector_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selector_set_config, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %cmp12 = icmp eq %struct._GimpColorConfig* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpColorConfig* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_color_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selector_set_config, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.44

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %28 = bitcast %struct._GimpColorSelector* %27 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %30, %struct._GimpColorSelectorClass** %selector_class, align 8
  %31 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_config = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %31, i32 0, i32 11
  %32 = load void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)** %set_config, align 8
  %tobool41 = icmp ne void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)* %32, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %do.end.39
  %33 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_config43 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %33, i32 0, i32 11
  %34 = load void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)** %set_config43, align 8
  %35 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %36 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  call void %34(%struct._GimpColorSelector* %35, %struct._GimpColorConfig* %36)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.37, %if.then.42, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_class_init(%struct._GimpColorSelectorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorSelectorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorSelectorClass* %klass, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %0 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorSelectorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_selector_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %5 = bitcast %struct._GimpColorSelectorClass* %4 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %6, i32 1, i32 888, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__POINTER_POINTER, i64 4, i32 2, i64 68, i64 68)
  store i32 %call1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 0), align 4
  %7 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %8 = bitcast %struct._GimpColorSelectorClass* %7 to %struct._GTypeClass*
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type2, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i64 %9, i32 1, i32 896, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__INT, i64 4, i32 1, i64 24)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 1), align 4
  %10 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %name, align 8
  %11 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %11, i32 0, i32 2
  store i8* null, i8** %help_id, align 8
  %12 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8** %stock_id, align 8
  %13 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_toggles_visible = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %13, i32 0, i32 4
  store void (%struct._GimpColorSelector*, i32)* null, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible, align 8
  %14 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_toggles_sensitive = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %14, i32 0, i32 5
  store void (%struct._GimpColorSelector*, i32)* null, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive, align 8
  %15 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_show_alpha = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %15, i32 0, i32 6
  store void (%struct._GimpColorSelector*, i32)* null, void (%struct._GimpColorSelector*, i32)** %set_show_alpha, align 8
  %16 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %16, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* null, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %17 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %17, i32 0, i32 8
  store void (%struct._GimpColorSelector*, i32)* null, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  %18 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %18, i32 0, i32 9
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* null, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %color_changed, align 8
  %19 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %channel_changed = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %19, i32 0, i32 10
  store void (%struct._GimpColorSelector*, i32)* null, void (%struct._GimpColorSelector*, i32)** %channel_changed, align 8
  %20 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %klass.addr, align 8
  %set_config = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %20, i32 0, i32 11
  store void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)* null, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)** %set_config, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  call void @gimp_color_selector_set_config(%struct._GimpColorSelector* %2, %struct._GimpColorConfig* null)
  %3 = load i8*, i8** @gimp_color_selector_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 5
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %6(%struct._GObject* %7)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimp_widgets_marshal_VOID__POINTER_POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
