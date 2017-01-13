; ModuleID = './app/widgets/gimpoverlayframe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOverlayFrameClass = type { %struct._GtkBinClass }
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
%struct._GimpOverlayFrame = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._cairo = type opaque

@gimp_overlay_frame_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpOverlayFrame\00", align 1
@gimp_overlay_frame_parent_class = internal global i8* null, align 8
@GimpOverlayFrame_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_overlay_frame_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_overlay_frame_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_overlay_frame_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_bin_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_overlay_frame_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOverlayFrame*)* @gimp_overlay_frame_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_overlay_frame_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_overlay_frame_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_frame_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_overlay_frame_parent_class, align 8
  %1 = load i32, i32* @GimpOverlayFrame_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOverlayFrame_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOverlayFrameClass*
  call void @gimp_overlay_frame_class_init(%struct._GimpOverlayFrameClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_frame_init(%struct._GimpOverlayFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GimpOverlayFrame*, align 8
  store %struct._GimpOverlayFrame* %frame, %struct._GimpOverlayFrame** %frame.addr, align 8
  %0 = load %struct._GimpOverlayFrame*, %struct._GimpOverlayFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpOverlayFrame* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_app_paintable(%struct._GtkWidget* %2, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_overlay_frame_new() #3 {
entry:
  %call = call i64 @gimp_overlay_frame_get_type() #4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_frame_class_init(%struct._GimpOverlayFrameClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOverlayFrameClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpOverlayFrameClass* %klass, %struct._GimpOverlayFrameClass** %klass.addr, align 8
  %0 = load %struct._GimpOverlayFrameClass*, %struct._GimpOverlayFrameClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOverlayFrameClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_overlay_frame_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %4 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %4, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_overlay_frame_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %5 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_overlay_frame_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_frame_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %child, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %5)
  store i32 %call5, i32* %border_width, align 4
  %6 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 %6, 2
  %7 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %7, i32 0, i32 0
  store i32 %mul, i32* %width, align 4
  %8 = load i32, i32* %border_width, align 4
  %mul6 = mul nsw i32 %8, 2
  %9 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %9, i32 0, i32 1
  store i32 %mul6, i32* %height, align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call7 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %12, %struct._GtkRequisition* %child_requisition)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %width9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  store i32 0, i32* %width9, align 4
  %height10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  store i32 0, i32* %height10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %13 = load i32, i32* %width11, align 4
  %14 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %14, i32 0, i32 0
  %15 = load i32, i32* %width12, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %width12, align 4
  %height13 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %16 = load i32, i32* %height13, align 4
  %17 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %17, i32 0, i32 1
  %18 = load i32, i32* %height14, align 4
  %add15 = add nsw i32 %18, %16
  store i32 %add15, i32* %height14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_frame_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %child, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %7)
  store i32 %call5, i32* %border_width, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call6 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i32 0, i32 0
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %border_width, align 4
  %add = add nsw i32 %11, %12
  %x8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %add, i32* %x8, align 4
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %border_width, align 4
  %add9 = add nsw i32 %14, %15
  %y10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 %add9, i32* %y10, align 4
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %18
  %sub = sub nsw i32 %17, %mul
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 2
  %20 = load i32, i32* %width11, align 4
  %21 = load i32, i32* %border_width, align 4
  %mul12 = mul nsw i32 2, %21
  %sub13 = sub nsw i32 %20, %mul12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub13, %cond.true ], [ 0, %cond.false ]
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %cond, i32* %width14, align 4
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 3
  %23 = load i32, i32* %height, align 4
  %24 = load i32, i32* %border_width, align 4
  %mul15 = mul nsw i32 2, %24
  %sub16 = sub nsw i32 %23, %mul15
  %cmp17 = icmp sgt i32 %sub16, 0
  br i1 %cmp17, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %cond.end
  %25 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %25, i32 0, i32 3
  %26 = load i32, i32* %height19, align 4
  %27 = load i32, i32* %border_width, align 4
  %mul20 = mul nsw i32 2, %27
  %sub21 = sub nsw i32 %26, %mul20
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.18
  %cond24 = phi i32 [ %sub21, %cond.true.18 ], [ 0, %cond.false.22 ]
  %height25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %cond24, i32* %height25, align 4
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %28, %struct._GdkRectangle* %child_allocation)
  br label %if.end

if.end:                                           ; preds = %cond.end.23, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_overlay_frame_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %rgba = alloca i32, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  %call4 = call %struct._GdkColormap* @gdk_screen_get_rgba_colormap(%struct._GdkScreen* %call3)
  %cmp = icmp ne %struct._GdkColormap* %call4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rgba, align 4
  %3 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %4 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %4, i32 0, i32 4
  %5 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %3, %struct._GdkRegion* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %6)
  %7 = load i32, i32* %rgba, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_operator(%struct._cairo* %8, i32 0)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_operator(%struct._cairo* %10, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %11, %struct._GdkRectangle* %allocation)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %call7 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %14)
  store i32 %call7, i32* %border_width, align 4
  %15 = load i32, i32* %rgba, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = load i32, i32* %border_width, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load i32, i32* %border_width, align 4
  %conv12 = sitofp i32 %18 to double
  %19 = load i32, i32* %border_width, align 4
  %conv13 = sitofp i32 %19 to double
  %20 = load i32, i32* %border_width, align 4
  %conv14 = sitofp i32 %20 to double
  call void @cairo_arc(%struct._cairo* %17, double %conv12, double %conv13, double %conv14, double 0x400921FB54442D18, double 0x4012D97C7F3321D2)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %border_width, align 4
  %sub = sub nsw i32 %22, %23
  %conv15 = sitofp i32 %sub to double
  call void @cairo_line_to(%struct._cairo* %21, double %conv15, double 0.000000e+00)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %25 = load i32, i32* %width16, align 4
  %26 = load i32, i32* %border_width, align 4
  %sub17 = sub nsw i32 %25, %26
  %conv18 = sitofp i32 %sub17 to double
  %27 = load i32, i32* %border_width, align 4
  %conv19 = sitofp i32 %27 to double
  %28 = load i32, i32* %border_width, align 4
  %conv20 = sitofp i32 %28 to double
  call void @cairo_arc(%struct._cairo* %24, double %conv18, double %conv19, double %conv20, double 0x4012D97C7F3321D2, double 0.000000e+00)
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width21, align 4
  %conv22 = sitofp i32 %30 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height, align 4
  %32 = load i32, i32* %border_width, align 4
  %sub23 = sub nsw i32 %31, %32
  %conv24 = sitofp i32 %sub23 to double
  call void @cairo_line_to(%struct._cairo* %29, double %conv22, double %conv24)
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %34 = load i32, i32* %width25, align 4
  %35 = load i32, i32* %border_width, align 4
  %sub26 = sub nsw i32 %34, %35
  %conv27 = sitofp i32 %sub26 to double
  %height28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %36 = load i32, i32* %height28, align 4
  %37 = load i32, i32* %border_width, align 4
  %sub29 = sub nsw i32 %36, %37
  %conv30 = sitofp i32 %sub29 to double
  %38 = load i32, i32* %border_width, align 4
  %conv31 = sitofp i32 %38 to double
  call void @cairo_arc(%struct._cairo* %33, double %conv27, double %conv30, double %conv31, double 0.000000e+00, double 0x3FF921FB54442D18)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %40 = load i32, i32* %border_width, align 4
  %conv32 = sitofp i32 %40 to double
  %height33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %41 = load i32, i32* %height33, align 4
  %conv34 = sitofp i32 %41 to double
  call void @cairo_line_to(%struct._cairo* %39, double %conv32, double %conv34)
  %42 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %43 = load i32, i32* %border_width, align 4
  %conv35 = sitofp i32 %43 to double
  %height36 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %44 = load i32, i32* %height36, align 4
  %45 = load i32, i32* %border_width, align 4
  %sub37 = sub nsw i32 %44, %45
  %conv38 = sitofp i32 %sub37 to double
  %46 = load i32, i32* %border_width, align 4
  %conv39 = sitofp i32 %46 to double
  call void @cairo_arc(%struct._cairo* %42, double %conv35, double %conv38, double %conv39, double 0x3FF921FB54442D18, double 0x400921FB54442D18)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_close_path(%struct._cairo* %47)
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %if.end
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %49 = load i32, i32* %width40, align 4
  %conv41 = sitofp i32 %49 to double
  %height42 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %50 = load i32, i32* %height42, align 4
  %conv43 = sitofp i32 %50 to double
  call void @cairo_rectangle(%struct._cairo* %48, double 0.000000e+00, double 0.000000e+00, double %conv41, double %conv43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.11
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip_preserve(%struct._cairo* %51)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %53 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %53, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %52, %struct._GdkColor* %arrayidx)
  %54 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %54)
  %55 = load i32, i32* %border_width, align 4
  %cmp45 = icmp sgt i32 %55, 0
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %56, double 2.000000e+00)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %58 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %58, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %57, %struct._GdkColor* %arrayidx48)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %59)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.44
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %60)
  %61 = load i8*, i8** @gimp_overlay_frame_parent_class, align 8
  %62 = bitcast i8* %61 to %struct._GTypeClass*
  %call50 = call i64 @gtk_widget_get_type() #4
  %call51 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %62, i64 %call50)
  %63 = bitcast %struct._GTypeClass* %call51 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %63, i32 0, i32 31
  %64 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %66 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %call52 = call i32 %64(%struct._GtkWidget* %65, %struct._GdkEventExpose* %66)
  ret i32 %call52
}

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GdkColormap* @gdk_screen_get_rgba_colormap(%struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_operator(%struct._cairo*, i32) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_close_path(%struct._cairo*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_clip_preserve(%struct._cairo*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_widget_set_app_paintable(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
