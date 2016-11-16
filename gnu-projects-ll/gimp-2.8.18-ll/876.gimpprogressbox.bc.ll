; ModuleID = './app/widgets/gimpprogressbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProgressBoxClass = type { %struct._GtkBoxClass }
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
%struct._GimpProgressBox = type { %struct._GtkBox, i32, i32, double, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._Gimp = type opaque
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@gimp_progress_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpProgressBox\00", align 1
@gimp_progress_box_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_progress_box_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_progress_box_parent_class = internal global i8* null, align 8
@GimpProgressBox_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_progress_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_progress_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_progress_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_progress_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProgressBox*)* @gimp_progress_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #4
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_progress_box_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_progress_box_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_progress_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_progress_box_parent_class, align 8
  %1 = load i32, i32* @GimpProgressBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProgressBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProgressBoxClass*
  call void @gimp_progress_box_class_init(%struct._GimpProgressBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_init(%struct._GimpProgressBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpProgressBox*, align 8
  store %struct._GimpProgressBox* %box, %struct._GimpProgressBox** %box.addr, align 8
  %0 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %1 = bitcast %struct._GimpProgressBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %4 = bitcast %struct._GimpProgressBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 6)
  %call4 = call %struct._GtkWidget* @gtk_progress_bar_new()
  %6 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %progress = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %6, i32 0, i32 5
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %progress, align 8
  %7 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %progress5 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %progress5, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %8, i32 250, i32 20)
  %9 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %10 = bitcast %struct._GimpProgressBox* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %12 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %progress8 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %12, i32 0, i32 5
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %progress8, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %progress9 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %14, i32 0, i32 5
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %progress9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call10 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %16 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %16, i32 0, i32 4
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %label, align 8
  %17 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label11 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label11, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_label_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %20, i32 2)
  %21 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label14 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %21, i32 0, i32 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label14, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_misc_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %24, float 0.000000e+00, float 5.000000e-01)
  %25 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label17 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %25, i32 0, i32 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label17, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %28, i32 3, i32 2, i32 -1)
  %29 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %30 = bitcast %struct._GimpProgressBox* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %32 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label22 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label22, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box.addr, align 8
  %label23 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %34, i32 0, i32 4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_progress_box_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_progress_box_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_progress_box_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_progress_box_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_progress_box_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_progress_box_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_progress_box_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_progress_box_new() #3 {
entry:
  %call = call i64 @gimp_progress_box_get_type() #4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_class_init(%struct._GimpProgressBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProgressBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpProgressBoxClass* %klass, %struct._GimpProgressBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpProgressBoxClass*, %struct._GimpProgressBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProgressBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_progress_box_dispose, void (%struct._GObject*)** %dispose, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_box_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %2, %struct._GimpProgressBox** %box, align 8
  %3 = load i8*, i8** @gimp_progress_box_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 5
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %6(%struct._GObject* %7)
  %8 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %8, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %progress, align 8
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_progress_bar_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_progress_box_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %box = alloca %struct._GimpProgressBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_box_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %2, %struct._GimpProgressBox** %box, align 8
  %3 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress2 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %3, i32 0, i32 5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %5, i32 0, i32 1
  %6 = load i32, i32* %active, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.end.19, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress5 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %progress5, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_progress_bar_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %10, %struct._GtkProgressBar** %bar, align 8
  %11 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %label = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %15 = load i8*, i8** %message.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %14, i8* %15)
  %16 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %16, double 0.000000e+00)
  %17 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %active10 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %17, i32 0, i32 1
  store i32 1, i32* %active10, align 4
  %18 = load i32, i32* %cancelable.addr, align 4
  %19 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %cancelable11 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %19, i32 0, i32 2
  store i32 %18, i32* %cancelable11, align 4
  %20 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %value = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %20, i32 0, i32 3
  store double 0.000000e+00, double* %value, align 8
  %21 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress12 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %21, i32 0, i32 5
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %progress12, align 8
  %call13 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.4
  %23 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress16 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %23, i32 0, i32 5
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %progress16, align 8
  %call17 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %24)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call17, i32 1)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.4
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %25, %struct._GimpProgress** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.end.18, %if.then
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %26
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %3, %struct._GimpProgressBox** %box, align 8
  %4 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %4, i32 0, i32 5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %label = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %12 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %12, double 0.000000e+00)
  %13 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %13, i32 0, i32 1
  store i32 0, i32* %active, align 4
  %14 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %cancelable = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %14, i32 0, i32 2
  store i32 0, i32* %cancelable, align 4
  %15 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %value = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %15, i32 0, i32 3
  store double 0.000000e+00, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_box_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %2, %struct._GimpProgressBox** %box, align 8
  %3 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress2 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %3, i32 0, i32 5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %5, i32 0, i32 1
  %6 = load i32, i32* %active, align 4
  %tobool3 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %3, %struct._GimpProgressBox** %box, align 8
  %4 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %label = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_label_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  %8 = load i8*, i8** %message.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %7, i8* %8)
  %9 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress5 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %9, i32 0, i32 5
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %progress5, align 8
  %call6 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress9 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %11, i32 0, i32 5
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %progress9, align 8
  %call10 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call10, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %3, %struct._GimpProgressBox** %box, align 8
  %4 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %4, i32 0, i32 5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  %9 = bitcast %struct._GtkProgressBar* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %10, %struct._GdkRectangle* %allocation)
  %11 = load double, double* %percentage.addr, align 8
  %12 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %value = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %12, i32 0, i32 3
  store double %11, double* %value, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv = sitofp i32 %13 to double
  %14 = load double, double* %percentage.addr, align 8
  %15 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  %call8 = call double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar* %15)
  %sub = fsub double %14, %call8
  %mul = fmul double %conv, %sub
  %call9 = call double @fabs(double %mul) #4
  %cmp = fcmp ogt double %call9, 1.000000e+00
  br i1 %cmp, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.then
  %16 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  %17 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %value12 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %17, i32 0, i32 3
  %18 = load double, double* %value12, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %16, double %18)
  %19 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress13 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %progress13, align 8
  %call14 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %20)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.11
  %21 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress17 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %21, i32 0, i32 5
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %progress17, align 8
  %call18 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %22)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call18, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_progress_box_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgressBox*
  %value = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %3, i32 0, i32 3
  %4 = load double, double* %value, align 8
  store double %4, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load double, double* %retval
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_box_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpProgressBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_progress_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgressBox*
  store %struct._GimpProgressBox* %3, %struct._GimpProgressBox** %box, align 8
  %4 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %4, i32 0, i32 5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %8)
  %9 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress6 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %9, i32 0, i32 5
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %progress6, align 8
  %call7 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load %struct._GimpProgressBox*, %struct._GimpProgressBox** %box, align 8
  %progress10 = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %11, i32 0, i32 5
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %progress10, align 8
  %call11 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar*) #1

declare void @gtk_progress_bar_pulse(%struct._GtkProgressBar*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
