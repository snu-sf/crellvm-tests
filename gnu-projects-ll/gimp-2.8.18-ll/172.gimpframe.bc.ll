; ModuleID = './libgimpwidgets/gimpframe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFrameClass = type { %struct._GtkFrameClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkFrameClass = type { %struct._GtkBinClass, void (%struct._GtkFrame*, %struct._GdkRectangle*)* }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpFrame = type { %struct._GtkFrame }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }

@gimp_frame_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpFrame\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<expander>\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"gimp-frame-in-expander\00", align 1
@gimp_frame_parent_class = internal global i8* null, align 8
@GimpFrame_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"label-bold\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"label-spacing\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"label_spacing\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-frame-indent\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"label_bold\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"notify::label-widget\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_frame_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_frame_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_frame_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_frame_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_frame_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFrame*)* @gimp_frame_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_frame_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_frame_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_frame_parent_class, align 8
  %1 = load i32, i32* @GimpFrame_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFrame_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFrameClass*
  call void @gimp_frame_class_init(%struct._GimpFrameClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_init(%struct._GimpFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GimpFrame*, align 8
  store %struct._GimpFrame* %frame, %struct._GimpFrame** %frame.addr, align 8
  %0 = load %struct._GimpFrame*, %struct._GimpFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpFrame* %0 to i8*
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFrame*)* @gimp_frame_label_widget_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_frame_new(i8* %label) #3 {
entry:
  %label.addr = alloca i8*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %expander = alloca i32, align 4
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %expander, align 4
  %0 = load i8*, i8** %label.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %label.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %expander, align 4
  store i8* null, i8** %label.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call1 = call i64 @gimp_frame_get_type() #5
  %2 = load i8*, i8** %label.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %2, i8* null)
  %3 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %frame, align 8
  %4 = load i32, i32* %expander, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %8
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_class_init(%struct._GimpFrameClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFrameClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpFrameClass* %klass, %struct._GimpFrameClass** %klass.addr, align 8
  %0 = load %struct._GimpFrameClass*, %struct._GimpFrameClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFrameClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_frame_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %4 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %4, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_frame_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %5 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_frame_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %6 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_frame_expose_event, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %7 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %7, %struct._GParamSpec* %call2)
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 6, i32 1)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %8, %struct._GParamSpec* %call3)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %frame = alloca %struct._GtkFrame*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  %indent = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_frame_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFrame*
  store %struct._GtkFrame* %2, %struct._GtkFrame** %frame, align 8
  %3 = load %struct._GtkFrame*, %struct._GtkFrame** %frame, align 8
  %call2 = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label_widget, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_bin_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBin*
  %call5 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %child, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %call6 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %10 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %9, %struct._GtkRequisition* %10)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %11, i32 0, i32 0
  store i32 0, i32* %width, align 4
  %12 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %12, i32 0, i32 1
  store i32 0, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GtkFrame*, %struct._GtkFrame** %frame, align 8
  %call8 = call i32 @gimp_frame_get_label_spacing(%struct._GtkFrame* %13)
  %14 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %14, i32 0, i32 1
  %15 = load i32, i32* %height9, align 4
  %add = add nsw i32 %15, %call8
  store i32 %add, i32* %height9, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.26

land.lhs.true.11:                                 ; preds = %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call12 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %land.lhs.true.11
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call i32 @gimp_frame_get_indent(%struct._GtkWidget* %18)
  store i32 %call15, i32* %indent, align 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %19, %struct._GtkRequisition* %child_requisition)
  %20 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width16 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %20, i32 0, i32 0
  %21 = load i32, i32* %width16, align 4
  %width17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %22 = load i32, i32* %width17, align 4
  %23 = load i32, i32* %indent, align 4
  %add18 = add nsw i32 %22, %23
  %cmp = icmp sgt i32 %21, %add18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %24 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %24, i32 0, i32 0
  %25 = load i32, i32* %width19, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %width20 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %26 = load i32, i32* %width20, align 4
  %27 = load i32, i32* %indent, align 4
  %add21 = add nsw i32 %26, %27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %add21, %cond.false ]
  %28 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width22 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %28, i32 0, i32 0
  store i32 %cond, i32* %width22, align 4
  %height23 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %29 = load i32, i32* %height23, align 4
  %30 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height24 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %30, i32 0, i32 1
  %31 = load i32, i32* %height24, align 4
  %add25 = add nsw i32 %31, %29
  store i32 %add25, i32* %height24, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end, %land.lhs.true.11, %if.end
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  %call29 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %34)
  store i32 %call29, i32* %border_width, align 4
  %35 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %35
  %36 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width30 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %36, i32 0, i32 0
  %37 = load i32, i32* %width30, align 4
  %add31 = add nsw i32 %37, %mul
  store i32 %add31, i32* %width30, align 4
  %38 = load i32, i32* %border_width, align 4
  %mul32 = mul nsw i32 2, %38
  %39 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height33 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %39, i32 0, i32 1
  %40 = load i32, i32* %height33, align 4
  %add34 = add nsw i32 %40, %mul32
  store i32 %add34, i32* %height33, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %frame = alloca %struct._GtkFrame*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %label_allocation = alloca %struct._GdkRectangle, align 4
  %label_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_frame_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFrame*
  store %struct._GtkFrame* %2, %struct._GtkFrame** %frame, align 8
  %3 = load %struct._GtkFrame*, %struct._GtkFrame** %frame, align 8
  %call2 = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label_widget, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_bin_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBin*
  %call5 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %child, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GtkFrame*, %struct._GtkFrame** %frame, align 8
  call void @gimp_frame_child_allocate(%struct._GtkFrame* %9, %struct._GdkRectangle* %child_allocation)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call6 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %12, %struct._GdkRectangle* %child_allocation)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.26

land.lhs.true.9:                                  ; preds = %if.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %call10 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %land.lhs.true.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %call15 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %17)
  store i32 %call15, i32* %border_width, align 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_widget_get_child_requisition(%struct._GtkWidget* %18, %struct._GtkRequisition* %label_requisition)
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 0
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %border_width, align 4
  %add = add nsw i32 %20, %21
  %x16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 0
  store i32 %add, i32* %x16, align 4
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 1
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %border_width, align 4
  %add17 = add nsw i32 %23, %24
  %y18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 1
  store i32 %add17, i32* %y18, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %label_requisition, i32 0, i32 0
  %25 = load i32, i32* %width, align 4
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i32 0, i32 2
  %27 = load i32, i32* %width19, align 4
  %28 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %28
  %sub = sub nsw i32 %27, %mul
  %cmp = icmp sgt i32 %25, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %width20 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %label_requisition, i32 0, i32 0
  %29 = load i32, i32* %width20, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 2
  %31 = load i32, i32* %width21, align 4
  %32 = load i32, i32* %border_width, align 4
  %mul22 = mul nsw i32 2, %32
  %sub23 = sub nsw i32 %31, %mul22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %sub23, %cond.false ]
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 2
  store i32 %cond, i32* %width24, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %label_requisition, i32 0, i32 1
  %33 = load i32, i32* %height, align 4
  %height25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 3
  store i32 %33, i32* %height25, align 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %34, %struct._GdkRectangle* %label_allocation)
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end, %land.lhs.true.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %previous) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %previous.addr = alloca %struct._GtkStyle*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %previous, %struct._GtkStyle** %previous.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gimp_frame_label_widget_notify(%struct._GtkFrame* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_frame_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @gimp_frame_parent_class, align 8
  %call1 = call i8* @g_type_class_peek_parent(i8* %1)
  %2 = bitcast i8* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 31
  %4 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call2 = call i32 %4(%struct._GtkWidget* %5, %struct._GdkEventExpose* %6)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_frame_get_label_spacing(%struct._GtkFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GtkFrame*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %spacing = alloca i32, align 4
  store %struct._GtkFrame* %frame, %struct._GtkFrame** %frame.addr, align 8
  %0 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label_widget, align 8
  store i32 0, i32* %spacing, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %call1 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %4 = bitcast %struct._GtkFrame* %3 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %7 = bitcast %struct._GtkFrame* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32* %spacing, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i32, i32* %spacing, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_frame_get_indent(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %layout = alloca %struct._PangoLayout*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %width, align 4
  %4 = load i32, i32* %width, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  store %struct._PangoLayout* %call2, %struct._PangoLayout** %layout, align 8
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %6, i32* %width, i32* null)
  %7 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %8 = bitcast %struct._PangoLayout* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %12 = load i32, i32* %width, align 4
  %conv4 = sext i32 %12 to i64
  %13 = inttoptr i64 %conv4 to i8*
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %width, align 4
  ret i32 %14
}

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_child_allocate(%struct._GtkFrame* %frame, %struct._GdkRectangle* %child_allocation) #3 {
entry:
  %frame.addr = alloca %struct._GtkFrame*, align 8
  %child_allocation.addr = alloca %struct._GdkRectangle*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %border_width = alloca i32, align 4
  %spacing = alloca i32, align 4
  %indent = alloca i32, align 4
  %child_requisition = alloca %struct._GtkRequisition, align 4
  store %struct._GtkFrame* %frame, %struct._GtkFrame** %frame.addr, align 8
  store %struct._GdkRectangle* %child_allocation, %struct._GdkRectangle** %child_allocation.addr, align 8
  %0 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %1 = bitcast %struct._GtkFrame* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label_widget, align 8
  store i32 0, i32* %spacing, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call3 = call i32 @gimp_frame_get_indent(%struct._GtkWidget* %4)
  store i32 %call3, i32* %indent, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %6 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %7 = bitcast %struct._GtkFrame* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %call6 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %8)
  store i32 %call6, i32* %border_width, align 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %call7 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_widget_get_child_requisition(%struct._GtkWidget* %11, %struct._GtkRequisition* %child_requisition)
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %12 = load i32, i32* %height, align 4
  %13 = load i32, i32* %spacing, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %spacing, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %call9 = call i32 @gimp_frame_get_label_spacing(%struct._GtkFrame* %14)
  %15 = load i32, i32* %spacing, align 4
  %add10 = add nsw i32 %15, %call9
  store i32 %add10, i32* %spacing, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call11 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %16)
  %cmp = icmp eq i32 %call11, 1
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %17 = load i32, i32* %border_width, align 4
  %18 = load i32, i32* %indent, align 4
  %add13 = add nsw i32 %17, %18
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 0
  store i32 %add13, i32* %x, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %border_width, align 4
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %x14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 0
  store i32 %20, i32* %x14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %22 = load i32, i32* %border_width, align 4
  %23 = load i32, i32* %spacing, align 4
  %add16 = add nsw i32 %22, %23
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 1
  store i32 %add16, i32* %y, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %26
  %sub = sub nsw i32 %25, %mul
  %27 = load i32, i32* %indent, align 4
  %sub17 = sub nsw i32 %sub, %27
  %cmp18 = icmp sgt i32 1, %sub17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %28 = load i32, i32* %width19, align 4
  %29 = load i32, i32* %border_width, align 4
  %mul20 = mul nsw i32 2, %29
  %sub21 = sub nsw i32 %28, %mul20
  %30 = load i32, i32* %indent, align 4
  %sub22 = sub nsw i32 %sub21, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %sub22, %cond.false ]
  %31 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %width23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %31, i32 0, i32 2
  store i32 %cond, i32* %width23, align 4
  %height24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height24, align 4
  %33 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %y25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %33, i32 0, i32 1
  %34 = load i32, i32* %y25, align 4
  %sub26 = sub nsw i32 %32, %34
  %35 = load i32, i32* %border_width, align 4
  %sub27 = sub nsw i32 %sub26, %35
  %cmp28 = icmp sgt i32 1, %sub27
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  br label %cond.end.35

cond.false.30:                                    ; preds = %cond.end
  %height31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %36 = load i32, i32* %height31, align 4
  %37 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %y32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %37, i32 0, i32 1
  %38 = load i32, i32* %y32, align 4
  %sub33 = sub nsw i32 %36, %38
  %39 = load i32, i32* %border_width, align 4
  %sub34 = sub nsw i32 %sub33, %39
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.30, %cond.true.29
  %cond36 = phi i32 [ 1, %cond.true.29 ], [ %sub34, %cond.false.30 ]
  %40 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %height37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %40, i32 0, i32 3
  store i32 %cond36, i32* %height37, align 4
  %x38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %41 = load i32, i32* %x38, align 4
  %42 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %x39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %42, i32 0, i32 0
  %43 = load i32, i32* %x39, align 4
  %add40 = add nsw i32 %43, %41
  store i32 %add40, i32* %x39, align 4
  %y41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %44 = load i32, i32* %y41, align 4
  %45 = load %struct._GdkRectangle*, %struct._GdkRectangle** %child_allocation.addr, align 8
  %y42 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %45, i32 0, i32 1
  %46 = load i32, i32* %y42, align 4
  %add43 = add nsw i32 %46, %44
  store i32 %add43, i32* %y42, align 4
  ret void
}

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_get_child_requisition(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_frame_label_widget_notify(%struct._GtkFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GtkFrame*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkLabel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xalign = alloca float, align 4
  %yalign = alloca float, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %__inst48 = alloca %struct._GTypeInstance*, align 8
  %__t50 = alloca i64, align 8
  %__r53 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %bold = alloca i32, align 4
  store %struct._GtkFrame* %frame, %struct._GtkFrame** %frame.addr, align 8
  %0 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label_widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end.87

if.then:                                          ; preds = %entry
  store %struct._GtkLabel* null, %struct._GtkLabel** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gtk_label_get_type() #5
  store i64 %call1, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #6
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_label_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkLabel*
  store %struct._GtkLabel* %17, %struct._GtkLabel** %label, align 8
  %18 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  call void @gtk_frame_get_label_align(%struct._GtkFrame* %18, float* %xalign, float* %yalign)
  %19 = load %struct._GtkLabel*, %struct._GtkLabel** %label, align 8
  %20 = bitcast %struct._GtkLabel* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_misc_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkMisc*
  %22 = load float, float* %xalign, align 4
  %23 = load float, float* %yalign, align 4
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %21, float %22, float %23)
  br label %if.end.75

if.else.18:                                       ; preds = %if.end.9
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_bin_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %26, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %if.else.18
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %28, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type33, align 8
  %32 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %31, %32
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %34 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %33, i64 %34) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %35 = load i32, i32* %__r25, align 4
  store i32 %35, i32* %tmp40
  %36 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %36, 0
  br i1 %tobool41, label %if.then.42, label %if.end.74

if.then.42:                                       ; preds = %if.end.39
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_bin_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call44)
  %39 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBin*
  %call46 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %39)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %child, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst48, align 8
  %call51 = call i64 @gtk_label_get_type() #5
  store i64 %call51, i64* %__t50, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %tobool54 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool54, label %if.else.56, label %if.then.55

if.then.55:                                       ; preds = %if.then.42
  store i32 0, i32* %__r53, align 4
  br label %if.end.67

if.else.56:                                       ; preds = %if.then.42
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %tobool58 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.64

land.lhs.true.59:                                 ; preds = %if.else.56
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %g_type61 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type61, align 8
  %48 = load i64, i64* %__t50, align 8
  %cmp62 = icmp eq i64 %47, %48
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %__r53, align 4
  br label %if.end.66

if.else.64:                                       ; preds = %land.lhs.true.59, %if.else.56
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %50 = load i64, i64* %__t50, align 8
  %call65 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call65, i32* %__r53, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  %51 = load i32, i32* %__r53, align 4
  store i32 %51, i32* %tmp68
  %52 = load i32, i32* %tmp68
  %tobool69 = icmp ne i32 %52, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.67
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_label_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call71)
  %55 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkLabel*
  store %struct._GtkLabel* %55, %struct._GtkLabel** %label, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.39
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.11
  %56 = load %struct._GtkLabel*, %struct._GtkLabel** %label, align 8
  %tobool76 = icmp ne %struct._GtkLabel* %56, null
  br i1 %tobool76, label %if.then.77, label %if.end.86

if.then.77:                                       ; preds = %if.end.75
  %call79 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call79, %struct._PangoAttrList** %attrs, align 8
  %57 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %58 = bitcast %struct._GtkFrame* %57 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_widget_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call82)
  %59 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32* %bold, i8* null)
  %60 = load i32, i32* %bold, align 4
  %tobool84 = icmp ne i32 %60, 0
  %cond = select i1 %tobool84, i32 700, i32 400
  %call85 = call %struct._PangoAttribute* @pango_attr_weight_new(i32 %cond)
  store %struct._PangoAttribute* %call85, %struct._PangoAttribute** %attr, align 8
  %61 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %61, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %62 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %62, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %63 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %64 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %63, %struct._PangoAttribute* %64)
  %65 = load %struct._GtkLabel*, %struct._GtkLabel** %label, align 8
  %66 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @gtk_label_set_attributes(%struct._GtkLabel* %65, %struct._PangoAttrList* %66)
  %67 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %67)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.77, %if.end.75
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @gtk_frame_get_label_align(%struct._GtkFrame*, float*, float*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_weight_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @gtk_label_set_attributes(%struct._GtkLabel*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
