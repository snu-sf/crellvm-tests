; ModuleID = './app/widgets/gimpwindow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpWindowClass = type { %struct._GtkWindowClass }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque

@gimp_window_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpWindow\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_window_set_primary_focus_widget = private unnamed_addr constant [37 x i8] c"gimp_window_set_primary_focus_widget\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_WINDOW (window)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"primary_focus == NULL || GTK_IS_WIDGET (primary_focus)\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"primary_focus == NULL || gtk_widget_get_toplevel (primary_focus) == GTK_WIDGET (window)\00", align 1
@__func__.gimp_window_get_primary_focus_widget = private unnamed_addr constant [37 x i8] c"gimp_window_get_primary_focus_widget\00", align 1
@gimp_window_parent_class = internal global i8* null, align 8
@GimpWindow_private_offset = internal global i32 0, align 4
@gimp_log_flags = external global i32, align 4
@__func__.gimp_window_key_press_event = private unnamed_addr constant [28 x i8] c"gimp_window_key_press_event\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"handled by gtk_window_propagate_key_event(text_widget)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gtk-enable-mnemonics\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"handled by gtk_window_activate_key(modified)\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"handled by gtk_window_propagate_key_event(other_widget)\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"handled by gtk_window_activate_key(unmodified)\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"handled by widget_class->key_press_event()\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_window_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_window_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_window_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 904, void (i8*, i8*)* bitcast (void (i8*)* @gimp_window_class_intern_init to void (i8*, i8*)*), i32 248, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpWindow*)* @gimp_window_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_window_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_window_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_window_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_window_parent_class, align 8
  %1 = load i32, i32* @GimpWindow_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpWindow_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpWindowClass*
  call void @gimp_window_class_init(%struct._GimpWindowClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_window_init(%struct._GimpWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpWindow*, align 8
  store %struct._GimpWindow* %window, %struct._GimpWindow** %window.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_window_set_primary_focus_widget(%struct._GimpWindow* %window, %struct._GtkWidget* %primary_focus) #3 {
entry:
  %window.addr = alloca %struct._GimpWindow*, align 8
  %primary_focus.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpWindow* %window, %struct._GimpWindow** %window.addr, align 8
  store %struct._GtkWidget* %primary_focus, %struct._GtkWidget** %primary_focus.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_window_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_window_set_primary_focus_widget, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.64

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus.addr, align 8
  %cmp12 = icmp eq %struct._GtkWidget* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_window_set_primary_focus_widget, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.64

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus.addr, align 8
  %cmp41 = icmp eq %struct._GtkWidget* %27, null
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus.addr, align 8
  %call43 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %28)
  %29 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %30 = bitcast %struct._GimpWindow* %29 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_widget_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call44)
  %31 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWidget*
  %cmp46 = icmp eq %struct._GtkWidget* %call43, %31
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_window_set_primary_focus_widget, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.64

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %32 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget, align 8
  %tobool51 = icmp ne %struct._GtkWidget* %33, null
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %do.end.50
  %34 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget53 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %34, i32 0, i32 1
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget53, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %38 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget55 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %38, i32 0, i32 1
  %39 = bitcast %struct._GtkWidget** %primary_focus_widget55 to i8*
  %40 = bitcast i8* %39 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %37, i8** %40)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %do.end.50
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus.addr, align 8
  %42 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget57 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %42, i32 0, i32 1
  store %struct._GtkWidget* %41, %struct._GtkWidget** %primary_focus_widget57, align 8
  %43 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget58 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %43, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget58, align 8
  %tobool59 = icmp ne %struct._GtkWidget* %44, null
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.56
  %45 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget61 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %45, i32 0, i32 1
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget61, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call62 to %struct._GObject*
  %49 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget63 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %49, i32 0, i32 1
  %50 = bitcast %struct._GtkWidget** %primary_focus_widget63 to i8*
  %51 = bitcast i8* %50 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %48, i8** %51)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.9, %if.else.37, %if.else.48, %if.then.60, %if.end.56
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_window_get_primary_focus_widget(%struct._GimpWindow* %window) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GimpWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpWindow* %window, %struct._GimpWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_window_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_window_get_primary_focus_widget, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpWindow*, %struct._GimpWindow** %window.addr, align 8
  %primary_focus_widget = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_window_class_init(%struct._GimpWindowClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpWindowClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpWindowClass* %klass, %struct._GimpWindowClass** %klass.addr, align 8
  %0 = load %struct._GimpWindowClass*, %struct._GimpWindowClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpWindowClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpWindowClass*, %struct._GimpWindowClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpWindowClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_window_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 32
  store i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_window_key_press_event, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_window_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_window_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpWindow*
  call void @gimp_window_set_primary_focus_widget(%struct._GimpWindow* %2, %struct._GtkWidget* null)
  %3 = load i8*, i8** @gimp_window_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 5
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %6(%struct._GObject* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_window_key_press_event(%struct._GtkWidget* %widget, %struct._GdkEventKey* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  %gimp_window = alloca %struct._GimpWindow*, align 8
  %window = alloca %struct._GtkWindow*, align 8
  %focus = alloca %struct._GtkWidget*, align 8
  %accel_mods = alloca i32, align 4
  %enable_mnemonics = alloca i32, align 4
  %handled = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_window_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpWindow*
  store %struct._GimpWindow* %2, %struct._GimpWindow** %gimp_window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  store %struct._GtkWindow* %5, %struct._GtkWindow** %window, align 8
  %6 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %call4 = call %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow* %6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %focus, align 8
  store i32 0, i32* %handled, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gtk_editable_get_type() #5
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #6
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_text_view_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type27, align 8
  %28 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %27, %28
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %30 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %31 = load i32, i32* %__r19, align 4
  store i32 %31, i32* %tmp34
  %32 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.then.60, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.33
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_canvas_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %lor.lhs.false.36
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type51, align 8
  %41 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %40, %41
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %43 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %44 = load i32, i32* %__r43, align 4
  store i32 %44, i32* %tmp58
  %45 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %45, 0
  br i1 %tobool59, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.end.57, %if.end.33, %if.end.11
  %46 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %47 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %call61 = call i32 @gtk_window_propagate_key_event(%struct._GtkWindow* %46, %struct._GdkEventKey* %47)
  store i32 %call61, i32* %handled, align 4
  %48 = load i32, i32* %handled, align 4
  %tobool62 = icmp ne i32 %48, 0
  br i1 %tobool62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.then.60
  br label %do.body

do.body:                                          ; preds = %if.then.63
  %49 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %49, 16384
  %tobool64 = icmp ne i32 %and, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_window_key_press_event, i32 0, i32 0), i32 95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.66
  br label %if.end.67

if.end.67:                                        ; preds = %do.end, %if.then.60
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.57
  %50 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %50, i32 0, i32 5
  %51 = load i32, i32* %keyval, align 4
  %cmp69 = icmp eq i32 %51, 65307
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.79

land.lhs.true.70:                                 ; preds = %if.end.68
  %52 = load %struct._GimpWindow*, %struct._GimpWindow** %gimp_window, align 8
  %primary_focus_widget = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget, align 8
  %tobool71 = icmp ne %struct._GtkWidget* %53, null
  br i1 %tobool71, label %if.then.72, label %if.end.79

if.then.72:                                       ; preds = %land.lhs.true.70
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %55 = load %struct._GimpWindow*, %struct._GimpWindow** %gimp_window, align 8
  %primary_focus_widget73 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %55, i32 0, i32 1
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget73, align 8
  %cmp74 = icmp ne %struct._GtkWidget* %54, %56
  br i1 %cmp74, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.then.72
  %57 = load %struct._GimpWindow*, %struct._GimpWindow** %gimp_window, align 8
  %primary_focus_widget76 = getelementptr inbounds %struct._GimpWindow, %struct._GimpWindow* %57, i32 0, i32 1
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %primary_focus_widget76, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %58)
  br label %if.end.78

if.else.77:                                       ; preds = %if.then.72
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_error_bell(%struct._GtkWidget* %59)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.75
  store i32 1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %land.lhs.true.70, %if.end.68
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call80 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %60, i32 0)
  store i32 %call80, i32* %accel_mods, align 4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call81 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %61)
  %62 = bitcast %struct._GtkSettings* %call81 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32* %enable_mnemonics, i8* null)
  %63 = load i32, i32* %enable_mnemonics, align 4
  %tobool82 = icmp ne i32 %63, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.79
  %64 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %call84 = call i32 @gtk_window_get_mnemonic_modifier(%struct._GtkWindow* %64)
  %65 = load i32, i32* %accel_mods, align 4
  %or = or i32 %65, %call84
  store i32 %or, i32* %accel_mods, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %66 = load i32, i32* %handled, align 4
  %tobool86 = icmp ne i32 %66, 0
  br i1 %tobool86, label %if.end.101, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %if.end.85
  %67 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %67, i32 0, i32 4
  %68 = load i32, i32* %state, align 4
  %69 = load i32, i32* %accel_mods, align 4
  %and88 = and i32 %68, %69
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.101

if.then.90:                                       ; preds = %land.lhs.true.87
  %70 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %71 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %call91 = call i32 @gtk_window_activate_key(%struct._GtkWindow* %70, %struct._GdkEventKey* %71)
  store i32 %call91, i32* %handled, align 4
  %72 = load i32, i32* %handled, align 4
  %tobool92 = icmp ne i32 %72, 0
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %if.then.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %73 = load i32, i32* @gimp_log_flags, align 4
  %and95 = and i32 %73, 16384
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %do.body.94
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_window_key_press_event, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %do.body.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %if.then.90
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.87, %if.end.85
  %74 = load i32, i32* %handled, align 4
  %tobool102 = icmp ne i32 %74, 0
  br i1 %tobool102, label %if.end.114, label %if.then.103

if.then.103:                                      ; preds = %if.end.101
  %75 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %76 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %call104 = call i32 @gtk_window_propagate_key_event(%struct._GtkWindow* %75, %struct._GdkEventKey* %76)
  store i32 %call104, i32* %handled, align 4
  %77 = load i32, i32* %handled, align 4
  %tobool105 = icmp ne i32 %77, 0
  br i1 %tobool105, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %if.then.103
  br label %do.body.107

do.body.107:                                      ; preds = %if.then.106
  %78 = load i32, i32* @gimp_log_flags, align 4
  %and108 = and i32 %78, 16384
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %do.body.107
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_window_key_press_event, i32 0, i32 0), i32 136, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %do.body.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.then.103
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.101
  %79 = load i32, i32* %handled, align 4
  %tobool115 = icmp ne i32 %79, 0
  br i1 %tobool115, label %if.end.131, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %if.end.114
  %80 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state117 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %80, i32 0, i32 4
  %81 = load i32, i32* %state117, align 4
  %82 = load i32, i32* %accel_mods, align 4
  %and118 = and i32 %81, %82
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.end.131, label %if.then.120

if.then.120:                                      ; preds = %land.lhs.true.116
  %83 = load %struct._GtkWindow*, %struct._GtkWindow** %window, align 8
  %84 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %call121 = call i32 @gtk_window_activate_key(%struct._GtkWindow* %83, %struct._GdkEventKey* %84)
  store i32 %call121, i32* %handled, align 4
  %85 = load i32, i32* %handled, align 4
  %tobool122 = icmp ne i32 %85, 0
  br i1 %tobool122, label %if.then.123, label %if.end.130

if.then.123:                                      ; preds = %if.then.120
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  %86 = load i32, i32* @gimp_log_flags, align 4
  %and125 = and i32 %86, 16384
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %do.body.124
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_window_key_press_event, i32 0, i32 0), i32 146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %do.body.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %if.then.120
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true.116, %if.end.114
  %87 = load i32, i32* %handled, align 4
  %tobool132 = icmp ne i32 %87, 0
  br i1 %tobool132, label %if.end.148, label %if.then.133

if.then.133:                                      ; preds = %if.end.131
  %call135 = call i64 @gtk_window_get_type() #5
  %call136 = call i64 @g_type_parent(i64 %call135)
  %call137 = call i8* @g_type_class_peek_static(i64 %call136)
  %88 = bitcast i8* %call137 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %88, %struct._GtkWidgetClass** %widget_class, align 8
  %89 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %89, i32 0, i32 32
  %90 = load i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %92 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %call138 = call i32 %90(%struct._GtkWidget* %91, %struct._GdkEventKey* %92)
  store i32 %call138, i32* %handled, align 4
  %93 = load i32, i32* %handled, align 4
  %tobool139 = icmp ne i32 %93, 0
  br i1 %tobool139, label %if.then.140, label %if.end.147

if.then.140:                                      ; preds = %if.then.133
  br label %do.body.141

do.body.141:                                      ; preds = %if.then.140
  %94 = load i32, i32* @gimp_log_flags, align 4
  %and142 = and i32 %94, 16384
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %do.body.141
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_window_key_press_event, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %do.body.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %if.then.133
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.131
  %95 = load i32, i32* %handled, align 4
  store i32 %95, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %if.end.78
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_get_type() #2

declare i32 @gtk_window_propagate_key_event(%struct._GtkWindow*, %struct._GdkEventKey*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_error_bell(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget*, i32) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare i32 @gtk_window_get_mnemonic_modifier(%struct._GtkWindow*) #1

declare i32 @gtk_window_activate_key(%struct._GtkWindow*, %struct._GdkEventKey*) #1

declare i8* @g_type_class_peek_static(i64) #1

declare i64 @g_type_parent(i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
