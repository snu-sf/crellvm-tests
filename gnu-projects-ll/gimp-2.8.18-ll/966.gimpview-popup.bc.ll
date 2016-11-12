; ModuleID = './app/widgets/gimpview-popup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpViewPopup = type { %struct._GtkWidget*, %struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_popup_show = private unnamed_addr constant [21 x i8] c"gimp_view_popup_show\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bevent != NULL\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"drag-begin\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimp-view-popup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_view_popup_show(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpContext* %context, %struct._GimpViewable* %viewable, i32 %view_width, i32 %view_height, i32 %dot_for_dot) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view_width.addr = alloca i32, align 4
  %view_height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup = alloca %struct._GimpViewPopup*, align 8
  %popup_width = alloca i32, align 4
  %popup_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst48 = alloca %struct._GTypeInstance*, align 8
  %__t50 = alloca i64, align 8
  %__r53 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %view_width, i32* %view_width.addr, align 4
  store i32 %view_height, i32* %view_height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_view_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %cmp12 = icmp ne %struct._GdkEventButton* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_view_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp18 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp18, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #4
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #5
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_view_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst48, align 8
  %call51 = call i64 @gimp_viewable_get_type() #4
  store i64 %call51, i64* %__t50, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %tobool54 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool54, label %if.else.56, label %if.then.55

if.then.55:                                       ; preds = %do.body.46
  store i32 0, i32* %__r53, align 4
  br label %if.end.67

if.else.56:                                       ; preds = %do.body.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %tobool58 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.64

land.lhs.true.59:                                 ; preds = %if.else.56
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %g_type61 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type61, align 8
  %36 = load i64, i64* %__t50, align 8
  %cmp62 = icmp eq i64 %35, %36
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %__r53, align 4
  br label %if.end.66

if.else.64:                                       ; preds = %land.lhs.true.59, %if.else.56
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %38 = load i64, i64* %__t50, align 8
  %call65 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #5
  store i32 %call65, i32* %__r53, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  %39 = load i32, i32* %__r53, align 4
  store i32 %39, i32* %tmp68
  %40 = load i32, i32* %tmp68
  %tobool69 = icmp ne i32 %40, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.end.67
  br label %if.end.72

if.else.71:                                       ; preds = %if.end.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_view_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %41 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %42 = load i32, i32* %view_width.addr, align 4
  %43 = load i32, i32* %view_height.addr, align 4
  %44 = load i32, i32* %dot_for_dot.addr, align 4
  %call74 = call i32 @gimp_viewable_get_popup_size(%struct._GimpViewable* %41, i32 %42, i32 %43, i32 %44, i32* %popup_width, i32* %popup_height)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %do.end.73
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %do.end.73
  %call78 = call noalias i8* @g_slice_alloc0(i64 64)
  %45 = bitcast i8* %call78 to %struct._GimpViewPopup*
  store %struct._GimpViewPopup* %45, %struct._GimpViewPopup** %popup, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %47 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %widget79 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %47, i32 0, i32 0
  store %struct._GtkWidget* %46, %struct._GtkWidget** %widget79, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %context80 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %49, i32 0, i32 1
  store %struct._GimpContext* %48, %struct._GimpContext** %context80, align 8
  %50 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %51 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %viewable81 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %51, i32 0, i32 2
  store %struct._GimpViewable* %50, %struct._GimpViewable** %viewable81, align 8
  %52 = load i32, i32* %popup_width, align 4
  %53 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %popup_width82 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %53, i32 0, i32 3
  store i32 %52, i32* %popup_width82, align 4
  %54 = load i32, i32* %popup_height, align 4
  %55 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %popup_height83 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %55, i32 0, i32 4
  store i32 %54, i32* %popup_height83, align 4
  %56 = load i32, i32* %dot_for_dot.addr, align 4
  %57 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %dot_for_dot84 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %57, i32 0, i32 5
  store i32 %56, i32* %dot_for_dot84, align 4
  %58 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %58, i32 0, i32 8
  %59 = load i32, i32* %button, align 4
  %60 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %button85 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %60, i32 0, i32 6
  store i32 %59, i32* %button85, align 4
  %61 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x_root = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %61, i32 0, i32 10
  %62 = load double, double* %x_root, align 8
  %conv = fptosi double %62 to i32
  %63 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %button_x = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %63, i32 0, i32 7
  store i32 %conv, i32* %button_x, align 4
  %64 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y_root = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %64, i32 0, i32 11
  %65 = load double, double* %y_root, align 8
  %conv86 = fptosi double %65 to i32
  %66 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %button_y = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %66, i32 0, i32 8
  store i32 %conv86, i32* %button_y, align 4
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %70 = bitcast %struct._GimpViewPopup* %69 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpViewPopup*)* @gimp_view_popup_button_release to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %73 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %74 = bitcast %struct._GimpViewPopup* %73 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpViewPopup*)* @gimp_view_popup_unmap to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %77 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %78 = bitcast %struct._GimpViewPopup* %77 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpViewPopup*)* @gimp_view_popup_drag_begin to void ()*), i8* %78, void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %80 = bitcast %struct._GimpViewPopup* %79 to i8*
  %call90 = call i32 @g_timeout_add(i32 150, i32 (i8*)* bitcast (i32 (%struct._GimpViewPopup*)* @gimp_view_popup_timeout to i32 (i8*)*), i8* %80)
  %81 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %timeout_id = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %81, i32 0, i32 9
  store i32 %call90, i32* %timeout_id, align 4
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call91 to %struct._GObject*
  %85 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup, align 8
  %86 = bitcast %struct._GimpViewPopup* %85 to i8*
  call void @g_object_set_data_full(%struct._GObject* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* %86, void (i8*)* bitcast (void (%struct._GimpViewPopup*)* @gimp_view_popup_hide to void (i8*)*))
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %87)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.then.76, %if.else.71, %if.else.43, %if.else.14, %if.else.9
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i32 @gimp_viewable_get_popup_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_popup_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpViewPopup* %popup) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %popup.addr = alloca %struct._GimpViewPopup*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpViewPopup* %popup, %struct._GimpViewPopup** %popup.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %2 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %button1 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %2, i32 0, i32 6
  %3 = load i32, i32* %button1, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget2 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget2, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_popup_unmap(%struct._GtkWidget* %widget, %struct._GimpViewPopup* %popup) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %popup.addr = alloca %struct._GimpViewPopup*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewPopup* %popup, %struct._GimpViewPopup** %popup.addr, align 8
  %0 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget1 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_popup_drag_begin(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, %struct._GimpViewPopup* %popup) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %popup.addr = alloca %struct._GimpViewPopup*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpViewPopup* %popup, %struct._GimpViewPopup** %popup.addr, align 8
  %0 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget1 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null)
  ret void
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_popup_timeout(%struct._GimpViewPopup* %popup) #0 {
entry:
  %popup.addr = alloca %struct._GimpViewPopup*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpViewPopup* %popup, %struct._GimpViewPopup** %popup.addr, align 8
  %0 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %0, i32 0, i32 9
  store i32 0, i32* %timeout_id, align 4
  %1 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %1, i32 0, i32 0
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  store %struct._GdkScreen* %call, %struct._GdkScreen** %screen, align 8
  %call1 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %5, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %9 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %8, %struct._GdkScreen* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  %13 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget8 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget8, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %14)
  %15 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %12, %struct._GtkWindow* %16)
  %call12 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_frame_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %19, i32 2)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %22, %struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %25, i32 0, i32 1
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %27 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %27, i32 0, i32 2
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %29 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_width = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %29, i32 0, i32 3
  %30 = load i32, i32* %popup_width, align 4
  %31 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_height = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %31, i32 0, i32 4
  %32 = load i32, i32* %popup_height, align 4
  %call17 = call %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext* %26, %struct._GimpViewable* %28, i32 %30, i32 %32, i32 0, i32 1, i32 0, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %view, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_view_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call18)
  %35 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %35, i32 0, i32 3
  %36 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %37 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %37, i32 0, i32 5
  %38 = load i32, i32* %dot_for_dot, align 4
  call void @gimp_view_renderer_set_dot_for_dot(%struct._GimpViewRenderer* %36, i32 %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call20)
  %41 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %button_x = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %44, i32 0, i32 7
  %45 = load i32, i32* %button_x, align 4
  %46 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_width22 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %46, i32 0, i32 3
  %47 = load i32, i32* %popup_width22, align 4
  %div = sdiv i32 %47, 2
  %sub = sub nsw i32 %45, %div
  store i32 %sub, i32* %x, align 4
  %48 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %button_y = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %48, i32 0, i32 8
  %49 = load i32, i32* %button_y, align 4
  %50 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_height23 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %50, i32 0, i32 4
  %51 = load i32, i32* %popup_height23, align 4
  %div24 = sdiv i32 %51, 2
  %sub25 = sub nsw i32 %49, %div24
  store i32 %sub25, i32* %y, align 4
  %52 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* %y, align 4
  %call26 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %52, i32 %53, i32 %54)
  store i32 %call26, i32* %monitor, align 4
  %55 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %56 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %55, i32 %56, %struct._GdkRectangle* %rect)
  %57 = load i32, i32* %x, align 4
  %x27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %58 = load i32, i32* %x27, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %59 = load i32, i32* %width, align 4
  %add = add nsw i32 %58, %59
  %60 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_width28 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %60, i32 0, i32 3
  %61 = load i32, i32* %popup_width28, align 4
  %sub29 = sub nsw i32 %add, %61
  %cmp = icmp sgt i32 %57, %sub29
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %x30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %62 = load i32, i32* %x30, align 4
  %width31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %63 = load i32, i32* %width31, align 4
  %add32 = add nsw i32 %62, %63
  %64 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_width33 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %64, i32 0, i32 3
  %65 = load i32, i32* %popup_width33, align 4
  %sub34 = sub nsw i32 %add32, %65
  br label %cond.end.40

cond.false:                                       ; preds = %entry
  %66 = load i32, i32* %x, align 4
  %x35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %67 = load i32, i32* %x35, align 4
  %cmp36 = icmp slt i32 %66, %67
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.false
  %x38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %68 = load i32, i32* %x38, align 4
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false
  %69 = load i32, i32* %x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.37
  %cond = phi i32 [ %68, %cond.true.37 ], [ %69, %cond.false.39 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi i32 [ %sub34, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond41, i32* %x, align 4
  %70 = load i32, i32* %y, align 4
  %y42 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %71 = load i32, i32* %y42, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %72 = load i32, i32* %height, align 4
  %add43 = add nsw i32 %71, %72
  %73 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_height44 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %73, i32 0, i32 4
  %74 = load i32, i32* %popup_height44, align 4
  %sub45 = sub nsw i32 %add43, %74
  %cmp46 = icmp sgt i32 %70, %sub45
  br i1 %cmp46, label %cond.true.47, label %cond.false.53

cond.true.47:                                     ; preds = %cond.end.40
  %y48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %75 = load i32, i32* %y48, align 4
  %height49 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %76 = load i32, i32* %height49, align 4
  %add50 = add nsw i32 %75, %76
  %77 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup_height51 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %77, i32 0, i32 4
  %78 = load i32, i32* %popup_height51, align 4
  %sub52 = sub nsw i32 %add50, %78
  br label %cond.end.61

cond.false.53:                                    ; preds = %cond.end.40
  %79 = load i32, i32* %y, align 4
  %y54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %80 = load i32, i32* %y54, align 4
  %cmp55 = icmp slt i32 %79, %80
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.false.53
  %y57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %81 = load i32, i32* %y57, align 4
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.53
  %82 = load i32, i32* %y, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %81, %cond.true.56 ], [ %82, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.47
  %cond62 = phi i32 [ %sub52, %cond.true.47 ], [ %cond60, %cond.end.59 ]
  store i32 %cond62, i32* %y, align 4
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_window_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call63)
  %85 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkWindow*
  %86 = load i32, i32* %x, align 4
  %87 = load i32, i32* %y, align 4
  call void @gtk_window_move(%struct._GtkWindow* %85, i32 %86, i32 %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %90 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup65 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %90, i32 0, i32 10
  store %struct._GtkWidget* %89, %struct._GtkWidget** %popup65, align 8
  ret i32 0
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_view_popup_hide(%struct._GimpViewPopup* %popup) #0 {
entry:
  %popup.addr = alloca %struct._GimpViewPopup*, align 8
  store %struct._GimpViewPopup* %popup, %struct._GimpViewPopup** %popup.addr, align 8
  %0 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %0, i32 0, i32 9
  %1 = load i32, i32* %timeout_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %timeout_id1 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %2, i32 0, i32 9
  %3 = load i32, i32* %timeout_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup2 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %4, i32 0, i32 10
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %popup2, align 8
  %tobool3 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %popup5 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %6, i32 0, i32 10
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %popup5, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %8, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %12 = bitcast %struct._GimpViewPopup* %11 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpViewPopup*)* @gimp_view_popup_button_release to i8*), i8* %12)
  %13 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget8 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget8, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %17 = bitcast %struct._GimpViewPopup* %16 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpViewPopup*)* @gimp_view_popup_unmap to i8*), i8* %17)
  %18 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget10 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget10, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %22 = bitcast %struct._GimpViewPopup* %21 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpViewPopup*)* @gimp_view_popup_drag_begin to i8*), i8* %22)
  %23 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %widget12 = getelementptr inbounds %struct._GimpViewPopup, %struct._GimpViewPopup* %23, i32 0, i32 0
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget12, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %24)
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %25 = load %struct._GimpViewPopup*, %struct._GimpViewPopup** %popup.addr, align 8
  %26 = bitcast %struct._GimpViewPopup* %25 to i8*
  call void @g_slice_free1(i64 64, i8* %26)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_grab_add(%struct._GtkWidget*) #3

declare i32 @g_source_remove(i32) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gtk_grab_remove(%struct._GtkWidget*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_window_new(i32) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #3

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #3

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32) #3

declare void @gimp_view_renderer_set_dot_for_dot(%struct._GimpViewRenderer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #3

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #3

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
