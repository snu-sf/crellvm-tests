; ModuleID = './app/widgets/gimpcolorbar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorBarClass = type { %struct._GtkEventBoxClass }
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
%struct._GimpColorBar = type { %struct._GtkEventBox, i32, [768 x i8] }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_bar_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpColorBar\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_color_bar_set_color = private unnamed_addr constant [25 x i8] c"gimp_color_bar_set_color\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"GIMP_IS_COLOR_BAR (bar)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@gimp_color_bar_set_channel.color = private unnamed_addr constant %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 }, align 8
@__func__.gimp_color_bar_set_channel = private unnamed_addr constant [27 x i8] c"gimp_color_bar_set_channel\00", align 1
@__func__.gimp_color_bar_set_buffers = private unnamed_addr constant [27 x i8] c"gimp_color_bar_set_buffers\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"red != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"green != NULL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"blue != NULL\00", align 1
@gimp_color_bar_parent_class = internal global i8* null, align 8
@GimpColorBar_private_offset = internal global i32 0, align 4
@gimp_color_bar_class_init.white = private unnamed_addr constant %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimpcolorbar.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_bar_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_bar_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_bar_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_bar_class_intern_init to void (i8*, i8*)*), i32 896, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorBar*)* @gimp_color_bar_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_bar_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_bar_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_event_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_bar_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_bar_parent_class, align 8
  %1 = load i32, i32* @GimpColorBar_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorBar_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorBarClass*
  call void @gimp_color_bar_class_init(%struct._GimpColorBarClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_bar_init(%struct._GimpColorBar* %bar) #3 {
entry:
  %bar.addr = alloca %struct._GimpColorBar*, align 8
  store %struct._GimpColorBar* %bar, %struct._GimpColorBar** %bar.addr, align 8
  %0 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpColorBar* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_event_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEventBox*
  call void @gtk_event_box_set_visible_window(%struct._GtkEventBox* %2, i32 0)
  %3 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %orientation = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %3, i32 0, i32 1
  store i32 0, i32* %orientation, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_bar_new(i32 %orientation) #3 {
entry:
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %call = call i64 @gimp_color_bar_get_type() #6
  %0 = load i32, i32* %orientation.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_bar_set_color(%struct._GimpColorBar* %bar, %struct._GimpRGB* %color) #3 {
entry:
  %bar.addr = alloca %struct._GimpColorBar*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorBar* %bar, %struct._GimpColorBar** %bar.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpColorBar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_bar_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_color_bar_set_color, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_color_bar_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  %14 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %buf17 = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %14, i32 0, i32 2
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %buf17, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %15 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %15, 256
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 0
  %17 = load double, double* %r, align 8
  %18 = load i32, i32* %i, align 4
  %conv = sitofp i32 %18 to double
  %mul = fmul double %17, %conv
  %add = fadd double %mul, 5.000000e-01
  %conv19 = fptosi double %add to i32
  %conv20 = trunc i32 %conv19 to i8
  %19 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %conv20, i8* %arrayidx, align 1
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 1
  %21 = load double, double* %g, align 8
  %22 = load i32, i32* %i, align 4
  %conv21 = sitofp i32 %22 to double
  %mul22 = fmul double %21, %conv21
  %add23 = fadd double %mul22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %conv25 = trunc i32 %conv24 to i8
  %23 = load i8*, i8** %buf, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv25, i8* %arrayidx26, align 1
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 2
  %25 = load double, double* %b, align 8
  %26 = load i32, i32* %i, align 4
  %conv27 = sitofp i32 %26 to double
  %mul28 = fmul double %25, %conv27
  %add29 = fadd double %mul28, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %conv31 = trunc i32 %conv30 to i8
  %27 = load i8*, i8** %buf, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %conv31, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  %29 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 3
  store i8* %add.ptr, i8** %buf, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %31 = bitcast %struct._GimpColorBar* %30 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_widget_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call33)
  %32 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %32)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_color_bar_set_channel(%struct._GimpColorBar* %bar, i32 %channel) #3 {
entry:
  %bar.addr = alloca %struct._GimpColorBar*, align 8
  %channel.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorBar* %bar, %struct._GimpColorBar** %bar.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gimp_color_bar_set_channel.color to i8*), i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %2 = bitcast %struct._GimpColorBar* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_bar_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_bar_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load i32, i32* %channel.addr, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %do.end, %do.end, %do.end
  call void @gimp_rgb_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  call void @gimp_rgb_set(%struct._GimpRGB* %color, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  call void @gimp_rgb_set(%struct._GimpRGB* %color, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  call void @gimp_rgb_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb
  %15 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  call void @gimp_color_bar_set_color(%struct._GimpColorBar* %15, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_bar_set_buffers(%struct._GimpColorBar* %bar, i8* %red, i8* %green, i8* %blue) #3 {
entry:
  %bar.addr = alloca %struct._GimpColorBar*, align 8
  %red.addr = alloca i8*, align 8
  %green.addr = alloca i8*, align 8
  %blue.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorBar* %bar, %struct._GimpColorBar** %bar.addr, align 8
  store i8* %red, i8** %red.addr, align 8
  store i8* %green, i8** %green.addr, align 8
  store i8* %blue, i8** %blue.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %1 = bitcast %struct._GimpColorBar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_bar_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_bar_set_buffers, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %red.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_bar_set_buffers, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %green.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_bar_set_buffers, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %blue.addr, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_bar_set_buffers, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store i32 0, i32* %i, align 4
  %16 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %buf29 = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %buf29, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.28
  %17 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %17, 256
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %red.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %21 = load i8*, i8** %buf, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %arrayidx31, align 1
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load i8*, i8** %green.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 %idxprom32
  %24 = load i8, i8* %arrayidx33, align 1
  %25 = load i8*, i8** %buf, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %arrayidx34, align 1
  %26 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load i8*, i8** %blue.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 %idxprom35
  %28 = load i8, i8* %arrayidx36, align 1
  %29 = load i8*, i8** %buf, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  %31 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %add.ptr, i8** %buf, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar.addr, align 8
  %33 = bitcast %struct._GimpColorBar* %32 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_widget_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call38)
  %34 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %34)
  br label %return

return:                                           ; preds = %for.end, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_bar_class_init(%struct._GimpColorBarClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorBarClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %white = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorBarClass* %klass, %struct._GimpColorBarClass** %klass.addr, align 8
  %0 = load %struct._GimpColorBarClass*, %struct._GimpColorBarClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorBarClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorBarClass*, %struct._GimpColorBarClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorBarClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = bitcast %struct._GimpRGB* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct._GimpRGB* @gimp_color_bar_class_init.white to i8*), i64 32, i32 8, i1 false)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_bar_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_bar_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_color_bar_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gtk_orientation_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, %struct._GimpRGB* %white, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_histogram_channel_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 0, i32 226)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call7)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_bar_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %bar = alloca %struct._GimpColorBar*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBar*
  store %struct._GimpColorBar* %2, %struct._GimpColorBar** %bar, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %orientation = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %5, i32 0, i32 1
  store i32 %call2, i32* %orientation, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_boxed(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpRGB*
  call void @gimp_color_bar_set_color(%struct._GimpColorBar* %6, %struct._GimpRGB* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %10)
  call void @gimp_color_bar_set_channel(%struct._GimpColorBar* %9, i32 %call6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_bar_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %bar = alloca %struct._GimpColorBar*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBar*
  store %struct._GimpColorBar* %2, %struct._GimpColorBar** %bar, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %orientation = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %5, i32 0, i32 1
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_bar_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %bar = alloca %struct._GimpColorBar*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %surface = alloca %struct._cairo_surface*, align 8
  %pattern = alloca %struct._cairo_pattern*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBar*
  store %struct._GimpColorBar* %2, %struct._GimpColorBar** %bar, align 8
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %4)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %6, i32 0, i32 4
  %7 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %5, %struct._GdkRegion* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %9, %struct._GdkRectangle* %allocation)
  %10 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %11 = bitcast %struct._GimpColorBar* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %12)
  store i32 %call5, i32* %y, align 4
  store i32 %call5, i32* %x, align 4
  %width6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width6, align 4
  %14 = load i32, i32* %x, align 4
  %mul = mul nsw i32 2, %14
  %sub = sub nsw i32 %13, %mul
  store i32 %sub, i32* %width, align 4
  %height7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %15 = load i32, i32* %height7, align 4
  %16 = load i32, i32* %y, align 4
  %mul8 = mul nsw i32 2, %16
  %sub9 = sub nsw i32 %15, %mul8
  store i32 %sub9, i32* %height, align 4
  %17 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %17, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load i32, i32* %height, align 4
  %cmp10 = icmp slt i32 %18, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %20 = load i32, i32* %x11, align 4
  %21 = load i32, i32* %x, align 4
  %add = add nsw i32 %20, %21
  %conv = sitofp i32 %add to double
  %y12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %22 = load i32, i32* %y12, align 4
  %23 = load i32, i32* %y, align 4
  %add13 = add nsw i32 %22, %23
  %conv14 = sitofp i32 %add13 to double
  call void @cairo_translate(%struct._cairo* %19, double %conv, double %conv14)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %25 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %25 to double
  %26 = load i32, i32* %height, align 4
  %conv16 = sitofp i32 %26 to double
  call void @cairo_rectangle(%struct._cairo* %24, double 0.000000e+00, double 0.000000e+00, double %conv15, double %conv16)
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %27)
  %call17 = call %struct._cairo_surface* @cairo_image_surface_create(i32 1, i32 256, i32 1)
  store %struct._cairo_surface* %call17, %struct._cairo_surface** %surface, align 8
  store i32 0, i32* %i, align 4
  %28 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %buf = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %28, i32 0, i32 2
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %src, align 8
  %29 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call18 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %29)
  store i8* %call18, i8** %dest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %30, 256
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %31 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx, align 1
  %33 = load i8*, i8** %dest, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %arrayidx21, align 1
  %34 = load i8*, i8** %src, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx22, align 1
  %36 = load i8*, i8** %dest, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %arrayidx23, align 1
  %37 = load i8*, i8** %src, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx24, align 1
  %39 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx25, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  %41 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 3
  store i8* %add.ptr, i8** %src, align 8
  %42 = load i8*, i8** %dest, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %add.ptr26, i8** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %43)
  %44 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call27 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %44)
  store %struct._cairo_pattern* %call27, %struct._cairo_pattern** %pattern, align 8
  %45 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_set_extend(%struct._cairo_pattern* %45, i32 2)
  %46 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %46)
  %47 = load %struct._GimpColorBar*, %struct._GimpColorBar** %bar, align 8
  %orientation = getelementptr inbounds %struct._GimpColorBar, %struct._GimpColorBar* %47, i32 0, i32 1
  %48 = load i32, i32* %orientation, align 4
  %cmp28 = icmp eq i32 %48, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.end
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %50 = load i32, i32* %width, align 4
  %conv31 = sitofp i32 %50 to double
  %div = fdiv double %conv31, 2.560000e+02
  call void @cairo_scale(%struct._cairo* %49, double %div, double 1.000000e+00)
  br label %if.end.35

if.else:                                          ; preds = %for.end
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %52 = load i32, i32* %height, align 4
  %conv32 = sitofp i32 %52 to double
  call void @cairo_translate(%struct._cairo* %51, double 0.000000e+00, double %conv32)
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %54 = load i32, i32* %height, align 4
  %conv33 = sitofp i32 %54 to double
  %div34 = fdiv double %conv33, 2.560000e+02
  call void @cairo_scale(%struct._cairo* %53, double 1.000000e+00, double %div34)
  %55 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_rotate(%struct._cairo* %55, double 0xBFF921FB54442D18)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.30
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %57 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_set_source(%struct._cairo* %56, %struct._cairo_pattern* %57)
  %58 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %58)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %59)
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %60)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientation_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

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

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #1

declare void @cairo_pattern_set_extend(%struct._cairo_pattern*, i32) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_rotate(%struct._cairo*, double) #1

declare void @cairo_set_source(%struct._cairo*, %struct._cairo_pattern*) #1

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_event_box_set_visible_window(%struct._GtkEventBox*, i32) #1

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