; ModuleID = './app/widgets/gimpoverlaybox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOverlayBoxClass = type { %struct._GtkContainerClass }
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
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GimpOverlayChild = type { %struct._GtkWidget*, %struct._GdkDrawable*, i32, double, double, double, double, double, double, %struct._cairo_matrix }
%struct._cairo_matrix = type { double, double, double, double, double, double }
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_overlay_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpOverlayBox\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_overlay_box_add_child = private unnamed_addr constant [27 x i8] c"gimp_overlay_box_add_child\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_OVERLAY_BOX (box)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_overlay_box_scroll = private unnamed_addr constant [24 x i8] c"gimp_overlay_box_scroll\00", align 1
@gimp_overlay_box_parent_class = internal global i8* null, align 8
@GimpOverlayBox_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"damage-event\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gimpoverlaybox.c\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"pick-embedded-child\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_overlay_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_overlay_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_overlay_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_container_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_overlay_box_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOverlayBox*)* @gimp_overlay_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_overlay_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_overlay_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_overlay_box_parent_class, align 8
  %1 = load i32, i32* @GimpOverlayBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOverlayBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOverlayBoxClass*
  call void @gimp_overlay_box_class_init(%struct._GimpOverlayBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_init(%struct._GimpOverlayBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_has_window(%struct._GtkWidget* %2, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_overlay_box_new() #3 {
entry:
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_add_child(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %xalign, double %yalign) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %xalign.addr = alloca double, align 8
  %yalign.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %xalign, double* %xalign.addr, align 8
  store double %yalign, double* %yalign.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_overlay_box_add_child, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_overlay_box_add_child, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @unset_double_buffered(%struct._GtkWidget* %26)
  %27 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %29 = load double, double* %xalign.addr, align 8
  %30 = load double, double* %yalign.addr, align 8
  %call39 = call %struct._GimpOverlayChild* @gimp_overlay_child_new(%struct._GimpOverlayBox* %27, %struct._GtkWidget* %28, double %29, double %30, double 0.000000e+00, double 7.000000e-01)
  store %struct._GimpOverlayChild* %call39, %struct._GimpOverlayChild** %child, align 8
  %31 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %children, align 8
  %33 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %34 = bitcast %struct._GimpOverlayChild* %33 to i8*
  %call40 = call %struct._GList* @g_list_append(%struct._GList* %32, i8* %34)
  %35 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children41 = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %35, i32 0, i32 1
  store %struct._GList* %call40, %struct._GList** %children41, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @unset_double_buffered(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_double_buffered(%struct._GtkWidget* %0, i32 0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_container_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %call12 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %16)
  store %struct._GList* %call12, %struct._GList** %children, align 8
  %17 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.8
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %18, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GtkWidget*
  call void @unset_double_buffered(%struct._GtkWidget* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %22, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %25)
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end.6
  ret void
}

declare %struct._GimpOverlayChild* @gimp_overlay_child_new(%struct._GimpOverlayBox*, %struct._GtkWidget*, double, double, double, double) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_set_child_alignment(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %xalign, double %yalign) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %xalign.addr = alloca double, align 8
  %yalign.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %xalign, double* %xalign.addr, align 8
  store double %yalign, double* %yalign.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %0, %struct._GtkWidget* %1)
  store %struct._GimpOverlayChild* %call, %struct._GimpOverlayChild** %child, align 8
  %2 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %tobool = icmp ne %struct._GimpOverlayChild* %2, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %3 = load double, double* %xalign.addr, align 8
  %cmp = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.4

cond.false:                                       ; preds = %if.then
  %4 = load double, double* %xalign.addr, align 8
  %cmp1 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %5 = load double, double* %xalign.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 0.000000e+00, %cond.true.2 ], [ %5, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond5, double* %xalign.addr, align 8
  %6 = load double, double* %yalign.addr, align 8
  %cmp6 = fcmp ogt double %6, 1.000000e+00
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  br label %cond.end.14

cond.false.8:                                     ; preds = %cond.end.4
  %7 = load double, double* %yalign.addr, align 8
  %cmp9 = fcmp olt double %7, 0.000000e+00
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.false.8
  %8 = load double, double* %yalign.addr, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi double [ 0.000000e+00, %cond.true.10 ], [ %8, %cond.false.11 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.true.7
  %cond15 = phi double [ 1.000000e+00, %cond.true.7 ], [ %cond13, %cond.end.12 ]
  store double %cond15, double* %yalign.addr, align 8
  %9 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %has_position = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %9, i32 0, i32 2
  %10 = load i32, i32* %has_position, align 4
  %tobool16 = icmp ne i32 %10, 0
  br i1 %tobool16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.14
  %11 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %xalign17 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %11, i32 0, i32 3
  %12 = load double, double* %xalign17, align 8
  %13 = load double, double* %xalign.addr, align 8
  %cmp18 = fcmp une double %12, %13
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %14 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %yalign20 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %14, i32 0, i32 4
  %15 = load double, double* %yalign20, align 8
  %16 = load double, double* %yalign.addr, align 8
  %cmp21 = fcmp une double %15, %16
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false, %cond.end.14
  %17 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %18 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %17, %struct._GimpOverlayChild* %18)
  %19 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %has_position23 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %19, i32 0, i32 2
  store i32 0, i32* %has_position23, align 4
  %20 = load double, double* %xalign.addr, align 8
  %21 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %xalign24 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %21, i32 0, i32 3
  store double %20, double* %xalign24, align 8
  %22 = load double, double* %yalign.addr, align 8
  %23 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %yalign25 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %23, i32 0, i32 4
  store double %22, double* %yalign25, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %lor.lhs.false.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox*, %struct._GtkWidget*) #1

declare void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %x, double %y) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %0, %struct._GtkWidget* %1)
  store %struct._GimpOverlayChild* %call, %struct._GimpOverlayChild** %child, align 8
  %2 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %tobool = icmp ne %struct._GimpOverlayChild* %2, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %has_position = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %3, i32 0, i32 2
  %4 = load i32, i32* %has_position, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %x2 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %5, i32 0, i32 5
  %6 = load double, double* %x2, align 8
  %7 = load double, double* %x.addr, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then.6, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %y4 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %8, i32 0, i32 6
  %9 = load double, double* %y4, align 8
  %10 = load double, double* %y.addr, align 8
  %cmp5 = fcmp une double %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.then
  %11 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %12 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %11, %struct._GimpOverlayChild* %12)
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %has_position7 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %13, i32 0, i32 2
  store i32 1, i32* %has_position7, align 4
  %14 = load double, double* %x.addr, align 8
  %15 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %x8 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %15, i32 0, i32 5
  store double %14, double* %x8, align 8
  %16 = load double, double* %y.addr, align 8
  %17 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %y9 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %17, i32 0, i32 6
  store double %16, double* %y9, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %lor.lhs.false.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_set_child_angle(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %angle) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %angle.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %0, %struct._GtkWidget* %1)
  store %struct._GimpOverlayChild* %call, %struct._GimpOverlayChild** %child, align 8
  %2 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %tobool = icmp ne %struct._GimpOverlayChild* %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %angle1 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %3, i32 0, i32 7
  %4 = load double, double* %angle1, align 8
  %5 = load double, double* %angle.addr, align 8
  %cmp = fcmp une double %4, %5
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %7 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %6, %struct._GimpOverlayChild* %7)
  %8 = load double, double* %angle.addr, align 8
  %9 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %angle3 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %9, i32 0, i32 7
  store double %8, double* %angle3, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_set_child_opacity(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %opacity) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %opacity.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %0, %struct._GtkWidget* %1)
  store %struct._GimpOverlayChild* %call, %struct._GimpOverlayChild** %child, align 8
  %2 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %tobool = icmp ne %struct._GimpOverlayChild* %2, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load double, double* %opacity.addr, align 8
  %cmp = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.4

cond.false:                                       ; preds = %if.then
  %4 = load double, double* %opacity.addr, align 8
  %cmp1 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %5 = load double, double* %opacity.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 0.000000e+00, %cond.true.2 ], [ %5, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond5, double* %opacity.addr, align 8
  %6 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %opacity6 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %6, i32 0, i32 8
  %7 = load double, double* %opacity6, align 8
  %8 = load double, double* %opacity.addr, align 8
  %cmp7 = fcmp une double %7, %8
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %cond.end.4
  %9 = load double, double* %opacity.addr, align 8
  %10 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %opacity9 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %10, i32 0, i32 8
  store double %9, double* %opacity9, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %cond.end.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_overlay_box_scroll(%struct._GimpOverlayBox* %box, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GimpOverlayChild*, align 8
  %child22 = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_box_scroll, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %14 = bitcast %struct._GimpOverlayBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %widget, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call13 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %16)
  store %struct._GdkDrawable* %call13, %struct._GdkDrawable** %window, align 8
  %17 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %19, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %22, %struct._GimpOverlayChild** %child, align 8
  %23 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %24 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %23, %struct._GimpOverlayChild* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %25, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %29 = load i32, i32* %offset_x.addr, align 4
  %30 = load i32, i32* %offset_y.addr, align 4
  call void @gdk_window_scroll(%struct._GdkDrawable* %28, i32 %29, i32 %30)
  %31 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children17 = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %children17, align 8
  store %struct._GList* %32, %struct._GList** %list, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %cond.end.29, %for.end
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %33, null
  br i1 %tobool19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %data23 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data23, align 8
  %36 = bitcast i8* %35 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %36, %struct._GimpOverlayChild** %child22, align 8
  %37 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %38 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child22, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %37, %struct._GimpOverlayChild* %38)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %39, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %for.inc.24
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next27 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next27, align 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %for.inc.24
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi %struct._GList* [ %41, %cond.true.26 ], [ null, %cond.false.28 ]
  store %struct._GList* %cond30, %struct._GList** %list, align 8
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  %42 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_process_updates(%struct._GdkDrawable* %42, i32 0)
  br label %return

return:                                           ; preds = %for.end.31, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_scroll(%struct._GdkDrawable*, i32, i32) #1

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_class_init(%struct._GimpOverlayBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOverlayBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %container_class = alloca %struct._GtkContainerClass*, align 8
  store %struct._GimpOverlayBoxClass* %klass, %struct._GimpOverlayBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpOverlayBoxClass*, %struct._GimpOverlayBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOverlayBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOverlayBoxClass*, %struct._GimpOverlayBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOverlayBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpOverlayBoxClass*, %struct._GimpOverlayBoxClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOverlayBoxClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  store %struct._GtkContainerClass* %8, %struct._GtkContainerClass** %container_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_overlay_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_overlay_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_overlay_box_realize, void (%struct._GtkWidget*)** %realize, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_overlay_box_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_overlay_box_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_overlay_box_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_overlay_box_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %call5 = call i64 @gimp_overlay_box_get_type() #6
  call void @g_signal_override_class_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i64 %call5, void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_overlay_box_damage to void ()*))
  %16 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %16, i32 0, i32 1
  store void (%struct._GtkContainer*, %struct._GtkWidget*)* @gimp_overlay_box_add, void (%struct._GtkContainer*, %struct._GtkWidget*)** %add, align 8
  %17 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %remove = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %17, i32 0, i32 2
  store void (%struct._GtkContainer*, %struct._GtkWidget*)* @gimp_overlay_box_remove, void (%struct._GtkContainer*, %struct._GtkWidget*)** %remove, align 8
  %18 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %18, i32 0, i32 4
  store void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)* @gimp_overlay_box_forall, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %19 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %child_type = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %19, i32 0, i32 6
  store i64 (%struct._GtkContainer*)* @gimp_overlay_box_child_type, i64 (%struct._GtkContainer*)** %child_type, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %attributes = alloca %struct._GdkWindowAttr, align 8
  %attributes_mask = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_realized(%struct._GtkWidget* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %x2 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 2
  store i32 %5, i32* %x2, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %y3 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 3
  store i32 %6, i32* %y3, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %width4 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 %7, i32* %width4, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %8 = load i32, i32* %height, align 4
  %height5 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 %8, i32* %height5, align 4
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 9
  store i32 2, i32* %window_type, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 6
  store i32 0, i32* %wclass, align 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call %struct._GdkVisual* @gtk_widget_get_visual(%struct._GtkWidget* %9)
  %visual = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 7
  store %struct._GdkVisual* %call6, %struct._GdkVisual** %visual, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget* %10)
  %colormap = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 8
  store %struct._GdkColormap* %call7, %struct._GdkColormap** %colormap, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call i32 @gtk_widget_get_events(%struct._GtkWidget* %11)
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 1
  store i32 %call8, i32* %event_mask, align 4
  store i32 108, i32* %attributes_mask, align 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_parent_window(%struct._GtkWidget* %13)
  %14 = load i32, i32* %attributes_mask, align 4
  %call10 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %call9, %struct._GdkWindowAttr* %attributes, i32 %14)
  call void @gtk_widget_set_window(%struct._GtkWidget* %12, %struct._GdkDrawable* %call10)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %call11, i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %18)
  %19 = bitcast %struct._GdkDrawable* %call12 to i8*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (%struct._GdkDrawable* (%struct._GdkDrawable*, double, double, %struct._GimpOverlayBox*)* @gimp_overlay_box_pick_embedded_child to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_style_attach(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call14 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %24)
  call void @gtk_style_set_background(%struct._GtkStyle* %call14, %struct._GdkDrawable* %call15, i32 0)
  %25 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %27, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpOverlayChild*
  call void @gimp_overlay_child_realize(%struct._GimpOverlayBox* %28, %struct._GimpOverlayChild* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %32, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpOverlayChild*
  call void @gimp_overlay_child_unrealize(%struct._GimpOverlayBox* %6, %struct._GimpOverlayChild* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** @gimp_overlay_box_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call3)
  %15 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 11
  %16 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %16(%struct._GtkWidget* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %5)
  store i32 %call4, i32* %border_width, align 4
  %6 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %6
  %add = add nsw i32 1, %mul
  %7 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %7, i32 0, i32 0
  store i32 %add, i32* %width, align 4
  %8 = load i32, i32* %border_width, align 4
  %mul5 = mul nsw i32 2, %8
  %add6 = add nsw i32 1, %mul5
  %9 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %9, i32 0, i32 1
  store i32 %add6, i32* %height, align 4
  %10 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpOverlayChild*
  call void @gimp_overlay_child_size_request(%struct._GimpOverlayBox* %13, %struct._GimpOverlayChild* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %17, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %7, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %9, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 3
  %14 = load i32, i32* %height, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %call3, i32 %8, i32 %10, i32 %12, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %17, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpOverlayChild*
  call void @gimp_overlay_child_size_allocate(%struct._GimpOverlayBox* %18, %struct._GimpOverlayChild* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %22, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_overlay_box_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_overlay_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %3, %struct._GimpOverlayBox** %box, align 8
  %4 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %6, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpOverlayChild*
  %11 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call4 = call i32 @gimp_overlay_child_expose(%struct._GimpOverlayBox* %7, %struct._GimpOverlayChild* %10, %struct._GdkEventExpose* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @g_signal_override_class_handler(i8*, i64, void ()*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_overlay_box_damage(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpOverlayChild*
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call2 = call i32 @gimp_overlay_child_damage(%struct._GimpOverlayBox* %6, %struct._GimpOverlayChild* %9, %struct._GdkEventExpose* %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_add(%struct._GtkContainer* %container, %struct._GtkWidget* %widget) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_overlay_box_add_child(%struct._GimpOverlayBox* %2, %struct._GtkWidget* %3, double 5.000000e-01, double 5.000000e-01)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_remove(%struct._GtkContainer* %container, %struct._GtkWidget* %widget) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %3, %struct._GtkWidget* %4)
  store %struct._GimpOverlayChild* %call2, %struct._GimpOverlayChild** %child, align 8
  %5 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %tobool = icmp ne %struct._GimpOverlayChild* %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %8 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %7, %struct._GimpOverlayChild* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %9 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %children, align 8
  %11 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %12 = bitcast %struct._GimpOverlayChild* %11 to i8*
  %call6 = call %struct._GList* @g_list_remove(%struct._GList* %10, i8* %12)
  %13 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children7 = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %13, i32 0, i32 1
  store %struct._GList* %call6, %struct._GList** %children7, align 8
  %14 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %15 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_free(%struct._GimpOverlayBox* %14, %struct._GimpOverlayChild* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_box_forall(%struct._GtkContainer* %container, i32 %include_internals, void (%struct._GtkWidget*, i8*)* %callback, i8* %callback_data) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %include_internals.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %box = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store i32 %include_internals, i32* %include_internals.addr, align 4
  store void (%struct._GtkWidget*, i8*)* %callback, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayBox*
  store %struct._GimpOverlayBox* %2, %struct._GimpOverlayBox** %box, align 8
  %3 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %8, %struct._GimpOverlayChild** %child, align 8
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  %11 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %12 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %widget = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %12, i32 0, i32 0
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %14 = load i8*, i8** %callback_data.addr, align 8
  call void %11(%struct._GtkWidget* %13, i8* %14)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_overlay_box_child_type(%struct._GtkContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  %call = call i64 @gtk_widget_get_type() #6
  ret i64 %call
}

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

declare void @gtk_widget_set_realized(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._GdkVisual* @gtk_widget_get_visual(%struct._GtkWidget*) #1

declare %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_events(%struct._GtkWidget*) #1

declare void @gtk_widget_set_window(%struct._GtkWidget*, %struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_parent_window(%struct._GtkWidget*) #1

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkDrawable* @gimp_overlay_box_pick_embedded_child(%struct._GdkDrawable* %parent, double %parent_x, double %parent_y, %struct._GimpOverlayBox* %box) #3 {
entry:
  %retval = alloca %struct._GdkDrawable*, align 8
  %parent.addr = alloca %struct._GdkDrawable*, align 8
  %parent_x.addr = alloca double, align 8
  %parent_y.addr = alloca double, align 8
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GdkDrawable* %parent, %struct._GdkDrawable** %parent.addr, align 8
  store double %parent_x, double* %parent_x.addr, align 8
  store double %parent_y, double* %parent_y.addr, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %5, %struct._GimpOverlayChild** %child, align 8
  %6 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %7 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %8 = load double, double* %parent_x.addr, align 8
  %9 = load double, double* %parent_y.addr, align 8
  %call = call i32 @gimp_overlay_child_pick(%struct._GimpOverlayBox* %6, %struct._GimpOverlayChild* %7, double %8, double %9)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %window = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  store %struct._GdkDrawable* %11, %struct._GdkDrawable** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %12, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %retval
  ret %struct._GdkDrawable* %15
}

declare void @gtk_widget_style_attach(%struct._GtkWidget*) #1

declare void @gtk_style_set_background(%struct._GtkStyle*, %struct._GdkDrawable*, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gimp_overlay_child_realize(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare i32 @gimp_overlay_child_pick(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*, double, double) #1

declare void @gimp_overlay_child_unrealize(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

declare void @gimp_overlay_child_size_request(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare void @gimp_overlay_child_size_allocate(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare i32 @gimp_overlay_child_expose(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*, %struct._GdkEventExpose*) #1

declare i32 @gimp_overlay_child_damage(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*, %struct._GdkEventExpose*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_overlay_child_free(%struct._GimpOverlayBox*, %struct._GimpOverlayChild*) #1

declare void @gtk_widget_set_has_window(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_double_buffered(%struct._GtkWidget*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

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
