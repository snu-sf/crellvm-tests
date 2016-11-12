; ModuleID = './libgimp/gimpprogressbar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProgressBarClass = type { %struct._GtkProgressBarClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkProgressBarClass = type { %struct._GtkProgressClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkProgressClass = type { %struct._GtkWidgetClass, void (%struct._GtkProgress*)*, void (%struct._GtkProgress*)*, void (%struct._GtkProgress*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpProgressBar = type { %struct._GtkProgressBar, i8*, i32 }
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GimpProgressVtable = type { void (i8*, i32, i8*)*, void (i8*)*, void (i8*, i8*)*, void (double, i8*)*, void (i8*)*, i32 (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }

@gimp_progress_bar_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpProgressBar\00", align 1
@gimp_progress_bar_parent_class = internal global i8* null, align 8
@GimpProgressBar_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_window_get_native_id = private unnamed_addr constant [26 x i8] c"gimp_window_get_native_id\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WINDOW (window)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_progress_bar_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_progress_bar_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_progress_bar_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_progress_bar_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_progress_bar_class_intern_init to void (i8*, i8*)*), i32 200, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProgressBar*)* @gimp_progress_bar_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_progress_bar_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_progress_bar_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_progress_bar_parent_class, align 8
  %1 = load i32, i32* @GimpProgressBar_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProgressBar_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProgressBarClass*
  call void @gimp_progress_bar_class_init(%struct._GimpProgressBarClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_init(%struct._GimpProgressBar* %bar) #3 {
entry:
  %bar.addr = alloca %struct._GimpProgressBar*, align 8
  %vtable = alloca %struct._GimpProgressVtable, align 8
  store %struct._GimpProgressBar* %bar, %struct._GimpProgressBar** %bar.addr, align 8
  %0 = bitcast %struct._GimpProgressVtable* %vtable to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 112, i32 8, i1 false)
  %1 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar.addr, align 8
  %2 = bitcast %struct._GimpProgressBar* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %4 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar.addr, align 8
  %5 = bitcast %struct._GimpProgressBar* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_ellipsize(%struct._GtkProgressBar* %6, i32 3)
  %start = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 0
  store void (i8*, i32, i8*)* @gimp_progress_bar_start, void (i8*, i32, i8*)** %start, align 8
  %end = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 1
  store void (i8*)* @gimp_progress_bar_end, void (i8*)** %end, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 2
  store void (i8*, i8*)* @gimp_progress_bar_set_text, void (i8*, i8*)** %set_text, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 3
  store void (double, i8*)* @gimp_progress_bar_set_value, void (double, i8*)** %set_value, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 4
  store void (i8*)* @gimp_progress_bar_pulse, void (i8*)** %pulse, align 8
  %get_window = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 5
  store i32 (i8*)* @gimp_progress_bar_get_window, i32 (i8*)** %get_window, align 8
  %7 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar.addr, align 8
  %8 = bitcast %struct._GimpProgressBar* %7 to i8*
  %call4 = call i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable* %vtable, i8* %8)
  %9 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar.addr, align 8
  %progress_callback = getelementptr inbounds %struct._GimpProgressBar, %struct._GimpProgressBar* %9, i32 0, i32 1
  store i8* %call4, i8** %progress_callback, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_progress_bar_new() #3 {
entry:
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_class_init(%struct._GimpProgressBarClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProgressBarClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpProgressBarClass* %klass, %struct._GimpProgressBarClass** %klass.addr, align 8
  %0 = load %struct._GimpProgressBarClass*, %struct._GimpProgressBarClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProgressBarClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_progress_bar_dispose, void (%struct._GObject*)** %dispose, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %progress_callback = getelementptr inbounds %struct._GimpProgressBar, %struct._GimpProgressBar* %3, i32 0, i32 1
  %4 = load i8*, i8** %progress_callback, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %progress_callback2 = getelementptr inbounds %struct._GimpProgressBar, %struct._GimpProgressBar* %5, i32 0, i32 1
  %6 = load i8*, i8** %progress_callback2, align 8
  %call3 = call i8* @gimp_progress_uninstall(i8* %6)
  %7 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %progress_callback4 = getelementptr inbounds %struct._GimpProgressBar, %struct._GimpProgressBar* %7, i32 0, i32 1
  store i8* null, i8** %progress_callback4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_progress_bar_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @gimp_progress_uninstall(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gtk_progress_bar_set_text(%struct._GtkProgressBar*, i8*) #1

declare void @gtk_progress_bar_set_ellipsize(%struct._GtkProgressBar*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_start(i8* %message, i32 %cancelable, i8* %user_data) #3 {
entry:
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %4 = bitcast %struct._GimpProgressBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  %6 = load i8*, i8** %message.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i8*, i8** %message.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %5, i8* %cond)
  %8 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %9 = bitcast %struct._GimpProgressBar* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %10, double 0.000000e+00)
  %11 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %12 = bitcast %struct._GimpProgressBar* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %13)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call10 = call i32 @gtk_events_pending()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_end(i8* %user_data) #3 {
entry:
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %4 = bitcast %struct._GimpProgressBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %6 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %7 = bitcast %struct._GimpProgressBar* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %8, double 0.000000e+00)
  %9 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %10 = bitcast %struct._GimpProgressBar* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %11)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call9 = call i32 @gtk_events_pending()
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call11 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_set_text(i8* %message, i8* %user_data) #3 {
entry:
  %message.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %4 = bitcast %struct._GimpProgressBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  %6 = load i8*, i8** %message.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i8*, i8** %message.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %5, i8* %cond)
  %8 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %9 = bitcast %struct._GimpProgressBar* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call8 = call i32 @gtk_events_pending()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call10 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_set_value(double %percentage, i8* %user_data) #3 {
entry:
  %percentage.addr = alloca double, align 8
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store double %percentage, double* %percentage.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load double, double* %percentage.addr, align 8
  %cmp = fcmp oge double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %5 = bitcast %struct._GimpProgressBar* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  %7 = load double, double* %percentage.addr, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %6, double %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %9 = bitcast %struct._GimpProgressBar* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %12 = bitcast %struct._GimpProgressBar* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %13)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %call10 = call i32 @gtk_events_pending()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.13

if.end.13:                                        ; preds = %while.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_bar_pulse(i8* %user_data) #3 {
entry:
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %4 = bitcast %struct._GimpProgressBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %5)
  %6 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %7 = bitcast %struct._GimpProgressBar* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call7 = call i32 @gtk_events_pending()
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call9 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_progress_bar_get_window(i8* %user_data) #3 {
entry:
  %retval = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %bar = alloca %struct._GimpProgressBar*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_bar_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressBar*
  store %struct._GimpProgressBar* %2, %struct._GimpProgressBar** %bar, align 8
  %3 = load %struct._GimpProgressBar*, %struct._GimpProgressBar** %bar, align 8
  %4 = bitcast %struct._GimpProgressBar* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %toplevel, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gtk_window_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  %call16 = call i32 @gimp_window_get_native_id(%struct._GtkWindow* %21)
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable*, i8*) #1

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gtk_events_pending() #1

declare i32 @gtk_main_iteration() #1

declare void @gtk_progress_bar_pulse(%struct._GtkProgressBar*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_window_get_native_id(%struct._GtkWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GtkWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %1 = bitcast %struct._GtkWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_window_get_native_id, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %tobool11 = icmp ne %struct._GtkWindow* %13, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %15 = bitcast %struct._GtkWindow* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %18 = bitcast %struct._GtkWindow* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  %call20 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %19)
  %call21 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call20)
  %conv = trunc i64 %call21 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.12, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.17, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
