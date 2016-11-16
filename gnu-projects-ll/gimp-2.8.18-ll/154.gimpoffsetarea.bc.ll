; ModuleID = './libgimpwidgets/gimpoffsetarea.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOffsetAreaClass = type { %struct._GtkDrawingAreaClass, void (%struct._GimpOffsetArea*, i32, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDrawingAreaClass = type { %struct._GtkWidgetClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpOffsetArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, double, double }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkPixbuf = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GdkCursor = type { i32, i32 }
%struct._cairo = type opaque

@gimp_offset_area_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpOffsetArea\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_offset_area_new = private unnamed_addr constant [21 x i8] c"gimp_offset_area_new\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"orig_width > 0\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"orig_height > 0\00", align 1
@__func__.gimp_offset_area_set_pixbuf = private unnamed_addr constant [28 x i8] c"gimp_offset_area_set_pixbuf\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_IS_OFFSET_AREA (area)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@__func__.gimp_offset_area_set_size = private unnamed_addr constant [26 x i8] c"gimp_offset_area_set_size\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@gimp_offset_area_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_offset_area_set_offsets = private unnamed_addr constant [29 x i8] c"gimp_offset_area_set_offsets\00", align 1
@gimp_offset_area_parent_class = internal global i8* null, align 8
@GimpOffsetArea_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"offsets-changed\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"pixbuf-copy\00", align 1
@gimp_offset_area_event.orig_offset_x = internal global i32 0, align 4
@gimp_offset_area_event.orig_offset_y = internal global i32 0, align 4
@gimp_offset_area_event.start_x = internal global i32 0, align 4
@gimp_offset_area_event.start_y = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_offset_area_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_offset_area_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_offset_area_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_drawing_area_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 792, void (i8*, i8*)* bitcast (void (i8*)* @gimp_offset_area_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOffsetArea*)* @gimp_offset_area_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_offset_area_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_offset_area_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_offset_area_parent_class, align 8
  %1 = load i32, i32* @GimpOffsetArea_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOffsetArea_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOffsetAreaClass*
  call void @gimp_offset_area_class_init(%struct._GimpOffsetAreaClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_init(%struct._GimpOffsetArea* %area) #3 {
entry:
  %area.addr = alloca %struct._GimpOffsetArea*, align 8
  store %struct._GimpOffsetArea* %area, %struct._GimpOffsetArea** %area.addr, align 8
  %0 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %0, i32 0, i32 1
  store i32 0, i32* %orig_width, align 4
  %1 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %1, i32 0, i32 2
  store i32 0, i32* %orig_height, align 4
  %2 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %2, i32 0, i32 3
  store i32 0, i32* %width, align 4
  %3 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %3, i32 0, i32 4
  store i32 0, i32* %height, align 4
  %4 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %4, i32 0, i32 5
  store i32 0, i32* %offset_x, align 4
  %5 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %5, i32 0, i32 6
  store i32 0, i32* %offset_y, align 4
  %6 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %display_ratio_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %6, i32 0, i32 7
  store double 1.000000e+00, double* %display_ratio_x, align 8
  %7 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %display_ratio_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %7, i32 0, i32 8
  store double 1.000000e+00, double* %display_ratio_y, align 8
  %8 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %9 = bitcast %struct._GimpOffsetArea* %8 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %10, i32 800)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_offset_area_new(i32 %orig_width, i32 %orig_height) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orig_width.addr = alloca i32, align 4
  %orig_height.addr = alloca i32, align 4
  %area = alloca %struct._GimpOffsetArea*, align 8
  store i32 %orig_width, i32* %orig_width.addr, align 4
  store i32 %orig_height, i32* %orig_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %orig_width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_offset_area_new, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %orig_height.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_offset_area_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call i64 @gimp_offset_area_get_type() #5
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %2 = bitcast i8* %call7 to %struct._GimpOffsetArea*
  store %struct._GimpOffsetArea* %2, %struct._GimpOffsetArea** %area, align 8
  %3 = load i32, i32* %orig_width.addr, align 4
  %4 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %4, i32 0, i32 3
  store i32 %3, i32* %width, align 4
  %5 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width8 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %5, i32 0, i32 1
  store i32 %3, i32* %orig_width8, align 4
  %6 = load i32, i32* %orig_height.addr, align 4
  %7 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %7, i32 0, i32 4
  store i32 %6, i32* %height, align 4
  %8 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height9 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %8, i32 0, i32 2
  store i32 %6, i32* %orig_height9, align 4
  %9 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  call void @gimp_offset_area_resize(%struct._GimpOffsetArea* %9)
  %10 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %11 = bitcast %struct._GimpOffsetArea* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_resize(%struct._GimpOffsetArea* %area) #3 {
entry:
  %area.addr = alloca %struct._GimpOffsetArea*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ratio = alloca double, align 8
  store %struct._GimpOffsetArea* %area, %struct._GimpOffsetArea** %area.addr, align 8
  %0 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %0, i32 0, i32 1
  %1 = load i32, i32* %orig_width, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %2, i32 0, i32 2
  %3 = load i32, i32* %orig_height, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width2 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %4, i32 0, i32 1
  %5 = load i32, i32* %orig_width2, align 4
  %6 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %6, i32 0, i32 3
  %7 = load i32, i32* %width3, align 4
  %cmp4 = icmp sle i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %8, i32 0, i32 3
  %9 = load i32, i32* %width6, align 4
  store i32 %9, i32* %width, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %10 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width7 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %10, i32 0, i32 1
  %11 = load i32, i32* %orig_width7, align 4
  %mul = mul nsw i32 %11, 2
  %12 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width8 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %12, i32 0, i32 3
  %13 = load i32, i32* %width8, align 4
  %sub = sub nsw i32 %mul, %13
  store i32 %sub, i32* %width, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %14 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height10 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %14, i32 0, i32 2
  %15 = load i32, i32* %orig_height10, align 4
  %16 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %16, i32 0, i32 4
  %17 = load i32, i32* %height11, align 4
  %cmp12 = icmp sle i32 %15, %17
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.9
  %18 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height14 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %18, i32 0, i32 4
  %19 = load i32, i32* %height14, align 4
  store i32 %19, i32* %height, align 4
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.9
  %20 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height16 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %20, i32 0, i32 2
  %21 = load i32, i32* %orig_height16, align 4
  %mul17 = mul nsw i32 %21, 2
  %22 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height18 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %22, i32 0, i32 4
  %23 = load i32, i32* %height18, align 4
  %sub19 = sub nsw i32 %mul17, %23
  store i32 %sub19, i32* %height, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.13
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %cmp21 = icmp sgt i32 %24, %25
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %26 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %27 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %conv = sitofp i32 %cond to double
  %div = fdiv double 2.000000e+02, %conv
  store double %div, double* %ratio, align 8
  %28 = load double, double* %ratio, align 8
  %29 = load i32, i32* %width, align 4
  %conv22 = sitofp i32 %29 to double
  %mul23 = fmul double %28, %conv22
  %conv24 = fptosi double %mul23 to i32
  store i32 %conv24, i32* %width, align 4
  %30 = load double, double* %ratio, align 8
  %31 = load i32, i32* %height, align 4
  %conv25 = sitofp i32 %31 to double
  %mul26 = fmul double %30, %conv25
  %conv27 = fptosi double %mul26 to i32
  store i32 %conv27, i32* %height, align 4
  %32 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %33 = bitcast %struct._GimpOffsetArea* %32 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %34, i32 %35, i32 %36)
  %37 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %38 = bitcast %struct._GimpOffsetArea* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %39)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_offset_area_set_pixbuf(%struct._GimpOffsetArea* %area, %struct._GdkPixbuf* %pixbuf) #3 {
entry:
  %area.addr = alloca %struct._GimpOffsetArea*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpOffsetArea* %area, %struct._GimpOffsetArea** %area.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %1 = bitcast %struct._GimpOffsetArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_offset_area_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_offset_area_set_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %14 = bitcast %struct._GdkPixbuf* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gdk_pixbuf_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_offset_area_set_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %27 = bitcast %struct._GimpOffsetArea* %26 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call40 = call %struct._GdkPixbuf* @gdk_pixbuf_copy(%struct._GdkPixbuf* %29)
  %30 = bitcast %struct._GdkPixbuf* %call40 to i8*
  call void @g_object_set_data_full(%struct._GObject* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %30, void (i8*)* @g_object_unref)
  %31 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %32 = bitcast %struct._GimpOffsetArea* %31 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_widget_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call41)
  %33 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %33)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_copy(%struct._GdkPixbuf*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_offset_area_set_size(%struct._GimpOffsetArea* %area, i32 %width, i32 %height) #3 {
entry:
  %area.addr = alloca %struct._GimpOffsetArea*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpOffsetArea* %area, %struct._GimpOffsetArea** %area.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %1 = bitcast %struct._GimpOffsetArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_offset_area_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_offset_area_set_size, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.118

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sgt i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_offset_area_set_size, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.118

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width19 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %15, i32 0, i32 3
  %16 = load i32, i32* %width19, align 4
  %17 = load i32, i32* %width.addr, align 4
  %cmp20 = icmp ne i32 %16, %17
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %18 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height21 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %18, i32 0, i32 4
  %19 = load i32, i32* %height21, align 4
  %20 = load i32, i32* %height.addr, align 4
  %cmp22 = icmp ne i32 %19, %20
  br i1 %cmp22, label %if.then.23, label %if.end.118

if.then.23:                                       ; preds = %lor.lhs.false, %do.end.18
  %21 = load i32, i32* %width.addr, align 4
  %22 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width26 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %22, i32 0, i32 3
  store i32 %21, i32* %width26, align 4
  %23 = load i32, i32* %height.addr, align 4
  %24 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height27 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %24, i32 0, i32 4
  store i32 %23, i32* %height27, align 4
  %25 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %25, i32 0, i32 1
  %26 = load i32, i32* %orig_width, align 4
  %27 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width28 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %27, i32 0, i32 3
  %28 = load i32, i32* %width28, align 4
  %cmp29 = icmp sle i32 %26, %28
  br i1 %cmp29, label %if.then.30, label %if.else.45

if.then.30:                                       ; preds = %if.then.23
  %29 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x31 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %29, i32 0, i32 5
  %30 = load i32, i32* %offset_x31, align 4
  %31 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width32 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %31, i32 0, i32 3
  %32 = load i32, i32* %width32, align 4
  %33 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width33 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %33, i32 0, i32 1
  %34 = load i32, i32* %orig_width33, align 4
  %sub = sub nsw i32 %32, %34
  %cmp34 = icmp sgt i32 %30, %sub
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %35 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width35 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %35, i32 0, i32 3
  %36 = load i32, i32* %width35, align 4
  %37 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width36 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %37, i32 0, i32 1
  %38 = load i32, i32* %orig_width36, align 4
  %sub37 = sub nsw i32 %36, %38
  br label %cond.end.43

cond.false:                                       ; preds = %if.then.30
  %39 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x38 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %39, i32 0, i32 5
  %40 = load i32, i32* %offset_x38, align 4
  %cmp39 = icmp slt i32 %40, 0
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false
  %41 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x42 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %41, i32 0, i32 5
  %42 = load i32, i32* %offset_x42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.40
  %cond = phi i32 [ 0, %cond.true.40 ], [ %42, %cond.false.41 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true
  %cond44 = phi i32 [ %sub37, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond44, i32* %offset_x, align 4
  br label %if.end.65

if.else.45:                                       ; preds = %if.then.23
  %43 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x46 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %43, i32 0, i32 5
  %44 = load i32, i32* %offset_x46, align 4
  %cmp47 = icmp sgt i32 %44, 0
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.else.45
  br label %cond.end.63

cond.false.49:                                    ; preds = %if.else.45
  %45 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x50 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %45, i32 0, i32 5
  %46 = load i32, i32* %offset_x50, align 4
  %47 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width51 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %47, i32 0, i32 3
  %48 = load i32, i32* %width51, align 4
  %49 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width52 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %49, i32 0, i32 1
  %50 = load i32, i32* %orig_width52, align 4
  %sub53 = sub nsw i32 %48, %50
  %cmp54 = icmp slt i32 %46, %sub53
  br i1 %cmp54, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %cond.false.49
  %51 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width56 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %51, i32 0, i32 3
  %52 = load i32, i32* %width56, align 4
  %53 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width57 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %53, i32 0, i32 1
  %54 = load i32, i32* %orig_width57, align 4
  %sub58 = sub nsw i32 %52, %54
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.false.49
  %55 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x60 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %55, i32 0, i32 5
  %56 = load i32, i32* %offset_x60, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.55
  %cond62 = phi i32 [ %sub58, %cond.true.55 ], [ %56, %cond.false.59 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.48
  %cond64 = phi i32 [ 0, %cond.true.48 ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %offset_x, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %cond.end.63, %cond.end.43
  %57 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %57, i32 0, i32 2
  %58 = load i32, i32* %orig_height, align 4
  %59 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height66 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %59, i32 0, i32 4
  %60 = load i32, i32* %height66, align 4
  %cmp67 = icmp sle i32 %58, %60
  br i1 %cmp67, label %if.then.68, label %if.else.88

if.then.68:                                       ; preds = %if.end.65
  %61 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y69 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %61, i32 0, i32 6
  %62 = load i32, i32* %offset_y69, align 4
  %63 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height70 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %63, i32 0, i32 4
  %64 = load i32, i32* %height70, align 4
  %65 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height71 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %65, i32 0, i32 2
  %66 = load i32, i32* %orig_height71, align 4
  %sub72 = sub nsw i32 %64, %66
  %cmp73 = icmp sgt i32 %62, %sub72
  br i1 %cmp73, label %cond.true.74, label %cond.false.78

cond.true.74:                                     ; preds = %if.then.68
  %67 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height75 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %67, i32 0, i32 4
  %68 = load i32, i32* %height75, align 4
  %69 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height76 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %69, i32 0, i32 2
  %70 = load i32, i32* %orig_height76, align 4
  %sub77 = sub nsw i32 %68, %70
  br label %cond.end.86

cond.false.78:                                    ; preds = %if.then.68
  %71 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y79 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %71, i32 0, i32 6
  %72 = load i32, i32* %offset_y79, align 4
  %cmp80 = icmp slt i32 %72, 0
  br i1 %cmp80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.false.78
  br label %cond.end.84

cond.false.82:                                    ; preds = %cond.false.78
  %73 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y83 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %73, i32 0, i32 6
  %74 = load i32, i32* %offset_y83, align 4
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %cond85 = phi i32 [ 0, %cond.true.81 ], [ %74, %cond.false.82 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true.74
  %cond87 = phi i32 [ %sub77, %cond.true.74 ], [ %cond85, %cond.end.84 ]
  store i32 %cond87, i32* %offset_y, align 4
  br label %if.end.108

if.else.88:                                       ; preds = %if.end.65
  %75 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y89 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %75, i32 0, i32 6
  %76 = load i32, i32* %offset_y89, align 4
  %cmp90 = icmp sgt i32 %76, 0
  br i1 %cmp90, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %if.else.88
  br label %cond.end.106

cond.false.92:                                    ; preds = %if.else.88
  %77 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y93 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %77, i32 0, i32 6
  %78 = load i32, i32* %offset_y93, align 4
  %79 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height94 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %79, i32 0, i32 4
  %80 = load i32, i32* %height94, align 4
  %81 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height95 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %81, i32 0, i32 2
  %82 = load i32, i32* %orig_height95, align 4
  %sub96 = sub nsw i32 %80, %82
  %cmp97 = icmp slt i32 %78, %sub96
  br i1 %cmp97, label %cond.true.98, label %cond.false.102

cond.true.98:                                     ; preds = %cond.false.92
  %83 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height99 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %83, i32 0, i32 4
  %84 = load i32, i32* %height99, align 4
  %85 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height100 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %85, i32 0, i32 2
  %86 = load i32, i32* %orig_height100, align 4
  %sub101 = sub nsw i32 %84, %86
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.false.92
  %87 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y103 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %87, i32 0, i32 6
  %88 = load i32, i32* %offset_y103, align 4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.98
  %cond105 = phi i32 [ %sub101, %cond.true.98 ], [ %88, %cond.false.102 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.91
  %cond107 = phi i32 [ 0, %cond.true.91 ], [ %cond105, %cond.end.104 ]
  store i32 %cond107, i32* %offset_y, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.106, %cond.end.86
  %89 = load i32, i32* %offset_x, align 4
  %90 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x109 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %90, i32 0, i32 5
  %91 = load i32, i32* %offset_x109, align 4
  %cmp110 = icmp ne i32 %89, %91
  br i1 %cmp110, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.end.108
  %92 = load i32, i32* %offset_y, align 4
  %93 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y112 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %93, i32 0, i32 6
  %94 = load i32, i32* %offset_y112, align 4
  %cmp113 = icmp ne i32 %92, %94
  br i1 %cmp113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %lor.lhs.false.111, %if.end.108
  %95 = load i32, i32* %offset_x, align 4
  %96 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x115 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %96, i32 0, i32 5
  store i32 %95, i32* %offset_x115, align 4
  %97 = load i32, i32* %offset_y, align 4
  %98 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y116 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %98, i32 0, i32 6
  store i32 %97, i32* %offset_y116, align 4
  %99 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %100 = bitcast %struct._GimpOffsetArea* %99 to i8*
  %101 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_offset_area_signals, i32 0, i64 0), align 4
  %102 = load i32, i32* %offset_x, align 4
  %103 = load i32, i32* %offset_y, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %100, i32 %101, i32 0, i32 %102, i32 %103)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %lor.lhs.false.111
  %104 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  call void @gimp_offset_area_resize(%struct._GimpOffsetArea* %104)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.9, %if.else.16, %if.end.117, %lor.lhs.false
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_offset_area_set_offsets(%struct._GimpOffsetArea* %area, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %area.addr = alloca %struct._GimpOffsetArea*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOffsetArea* %area, %struct._GimpOffsetArea** %area.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %1 = bitcast %struct._GimpOffsetArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_offset_area_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_offset_area_set_offsets, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.89

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x11 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %13, i32 0, i32 5
  %14 = load i32, i32* %offset_x11, align 4
  %15 = load i32, i32* %offset_x.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y13 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %16, i32 0, i32 6
  %17 = load i32, i32* %offset_y13, align 4
  %18 = load i32, i32* %offset_y.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.89

if.then.15:                                       ; preds = %lor.lhs.false, %do.end
  %19 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %19, i32 0, i32 1
  %20 = load i32, i32* %orig_width, align 4
  %21 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %21, i32 0, i32 3
  %22 = load i32, i32* %width, align 4
  %cmp16 = icmp sle i32 %20, %22
  br i1 %cmp16, label %if.then.17, label %if.else.30

if.then.17:                                       ; preds = %if.then.15
  %23 = load i32, i32* %offset_x.addr, align 4
  %24 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width18 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %24, i32 0, i32 3
  %25 = load i32, i32* %width18, align 4
  %26 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width19 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %26, i32 0, i32 1
  %27 = load i32, i32* %orig_width19, align 4
  %sub = sub nsw i32 %25, %27
  %cmp20 = icmp sgt i32 %23, %sub
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %28 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width21 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %28, i32 0, i32 3
  %29 = load i32, i32* %width21, align 4
  %30 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width22 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %30, i32 0, i32 1
  %31 = load i32, i32* %orig_width22, align 4
  %sub23 = sub nsw i32 %29, %31
  br label %cond.end.27

cond.false:                                       ; preds = %if.then.17
  %32 = load i32, i32* %offset_x.addr, align 4
  %cmp24 = icmp slt i32 %32, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %33 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi i32 [ 0, %cond.true.25 ], [ %33, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ %sub23, %cond.true ], [ %cond, %cond.end ]
  %34 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x29 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %34, i32 0, i32 5
  store i32 %cond28, i32* %offset_x29, align 4
  br label %if.end.48

if.else.30:                                       ; preds = %if.then.15
  %35 = load i32, i32* %offset_x.addr, align 4
  %cmp31 = icmp sgt i32 %35, 0
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.else.30
  br label %cond.end.45

cond.false.33:                                    ; preds = %if.else.30
  %36 = load i32, i32* %offset_x.addr, align 4
  %37 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width34 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %37, i32 0, i32 3
  %38 = load i32, i32* %width34, align 4
  %39 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width35 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %39, i32 0, i32 1
  %40 = load i32, i32* %orig_width35, align 4
  %sub36 = sub nsw i32 %38, %40
  %cmp37 = icmp slt i32 %36, %sub36
  br i1 %cmp37, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %cond.false.33
  %41 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %width39 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %41, i32 0, i32 3
  %42 = load i32, i32* %width39, align 4
  %43 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_width40 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %43, i32 0, i32 1
  %44 = load i32, i32* %orig_width40, align 4
  %sub41 = sub nsw i32 %42, %44
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.false.33
  %45 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.38
  %cond44 = phi i32 [ %sub41, %cond.true.38 ], [ %45, %cond.false.42 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.32
  %cond46 = phi i32 [ 0, %cond.true.32 ], [ %cond44, %cond.end.43 ]
  %46 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_x47 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %46, i32 0, i32 5
  store i32 %cond46, i32* %offset_x47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.45, %cond.end.27
  %47 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %47, i32 0, i32 2
  %48 = load i32, i32* %orig_height, align 4
  %49 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %49, i32 0, i32 4
  %50 = load i32, i32* %height, align 4
  %cmp49 = icmp sle i32 %48, %50
  br i1 %cmp49, label %if.then.50, label %if.else.68

if.then.50:                                       ; preds = %if.end.48
  %51 = load i32, i32* %offset_y.addr, align 4
  %52 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height51 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %52, i32 0, i32 4
  %53 = load i32, i32* %height51, align 4
  %54 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height52 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %54, i32 0, i32 2
  %55 = load i32, i32* %orig_height52, align 4
  %sub53 = sub nsw i32 %53, %55
  %cmp54 = icmp sgt i32 %51, %sub53
  br i1 %cmp54, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %if.then.50
  %56 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height56 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %56, i32 0, i32 4
  %57 = load i32, i32* %height56, align 4
  %58 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height57 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %58, i32 0, i32 2
  %59 = load i32, i32* %orig_height57, align 4
  %sub58 = sub nsw i32 %57, %59
  br label %cond.end.65

cond.false.59:                                    ; preds = %if.then.50
  %60 = load i32, i32* %offset_y.addr, align 4
  %cmp60 = icmp slt i32 %60, 0
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.59
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.false.59
  %61 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ 0, %cond.true.61 ], [ %61, %cond.false.62 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.55
  %cond66 = phi i32 [ %sub58, %cond.true.55 ], [ %cond64, %cond.end.63 ]
  %62 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y67 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %62, i32 0, i32 6
  store i32 %cond66, i32* %offset_y67, align 4
  br label %if.end.86

if.else.68:                                       ; preds = %if.end.48
  %63 = load i32, i32* %offset_y.addr, align 4
  %cmp69 = icmp sgt i32 %63, 0
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.else.68
  br label %cond.end.83

cond.false.71:                                    ; preds = %if.else.68
  %64 = load i32, i32* %offset_y.addr, align 4
  %65 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height72 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %65, i32 0, i32 4
  %66 = load i32, i32* %height72, align 4
  %67 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height73 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %67, i32 0, i32 2
  %68 = load i32, i32* %orig_height73, align 4
  %sub74 = sub nsw i32 %66, %68
  %cmp75 = icmp slt i32 %64, %sub74
  br i1 %cmp75, label %cond.true.76, label %cond.false.80

cond.true.76:                                     ; preds = %cond.false.71
  %69 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %height77 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %69, i32 0, i32 4
  %70 = load i32, i32* %height77, align 4
  %71 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %orig_height78 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %71, i32 0, i32 2
  %72 = load i32, i32* %orig_height78, align 4
  %sub79 = sub nsw i32 %70, %72
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.false.71
  %73 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.76
  %cond82 = phi i32 [ %sub79, %cond.true.76 ], [ %73, %cond.false.80 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.70
  %cond84 = phi i32 [ 0, %cond.true.70 ], [ %cond82, %cond.end.81 ]
  %74 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %offset_y85 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %74, i32 0, i32 6
  store i32 %cond84, i32* %offset_y85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %cond.end.83, %cond.end.65
  %75 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area.addr, align 8
  %76 = bitcast %struct._GimpOffsetArea* %75 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_widget_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call87)
  %77 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %77)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.9, %if.end.86, %lor.lhs.false
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_class_init(%struct._GimpOffsetAreaClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOffsetAreaClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpOffsetAreaClass* %klass, %struct._GimpOffsetAreaClass** %klass.addr, align 8
  %0 = load %struct._GimpOffsetAreaClass*, %struct._GimpOffsetAreaClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOffsetAreaClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GimpOffsetAreaClass*, %struct._GimpOffsetAreaClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOffsetAreaClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i64 %5, i32 1, i32 752, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__INT_INT, i64 4, i32 2, i64 24, i64 24)
  store i32 %call2, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_offset_area_signals, i32 0, i64 0), align 4
  %6 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_offset_area_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_offset_area_realize, void (%struct._GtkWidget*)** %realize, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 24
  store i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_offset_area_event, i32 (%struct._GtkWidget*, %union._GdkEvent*)** %event, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_offset_area_expose_event, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimp_widgets_marshal_VOID__INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %area = alloca %struct._GimpOffsetArea*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %copy = alloca %struct._GdkPixbuf*, align 8
  %pixbuf_width = alloca i32, align 4
  %pixbuf_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_offset_area_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOffsetArea*
  store %struct._GimpOffsetArea* %2, %struct._GimpOffsetArea** %area, align 8
  %3 = load i8*, i8** @gimp_offset_area_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %9, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %11, i32 0, i32 1
  %12 = load i32, i32* %orig_width, align 4
  %13 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width4 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %13, i32 0, i32 3
  %14 = load i32, i32* %width4, align 4
  %cmp = icmp sle i32 %12, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width6 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %15, i32 0, i32 3
  %16 = load i32, i32* %width6, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width7 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %17, i32 0, i32 1
  %18 = load i32, i32* %orig_width7, align 4
  %mul = mul nsw i32 %18, 2
  %19 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width8 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %19, i32 0, i32 3
  %20 = load i32, i32* %width8, align 4
  %sub = sub nsw i32 %mul, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %sub, %cond.false ]
  %conv9 = sitofp i32 %cond to double
  %div = fdiv double %conv, %conv9
  %21 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %21, i32 0, i32 7
  store double %div, double* %display_ratio_x, align 8
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 3
  %23 = load i32, i32* %height, align 4
  %conv10 = sitofp i32 %23 to double
  %24 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %24, i32 0, i32 2
  %25 = load i32, i32* %orig_height, align 4
  %26 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height11 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %26, i32 0, i32 4
  %27 = load i32, i32* %height11, align 4
  %cmp12 = icmp sle i32 %25, %27
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end
  %28 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height15 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %28, i32 0, i32 4
  %29 = load i32, i32* %height15, align 4
  br label %cond.end.21

cond.false.16:                                    ; preds = %cond.end
  %30 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height17 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %30, i32 0, i32 2
  %31 = load i32, i32* %orig_height17, align 4
  %mul18 = mul nsw i32 %31, 2
  %32 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height19 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %32, i32 0, i32 4
  %33 = load i32, i32* %height19, align 4
  %sub20 = sub nsw i32 %mul18, %33
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.16, %cond.true.14
  %cond22 = phi i32 [ %29, %cond.true.14 ], [ %sub20, %cond.false.16 ]
  %conv23 = sitofp i32 %cond22 to double
  %div24 = fdiv double %conv10, %conv23
  %34 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %34, i32 0, i32 8
  store double %div24, double* %display_ratio_y, align 8
  %35 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %36 = bitcast %struct._GimpOffsetArea* %35 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %call26 = call i8* @g_object_get_data(%struct._GObject* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %38 = bitcast i8* %call26 to %struct._GdkPixbuf*
  store %struct._GdkPixbuf* %38, %struct._GdkPixbuf** %pixbuf, align 8
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %39, null
  br i1 %tobool, label %if.then, label %if.end.64

if.then:                                          ; preds = %cond.end.21
  %40 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x27 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %40, i32 0, i32 7
  %41 = load double, double* %display_ratio_x27, align 8
  %42 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width28 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %42, i32 0, i32 1
  %43 = load i32, i32* %orig_width28, align 4
  %conv29 = sitofp i32 %43 to double
  %mul30 = fmul double %41, %conv29
  %conv31 = fptosi double %mul30 to i32
  store i32 %conv31, i32* %pixbuf_width, align 4
  %44 = load i32, i32* %pixbuf_width, align 4
  %cmp32 = icmp sgt i32 %44, 1
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.then
  %45 = load i32, i32* %pixbuf_width, align 4
  br label %cond.end.36

cond.false.35:                                    ; preds = %if.then
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %45, %cond.true.34 ], [ 1, %cond.false.35 ]
  store i32 %cond37, i32* %pixbuf_width, align 4
  %46 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y38 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %46, i32 0, i32 8
  %47 = load double, double* %display_ratio_y38, align 8
  %48 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height39 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %48, i32 0, i32 2
  %49 = load i32, i32* %orig_height39, align 4
  %conv40 = sitofp i32 %49 to double
  %mul41 = fmul double %47, %conv40
  %conv42 = fptosi double %mul41 to i32
  store i32 %conv42, i32* %pixbuf_height, align 4
  %50 = load i32, i32* %pixbuf_height, align 4
  %cmp43 = icmp sgt i32 %50, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.end.36
  %51 = load i32, i32* %pixbuf_height, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end.36
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %51, %cond.true.45 ], [ 1, %cond.false.46 ]
  store i32 %cond48, i32* %pixbuf_height, align 4
  %52 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %53 = bitcast %struct._GimpOffsetArea* %52 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %call50 = call i8* @g_object_get_data(%struct._GObject* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %55 = bitcast i8* %call50 to %struct._GdkPixbuf*
  store %struct._GdkPixbuf* %55, %struct._GdkPixbuf** %copy, align 8
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  %tobool51 = icmp ne %struct._GdkPixbuf* %56, null
  br i1 %tobool51, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.47
  %57 = load i32, i32* %pixbuf_width, align 4
  %58 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  %call52 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %58)
  %cmp53 = icmp ne i32 %57, %call52
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %59 = load i32, i32* %pixbuf_height, align 4
  %60 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  %call55 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %60)
  %cmp56 = icmp ne i32 %59, %call55
  br i1 %cmp56, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %copy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.58, %lor.lhs.false, %cond.end.47
  %61 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  %tobool59 = icmp ne %struct._GdkPixbuf* %61, null
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %if.end
  %62 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %63 = load i32, i32* %pixbuf_width, align 4
  %64 = load i32, i32* %pixbuf_height, align 4
  %call61 = call %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf* %62, i32 %63, i32 %64, i32 0)
  store %struct._GdkPixbuf* %call61, %struct._GdkPixbuf** %copy, align 8
  %65 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %66 = bitcast %struct._GimpOffsetArea* %65 to %struct._GTypeInstance*
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 80)
  %67 = bitcast %struct._GTypeInstance* %call62 to %struct._GObject*
  %68 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  %69 = bitcast %struct._GdkPixbuf* %68 to i8*
  call void @g_object_set_data_full(%struct._GObject* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %69, void (i8*)* @g_object_unref)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %cond.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_offset_area_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_offset_area_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 10
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %3(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %5)
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call2, i32 52)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call4, %struct._GdkCursor* %7)
  %8 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_offset_area_event(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %area = alloca %struct._GimpOffsetArea*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_offset_area_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOffsetArea*
  store %struct._GimpOffsetArea* %2, %struct._GimpOffsetArea** %area, align 8
  %3 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %3, i32 0, i32 1
  %4 = load i32, i32* %orig_width, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %5, i32 0, i32 2
  %6 = load i32, i32* %orig_height, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %7 to i32*
  %8 = load i32, i32* %type, align 4
  switch i32 %8, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.12
    i32 7, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button = bitcast %union._GdkEvent* %9 to %struct._GdkEventButton*
  %button3 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button, i32 0, i32 8
  %10 = load i32, i32* %button3, align 4
  %cmp4 = icmp eq i32 %10, 1
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %sw.bb
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %11)
  %12 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_x6 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %12, i32 0, i32 5
  %13 = load i32, i32* %offset_x6, align 4
  store i32 %13, i32* @gimp_offset_area_event.orig_offset_x, align 4
  %14 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_y7 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %14, i32 0, i32 6
  %15 = load i32, i32* %offset_y7, align 4
  store i32 %15, i32* @gimp_offset_area_event.orig_offset_y, align 4
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button8 = bitcast %union._GdkEvent* %16 to %struct._GdkEventButton*
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button8, i32 0, i32 4
  %17 = load double, double* %x, align 8
  %conv = fptosi double %17 to i32
  store i32 %conv, i32* @gimp_offset_area_event.start_x, align 4
  %18 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button9 = bitcast %union._GdkEvent* %18 to %struct._GdkEventButton*
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button9, i32 0, i32 5
  %19 = load double, double* %y, align 8
  %conv10 = fptosi double %19 to i32
  store i32 %conv10, i32* @gimp_offset_area_event.start_y, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %20 = load i32, i32* @gimp_offset_area_event.orig_offset_x, align 4
  %conv13 = sitofp i32 %20 to double
  %21 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion = bitcast %union._GdkEvent* %21 to %struct._GdkEventMotion*
  %x14 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion, i32 0, i32 4
  %22 = load double, double* %x14, align 8
  %23 = load i32, i32* @gimp_offset_area_event.start_x, align 4
  %conv15 = sitofp i32 %23 to double
  %sub = fsub double %22, %conv15
  %24 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %24, i32 0, i32 7
  %25 = load double, double* %display_ratio_x, align 8
  %div = fdiv double %sub, %25
  %add = fadd double %conv13, %div
  %conv16 = fptosi double %add to i32
  store i32 %conv16, i32* %offset_x, align 4
  %26 = load i32, i32* @gimp_offset_area_event.orig_offset_y, align 4
  %conv17 = sitofp i32 %26 to double
  %27 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion18 = bitcast %union._GdkEvent* %27 to %struct._GdkEventMotion*
  %y19 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion18, i32 0, i32 5
  %28 = load double, double* %y19, align 8
  %29 = load i32, i32* @gimp_offset_area_event.start_y, align 4
  %conv20 = sitofp i32 %29 to double
  %sub21 = fsub double %28, %conv20
  %30 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %30, i32 0, i32 8
  %31 = load double, double* %display_ratio_y, align 8
  %div22 = fdiv double %sub21, %31
  %add23 = fadd double %conv17, %div22
  %conv24 = fptosi double %add23 to i32
  store i32 %conv24, i32* %offset_y, align 4
  %32 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_x25 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %32, i32 0, i32 5
  %33 = load i32, i32* %offset_x25, align 4
  %34 = load i32, i32* %offset_x, align 4
  %cmp26 = icmp ne i32 %33, %34
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %sw.bb.12
  %35 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_y29 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %35, i32 0, i32 6
  %36 = load i32, i32* %offset_y29, align 4
  %37 = load i32, i32* %offset_y, align 4
  %cmp30 = icmp ne i32 %36, %37
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %lor.lhs.false.28, %sw.bb.12
  %38 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %39 = load i32, i32* %offset_x, align 4
  %40 = load i32, i32* %offset_y, align 4
  call void @gimp_offset_area_set_offsets(%struct._GimpOffsetArea* %38, i32 %39, i32 %40)
  %41 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %42 = bitcast %struct._GimpOffsetArea* %41 to i8*
  %43 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_offset_area_signals, i32 0, i64 0), align 4
  %44 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_x33 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %44, i32 0, i32 5
  %45 = load i32, i32* %offset_x33, align 4
  %46 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_y34 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %46, i32 0, i32 6
  %47 = load i32, i32* %offset_y34, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0, i32 %45, i32 %47)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %lor.lhs.false.28
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %48 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button37 = bitcast %union._GdkEvent* %48 to %struct._GdkEventButton*
  %button38 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button37, i32 0, i32 8
  %49 = load i32, i32* %button38, align 4
  %cmp39 = icmp eq i32 %49, 1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb.36
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %50)
  store i32 0, i32* @gimp_offset_area_event.start_y, align 4
  store i32 0, i32* @gimp_offset_area_event.start_x, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %sw.bb.36
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.42, %if.end.35, %if.end.11
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_offset_area_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %area = alloca %struct._GimpOffsetArea*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %line_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_offset_area_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOffsetArea*
  store %struct._GimpOffsetArea* %2, %struct._GimpOffsetArea** %area, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  store %struct._GdkDrawable* %call3, %struct._GdkDrawable** %window, align 8
  %5 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window4 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %5, i32 0, i32 1
  %6 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window4, align 8
  %call5 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %6)
  store %struct._cairo* %call5, %struct._cairo** %cr, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %8 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %8, i32 0, i32 4
  %9 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %7, %struct._GdkRegion* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %11, %struct._GdkRectangle* %allocation)
  %12 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %12, i32 0, i32 7
  %13 = load double, double* %display_ratio_x, align 8
  %14 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %14, i32 0, i32 1
  %15 = load i32, i32* %orig_width, align 4
  %16 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %16, i32 0, i32 3
  %17 = load i32, i32* %width, align 4
  %cmp = icmp sle i32 %15, %17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_x = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %18, i32 0, i32 5
  %19 = load i32, i32* %offset_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_x6 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %20, i32 0, i32 5
  %21 = load i32, i32* %offset_x6, align 4
  %22 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width7 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %22, i32 0, i32 1
  %23 = load i32, i32* %orig_width7, align 4
  %add = add nsw i32 %21, %23
  %24 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width8 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %24, i32 0, i32 3
  %25 = load i32, i32* %width8, align 4
  %sub = sub nsw i32 %add, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %sub, %cond.false ]
  %conv = sitofp i32 %cond to double
  %mul = fmul double %13, %conv
  %conv9 = fptosi double %mul to i32
  store i32 %conv9, i32* %x, align 4
  %26 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %26, i32 0, i32 8
  %27 = load double, double* %display_ratio_y, align 8
  %28 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %28, i32 0, i32 2
  %29 = load i32, i32* %orig_height, align 4
  %30 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %30, i32 0, i32 4
  %31 = load i32, i32* %height, align 4
  %cmp10 = icmp sle i32 %29, %31
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %32 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_y = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %32, i32 0, i32 6
  %33 = load i32, i32* %offset_y, align 4
  br label %cond.end.19

cond.false.13:                                    ; preds = %cond.end
  %34 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %offset_y14 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %34, i32 0, i32 6
  %35 = load i32, i32* %offset_y14, align 4
  %36 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height15 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %36, i32 0, i32 2
  %37 = load i32, i32* %orig_height15, align 4
  %add16 = add nsw i32 %35, %37
  %38 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height17 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %38, i32 0, i32 4
  %39 = load i32, i32* %height17, align 4
  %sub18 = sub nsw i32 %add16, %39
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.13, %cond.true.12
  %cond20 = phi i32 [ %33, %cond.true.12 ], [ %sub18, %cond.false.13 ]
  %conv21 = sitofp i32 %cond20 to double
  %mul22 = fmul double %27, %conv21
  %conv23 = fptosi double %mul22 to i32
  store i32 %conv23, i32* %y, align 4
  %40 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x24 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %40, i32 0, i32 7
  %41 = load double, double* %display_ratio_x24, align 8
  %42 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width25 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %42, i32 0, i32 1
  %43 = load i32, i32* %orig_width25, align 4
  %conv26 = sitofp i32 %43 to double
  %mul27 = fmul double %41, %conv26
  %conv28 = fptosi double %mul27 to i32
  store i32 %conv28, i32* %w, align 4
  %44 = load i32, i32* %w, align 4
  %cmp29 = icmp sgt i32 %44, 1
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.19
  %45 = load i32, i32* %w, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.19
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %45, %cond.true.31 ], [ 1, %cond.false.32 ]
  store i32 %cond34, i32* %w, align 4
  %46 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y35 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %46, i32 0, i32 8
  %47 = load double, double* %display_ratio_y35, align 8
  %48 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height36 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %48, i32 0, i32 2
  %49 = load i32, i32* %orig_height36, align 4
  %conv37 = sitofp i32 %49 to double
  %mul38 = fmul double %47, %conv37
  %conv39 = fptosi double %mul38 to i32
  store i32 %conv39, i32* %h, align 4
  %50 = load i32, i32* %h, align 4
  %cmp40 = icmp sgt i32 %50, 1
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.33
  %51 = load i32, i32* %h, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.33
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %51, %cond.true.42 ], [ 1, %cond.false.43 ]
  store i32 %cond45, i32* %h, align 4
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %call47 = call i8* @g_object_get_data(%struct._GObject* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %55 = bitcast i8* %call47 to %struct._GdkPixbuf*
  store %struct._GdkPixbuf* %55, %struct._GdkPixbuf** %pixbuf, align 8
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %56, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.44
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %58 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %59 = load i32, i32* %x, align 4
  %conv48 = sitofp i32 %59 to double
  %60 = load i32, i32* %y, align 4
  %conv49 = sitofp i32 %60 to double
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %57, %struct._GdkPixbuf* %58, double %conv48, double %conv49)
  %61 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %61)
  %62 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %63 = load i32, i32* %x, align 4
  %conv50 = sitofp i32 %63 to double
  %add51 = fadd double %conv50, 5.000000e-01
  %64 = load i32, i32* %y, align 4
  %conv52 = sitofp i32 %64 to double
  %add53 = fadd double %conv52, 5.000000e-01
  %65 = load i32, i32* %w, align 4
  %sub54 = sub nsw i32 %65, 1
  %conv55 = sitofp i32 %sub54 to double
  %66 = load i32, i32* %h, align 4
  %sub56 = sub nsw i32 %66, 1
  %conv57 = sitofp i32 %sub56 to double
  call void @cairo_rectangle(%struct._cairo* %62, double %add51, double %add53, double %conv55, double %conv57)
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %67, double 1.000000e+00)
  %68 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %69 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %69, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %68, %struct._GdkColor* %black)
  %70 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %70)
  br label %if.end

if.else:                                          ; preds = %cond.end.44
  %71 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %72 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %y, align 4
  %76 = load i32, i32* %w, align 4
  %77 = load i32, i32* %h, align 4
  call void @gtk_paint_shadow(%struct._GtkStyle* %71, %struct._GdkDrawable* %72, i32 0, i32 2, %struct._GdkRectangle* null, %struct._GtkWidget* %73, i8* null, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %78 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width58 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %78, i32 0, i32 1
  %79 = load i32, i32* %orig_width58, align 4
  %80 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width59 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %80, i32 0, i32 3
  %81 = load i32, i32* %width59, align 4
  %cmp60 = icmp sgt i32 %79, %81
  br i1 %cmp60, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %82 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height62 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %82, i32 0, i32 2
  %83 = load i32, i32* %orig_height62, align 4
  %84 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height63 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %84, i32 0, i32 4
  %85 = load i32, i32* %height63, align 4
  %cmp64 = icmp sgt i32 %83, %85
  br i1 %cmp64, label %if.then.66, label %if.end.165

if.then.66:                                       ; preds = %lor.lhs.false, %if.end
  %86 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width67 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %86, i32 0, i32 1
  %87 = load i32, i32* %orig_width67, align 4
  %88 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width68 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %88, i32 0, i32 3
  %89 = load i32, i32* %width68, align 4
  %cmp69 = icmp sgt i32 %87, %89
  br i1 %cmp69, label %if.then.71, label %if.else.84

if.then.71:                                       ; preds = %if.then.66
  %90 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x72 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %90, i32 0, i32 7
  %91 = load double, double* %display_ratio_x72, align 8
  %92 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_width73 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %92, i32 0, i32 1
  %93 = load i32, i32* %orig_width73, align 4
  %94 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width74 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %94, i32 0, i32 3
  %95 = load i32, i32* %width74, align 4
  %sub75 = sub nsw i32 %93, %95
  %conv76 = sitofp i32 %sub75 to double
  %mul77 = fmul double %91, %conv76
  %conv78 = fptosi double %mul77 to i32
  store i32 %conv78, i32* %x, align 4
  %96 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_x79 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %96, i32 0, i32 7
  %97 = load double, double* %display_ratio_x79, align 8
  %98 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %width80 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %98, i32 0, i32 3
  %99 = load i32, i32* %width80, align 4
  %conv81 = sitofp i32 %99 to double
  %mul82 = fmul double %97, %conv81
  %conv83 = fptosi double %mul82 to i32
  store i32 %conv83, i32* %w, align 4
  br label %if.end.87

if.else.84:                                       ; preds = %if.then.66
  store i32 -1, i32* %x, align 4
  %width85 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %100 = load i32, i32* %width85, align 4
  %add86 = add nsw i32 %100, 2
  store i32 %add86, i32* %w, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.71
  %101 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height88 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %101, i32 0, i32 2
  %102 = load i32, i32* %orig_height88, align 4
  %103 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height89 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %103, i32 0, i32 4
  %104 = load i32, i32* %height89, align 4
  %cmp90 = icmp sgt i32 %102, %104
  br i1 %cmp90, label %if.then.92, label %if.else.105

if.then.92:                                       ; preds = %if.end.87
  %105 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y93 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %105, i32 0, i32 8
  %106 = load double, double* %display_ratio_y93, align 8
  %107 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %orig_height94 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %107, i32 0, i32 2
  %108 = load i32, i32* %orig_height94, align 4
  %109 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height95 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %109, i32 0, i32 4
  %110 = load i32, i32* %height95, align 4
  %sub96 = sub nsw i32 %108, %110
  %conv97 = sitofp i32 %sub96 to double
  %mul98 = fmul double %106, %conv97
  %conv99 = fptosi double %mul98 to i32
  store i32 %conv99, i32* %y, align 4
  %111 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %display_ratio_y100 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %111, i32 0, i32 8
  %112 = load double, double* %display_ratio_y100, align 8
  %113 = load %struct._GimpOffsetArea*, %struct._GimpOffsetArea** %area, align 8
  %height101 = getelementptr inbounds %struct._GimpOffsetArea, %struct._GimpOffsetArea* %113, i32 0, i32 4
  %114 = load i32, i32* %height101, align 4
  %conv102 = sitofp i32 %114 to double
  %mul103 = fmul double %112, %conv102
  %conv104 = fptosi double %mul103 to i32
  store i32 %conv104, i32* %h, align 4
  br label %if.end.108

if.else.105:                                      ; preds = %if.end.87
  store i32 -1, i32* %y, align 4
  %height106 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %115 = load i32, i32* %height106, align 4
  %add107 = add nsw i32 %115, 2
  store i32 %add107, i32* %h, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.92
  %116 = load i32, i32* %w, align 4
  %cmp109 = icmp sgt i32 %116, 1
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %if.end.108
  %117 = load i32, i32* %w, align 4
  br label %cond.end.113

cond.false.112:                                   ; preds = %if.end.108
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ %117, %cond.true.111 ], [ 1, %cond.false.112 ]
  store i32 %cond114, i32* %w, align 4
  %118 = load i32, i32* %h, align 4
  %cmp115 = icmp sgt i32 %118, 1
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end.113
  %119 = load i32, i32* %h, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end.113
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %119, %cond.true.117 ], [ 1, %cond.false.118 ]
  store i32 %cond120, i32* %h, align 4
  %120 = load i32, i32* %w, align 4
  %121 = load i32, i32* %h, align 4
  %cmp121 = icmp slt i32 %120, %121
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.119
  %122 = load i32, i32* %w, align 4
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.end.119
  %123 = load i32, i32* %h, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ %122, %cond.true.123 ], [ %123, %cond.false.124 ]
  %cmp127 = icmp slt i32 3, %cond126
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.125
  br label %cond.end.137

cond.false.130:                                   ; preds = %cond.end.125
  %124 = load i32, i32* %w, align 4
  %125 = load i32, i32* %h, align 4
  %cmp131 = icmp slt i32 %124, %125
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.false.130
  %126 = load i32, i32* %w, align 4
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.false.130
  %127 = load i32, i32* %h, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %126, %cond.true.133 ], [ %127, %cond.false.134 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true.129
  %cond138 = phi i32 [ 3, %cond.true.129 ], [ %cond136, %cond.end.135 ]
  store i32 %cond138, i32* %line_width, align 4
  %128 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %129 = load i32, i32* %x, align 4
  %conv139 = sitofp i32 %129 to double
  %130 = load i32, i32* %line_width, align 4
  %conv140 = sitofp i32 %130 to double
  %div = fdiv double %conv140, 2.000000e+00
  %add141 = fadd double %conv139, %div
  %131 = load i32, i32* %y, align 4
  %conv142 = sitofp i32 %131 to double
  %132 = load i32, i32* %line_width, align 4
  %conv143 = sitofp i32 %132 to double
  %div144 = fdiv double %conv143, 2.000000e+00
  %add145 = fadd double %conv142, %div144
  %133 = load i32, i32* %w, align 4
  %134 = load i32, i32* %line_width, align 4
  %sub146 = sub nsw i32 %133, %134
  %cmp147 = icmp sgt i32 %sub146, 1
  br i1 %cmp147, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %cond.end.137
  %135 = load i32, i32* %w, align 4
  %136 = load i32, i32* %line_width, align 4
  %sub150 = sub nsw i32 %135, %136
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.end.137
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.149
  %cond153 = phi i32 [ %sub150, %cond.true.149 ], [ 1, %cond.false.151 ]
  %conv154 = sitofp i32 %cond153 to double
  %137 = load i32, i32* %h, align 4
  %138 = load i32, i32* %line_width, align 4
  %sub155 = sub nsw i32 %137, %138
  %cmp156 = icmp sgt i32 %sub155, 1
  br i1 %cmp156, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %cond.end.152
  %139 = load i32, i32* %h, align 4
  %140 = load i32, i32* %line_width, align 4
  %sub159 = sub nsw i32 %139, %140
  br label %cond.end.161

cond.false.160:                                   ; preds = %cond.end.152
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.158
  %cond162 = phi i32 [ %sub159, %cond.true.158 ], [ 1, %cond.false.160 ]
  %conv163 = sitofp i32 %cond162 to double
  call void @cairo_rectangle(%struct._cairo* %128, double %add141, double %add145, double %conv154, double %conv163)
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %142 = load i32, i32* %line_width, align 4
  %conv164 = sitofp i32 %142 to double
  call void @cairo_set_line_width(%struct._cairo* %141, double %conv164)
  %143 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %143, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %144 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %144)
  %145 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %145, double 1.000000e+00)
  %146 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %146, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %147 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %147)
  br label %if.end.165

if.end.165:                                       ; preds = %cond.end.161, %lor.lhs.false
  %148 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %148)
  ret i32 0
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf*, i32, i32, i32) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @gtk_paint_shadow(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

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
