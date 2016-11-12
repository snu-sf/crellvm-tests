; ModuleID = './plug-ins/print/print-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._PrintPreviewClass = type { %struct._GtkEventBoxClass, void (%struct._PrintPreview*, i32, i32)* }
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
%struct._PrintPreview = type { %struct._GtkEventBox, %struct._GdkCursor*, %struct._GtkPageSetup*, %struct._cairo_surface*, i32, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32, double, double, i32, i32 }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkPageSetup = type opaque
%struct._cairo_surface = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GCClosure = type { %struct._GClosure, i8* }
%struct._cairo = type opaque

@print_preview_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"PrintPreview\00", align 1
@__func__.print_preview_new = private unnamed_addr constant [18 x i8] c"print_preview_new\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GTK_IS_PAGE_SETUP (page)\00", align 1
@__func__.print_preview_set_image_dpi = private unnamed_addr constant [28 x i8] c"print_preview_set_image_dpi\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"PRINT_IS_PREVIEW (preview)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"xres > 0.0 && yres > 0.0\00", align 1
@__func__.print_preview_set_page_setup = private unnamed_addr constant [29 x i8] c"print_preview_set_page_setup\00", align 1
@__func__.print_preview_set_image_offsets = private unnamed_addr constant [32 x i8] c"print_preview_set_image_offsets\00", align 1
@__func__.print_preview_set_image_offsets_max = private unnamed_addr constant [36 x i8] c"print_preview_set_image_offsets_max\00", align 1
@__func__.print_preview_set_use_full_page = private unnamed_addr constant [32 x i8] c"print_preview_set_use_full_page\00", align 1
@print_preview_parent_class = internal global i8* null, align 8
@PrintPreview_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"offsets-changed\00", align 1
@print_preview_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.marshal_VOID__DOUBLE_DOUBLE = private unnamed_addr constant [28 x i8] c"marshal_VOID__DOUBLE_DOUBLE\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1
@__func__.print_preview_get_thumbnail = private unnamed_addr constant [28 x i8] c"print_preview_get_thumbnail\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"width > 0 && width <= 1024\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"height > 0 && height <= 1024\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"print-preview.c\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @print_preview_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @print_preview_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @print_preview_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @print_preview_class_intern_init to void (i8*, i8*)*), i32 240, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._PrintPreview*)* @print_preview_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @print_preview_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @print_preview_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_event_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @print_preview_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @print_preview_parent_class, align 8
  %1 = load i32, i32* @PrintPreview_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @PrintPreview_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._PrintPreviewClass*
  call void @print_preview_class_init(%struct._PrintPreviewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_init(%struct._PrintPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_event_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEventBox*
  call void @gtk_event_box_set_visible_window(%struct._GtkEventBox* %2, i32 0)
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %4 = bitcast %struct._PrintPreview* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %5, i32 772)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @print_preview_new(%struct._GtkPageSetup* %page, i32 %drawable_id) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %page.addr = alloca %struct._GtkPageSetup*, align 8
  %drawable_id.addr = alloca i32, align 4
  %preview = alloca %struct._PrintPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkPageSetup* %page, %struct._GtkPageSetup** %page.addr, align 8
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page.addr, align 8
  %1 = bitcast %struct._GtkPageSetup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_page_setup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.print_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @print_preview_get_type() #6
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._PrintPreview*
  store %struct._PrintPreview* %13, %struct._PrintPreview** %preview, align 8
  %14 = load i32, i32* %drawable_id.addr, align 4
  %call13 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %14)
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %15, i32 0, i32 6
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable, align 8
  %16 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %17 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page.addr, align 8
  call void @print_preview_set_page_setup(%struct._PrintPreview* %16, %struct._GtkPageSetup* %17)
  %18 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %19 = bitcast %struct._PrintPreview* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  store %struct._GtkWidget* %20, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %21
}

; Function Attrs: nounwind readnone
declare i64 @gtk_page_setup_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define void @print_preview_set_page_setup(%struct._PrintPreview* %preview, %struct._GtkPageSetup* %page) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %page.addr = alloca %struct._GtkPageSetup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store %struct._GtkPageSetup* %page, %struct._GtkPageSetup** %page.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @print_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.print_preview_set_page_setup, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page.addr, align 8
  %14 = bitcast %struct._GtkPageSetup* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_page_setup_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.print_preview_set_page_setup, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page39 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %26, i32 0, i32 2
  %27 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page39, align 8
  %tobool40 = icmp ne %struct._GtkPageSetup* %27, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end.38
  %28 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page42 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %28, i32 0, i32 2
  %29 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page42, align 8
  %30 = bitcast %struct._GtkPageSetup* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end.38
  %31 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page.addr, align 8
  %call44 = call %struct._GtkPageSetup* @gtk_page_setup_copy(%struct._GtkPageSetup* %31)
  %32 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page45 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %32, i32 0, i32 2
  store %struct._GtkPageSetup* %call44, %struct._GtkPageSetup** %page45, align 8
  %33 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %34 = bitcast %struct._PrintPreview* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_widget_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %35)
  br label %return

return:                                           ; preds = %if.end.43, %if.else.36, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @print_preview_set_image_dpi(%struct._PrintPreview* %preview, double %xres, double %yres) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @print_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.print_preview_set_image_dpi, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.34

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %xres.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double, double* %yres.addr, align 8
  %cmp14 = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.print_preview_set_image_dpi, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.34

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %drawable = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %15, i32 0, i32 6
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width19, align 4
  %conv = uitofp i32 %17 to double
  %mul = fmul double %conv, 7.200000e+01
  %18 = load double, double* %xres.addr, align 8
  %div = fdiv double %mul, %18
  store double %div, double* %width, align 8
  %19 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %drawable20 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %19, i32 0, i32 6
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable20, align 8
  %height21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 2
  %21 = load i32, i32* %height21, align 4
  %conv22 = uitofp i32 %21 to double
  %mul23 = fmul double %conv22, 7.200000e+01
  %22 = load double, double* %yres.addr, align 8
  %div24 = fdiv double %mul23, %22
  store double %div24, double* %height, align 8
  %23 = load double, double* %width, align 8
  %24 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_width = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %24, i32 0, i32 11
  %25 = load double, double* %image_width, align 8
  %cmp25 = fcmp une double %23, %25
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %26 = load double, double* %height, align 8
  %27 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_height = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %27, i32 0, i32 12
  %28 = load double, double* %image_height, align 8
  %cmp27 = fcmp une double %26, %28
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %lor.lhs.false, %do.end.18
  %29 = load double, double* %width, align 8
  %30 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_width30 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %30, i32 0, i32 11
  store double %29, double* %image_width30, align 8
  %31 = load double, double* %height, align 8
  %32 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_height31 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %32, i32 0, i32 12
  store double %31, double* %image_height31, align 8
  %33 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %34 = bitcast %struct._PrintPreview* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_widget_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %35)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.9, %if.else.16, %if.then.29, %lor.lhs.false
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkPageSetup* @gtk_page_setup_copy(%struct._GtkPageSetup*) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @print_preview_set_image_offsets(%struct._PrintPreview* %preview, double %offset_x, double %offset_y) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @print_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.print_preview_set_image_offsets, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %offset_x.addr, align 8
  %14 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %14, i32 0, i32 7
  store double %13, double* %image_offset_x, align 8
  %15 = load double, double* %offset_y.addr, align 8
  %16 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %16, i32 0, i32 8
  store double %15, double* %image_offset_y, align 8
  %17 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %18 = bitcast %struct._PrintPreview* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_preview_set_image_offsets_max(%struct._PrintPreview* %preview, double %offset_x_max, double %offset_y_max) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %offset_x_max.addr = alloca double, align 8
  %offset_y_max.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double %offset_x_max, double* %offset_x_max.addr, align 8
  store double %offset_y_max, double* %offset_y_max.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @print_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.print_preview_set_image_offsets_max, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %offset_x_max.addr, align 8
  %14 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_x_max = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %14, i32 0, i32 9
  store double %13, double* %image_offset_x_max, align 8
  %15 = load double, double* %offset_y_max.addr, align 8
  %16 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_y_max = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %16, i32 0, i32 10
  store double %15, double* %image_offset_y_max, align 8
  %17 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %18 = bitcast %struct._PrintPreview* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_preview_set_use_full_page(%struct._PrintPreview* %preview, i32 %full_page) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %full_page.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store i32 %full_page, i32* %full_page.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @print_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.print_preview_set_use_full_page, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %full_page.addr, align 4
  %14 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %use_full_page = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %14, i32 0, i32 13
  store i32 %13, i32* %use_full_page, align 4
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %16 = bitcast %struct._PrintPreview* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @print_preview_class_init(%struct._PrintPreviewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._PrintPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._PrintPreviewClass* %klass, %struct._PrintPreviewClass** %klass.addr, align 8
  %0 = load %struct._PrintPreviewClass*, %struct._PrintPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._PrintPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._PrintPreviewClass*, %struct._PrintPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._PrintPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._PrintPreviewClass*, %struct._PrintPreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._PrintPreviewClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i64 %8, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @marshal_VOID__DOUBLE_DOUBLE, i64 4, i32 2, i64 60, i64 60)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @print_preview_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @print_preview_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 10
  store void (%struct._GtkWidget*)* @print_preview_realize, void (%struct._GtkWidget*)** %realize, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 11
  store void (%struct._GtkWidget*)* @print_preview_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @print_preview_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @print_preview_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @print_preview_expose_event, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @print_preview_button_press_event, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @print_preview_button_release_event, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @print_preview_motion_notify_event, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %leave_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 35
  store i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @print_preview_leave_notify_event, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %leave_notify_event, align 8
  %19 = load %struct._PrintPreviewClass*, %struct._PrintPreviewClass** %klass.addr, align 8
  %offsets_changed = getelementptr inbounds %struct._PrintPreviewClass, %struct._PrintPreviewClass* %19, i32 0, i32 1
  store void (%struct._PrintPreview*, i32, i32)* null, void (%struct._PrintPreview*, i32, i32)** %offsets_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @marshal_VOID__DOUBLE_DOUBLE(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #3 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, double, double, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.marshal_VOID__DOUBLE_DOUBLE, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, double, double, i8*)*
  store void (i8*, double, double, i8*)* %15, void (i8*, double, double, i8*)** %callback, align 8
  %16 = load void (i8*, double, double, i8*)*, void (i8*, double, double, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_double = bitcast %union.anon* %arrayidx to double*
  %19 = load double, double* %v_double, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_double14 = bitcast %union.anon* %arrayidx13 to double*
  %21 = load double, double* %v_double14, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, double %19, double %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %3, i32 0, i32 6
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable2 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %5, i32 0, i32 6
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %6)
  %7 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable3 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %7, i32 0, i32 6
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %8, i32 0, i32 3
  %9 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail, align 8
  %tobool4 = icmp ne %struct._cairo_surface* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail6 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %10, i32 0, i32 3
  %11 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail6, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %11)
  %12 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail7 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %12, i32 0, i32 3
  store %struct._cairo_surface* null, %struct._cairo_surface** %thumbnail7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %page = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %13, i32 0, i32 2
  %14 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page, align 8
  %tobool9 = icmp ne %struct._GtkPageSetup* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %page11 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %15, i32 0, i32 2
  %16 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page11, align 8
  %17 = bitcast %struct._GtkPageSetup* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %page12 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %18, i32 0, i32 2
  store %struct._GtkPageSetup* null, %struct._GtkPageSetup** %page12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load i8*, i8** @print_preview_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 80)
  %21 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 6
  %22 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %22(%struct._GObject* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load i8*, i8** @print_preview_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 10
  %6 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %8)
  %call5 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call4, i32 58)
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %cursor = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %9, i32 0, i32 1
  store %struct._GdkCursor* %call5, %struct._GdkCursor** %cursor, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %cursor = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %3, i32 0, i32 1
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %tobool = icmp ne %struct._GdkCursor* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %cursor2 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %5, i32 0, i32 1
  %6 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor2, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @print_preview_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 11
  %10 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %10(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  %paper_width = alloca double, align 8
  %paper_height = alloca double, align 8
  %border = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %5)
  %add = add i32 %call4, 1
  store i32 %add, i32* %border, align 4
  %6 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  call void @print_preview_get_page_size(%struct._PrintPreview* %6, double* %paper_width, double* %paper_height)
  %7 = load double, double* %paper_width, align 8
  %8 = load double, double* %paper_height, align 8
  %cmp = fcmp ogt double %7, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %9, i32 0, i32 1
  store i32 200, i32* %height, align 4
  %10 = load double, double* %paper_width, align 8
  %mul = fmul double %10, 2.000000e+02
  %11 = load double, double* %paper_height, align 8
  %div = fdiv double %mul, %11
  %conv = fptosi double %div to i32
  %12 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %12, i32 0, i32 0
  store i32 %conv, i32* %width, align 4
  %13 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width5 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %13, i32 0, i32 0
  %14 = load i32, i32* %width5, align 4
  %cmp6 = icmp slt i32 %14, 400
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %15 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width8 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %15, i32 0, i32 0
  %16 = load i32, i32* %width8, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 400, %cond.false ]
  %17 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %17, i32 0, i32 0
  store i32 %cond, i32* %width9, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %18, i32 0, i32 0
  store i32 200, i32* %width10, align 4
  %19 = load double, double* %paper_height, align 8
  %mul11 = fmul double %19, 2.000000e+02
  %20 = load double, double* %paper_width, align 8
  %div12 = fdiv double %mul11, %20
  %conv13 = fptosi double %div12 to i32
  %21 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %21, i32 0, i32 1
  store i32 %conv13, i32* %height14, align 4
  %22 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height15 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %22, i32 0, i32 1
  %23 = load i32, i32* %height15, align 4
  %cmp16 = icmp slt i32 %23, 400
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.else
  %24 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %24, i32 0, i32 1
  %25 = load i32, i32* %height19, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.else
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %25, %cond.true.18 ], [ 400, %cond.false.20 ]
  %26 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height23 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %26, i32 0, i32 1
  store i32 %cond22, i32* %height23, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.21, %cond.end
  %27 = load i32, i32* %border, align 4
  %mul24 = mul nsw i32 2, %27
  %28 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width25 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %28, i32 0, i32 0
  %29 = load i32, i32* %width25, align 4
  %add26 = add nsw i32 %29, %mul24
  store i32 %add26, i32* %width25, align 4
  %30 = load i32, i32* %border, align 4
  %mul27 = mul nsw i32 2, %30
  %31 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height28 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %31, i32 0, i32 1
  %32 = load i32, i32* %height28, align 4
  %add29 = add nsw i32 %32, %mul27
  store i32 %add29, i32* %height28, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load i8*, i8** @print_preview_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %9, i32 0, i32 3
  %10 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail, align 8
  %tobool = icmp ne %struct._cairo_surface* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail4 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %11, i32 0, i32 3
  %12 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail4, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %12)
  %13 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail5 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %13, i32 0, i32 3
  store %struct._cairo_surface* null, %struct._cairo_surface** %thumbnail5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %paper_width = alloca double, align 8
  %paper_height = alloca double, align 8
  %left_margin = alloca double, align 8
  %right_margin = alloca double, align 8
  %top_margin = alloca double, align 8
  %bottom_margin = alloca double, align 8
  %scale = alloca double, align 8
  %border = alloca i32, align 4
  %width = alloca i32, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %7)
  %add = add i32 %call5, 1
  store i32 %add, i32* %border, align 4
  %8 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  call void @print_preview_get_page_size(%struct._PrintPreview* %8, double* %paper_width, double* %paper_height)
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  call void @print_preview_get_page_margins(%struct._PrintPreview* %9, double* %left_margin, double* %right_margin, double* %top_margin, double* %bottom_margin)
  %10 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %call6 = call double @print_preview_get_scale(%struct._PrintPreview* %10)
  store double %call6, double* %scale, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %call8 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call7)
  store %struct._cairo* %call8, %struct._cairo** %cr, align 8
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %border, align 4
  %add9 = add nsw i32 %13, %14
  %conv = sitofp i32 %add9 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %border, align 4
  %add10 = add nsw i32 %15, %16
  %conv11 = sitofp i32 %add10 to double
  call void @cairo_translate(%struct._cairo* %12, double %conv, double %conv11)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %17)
  %cmp = icmp eq i32 %call12, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width14, align 4
  %19 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %19
  %sub = sub nsw i32 %18, %mul
  store i32 %sub, i32* %width, align 4
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %21 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %21 to double
  %22 = load double, double* %scale, align 8
  %23 = load double, double* %paper_width, align 8
  %mul16 = fmul double %22, %23
  %sub17 = fsub double %conv15, %mul16
  call void @cairo_translate(%struct._cairo* %20, double %sub17, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %24, double 1.000000e+00)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %26 = load double, double* %scale, align 8
  %27 = load double, double* %paper_width, align 8
  %mul18 = fmul double %26, %27
  %28 = load double, double* %scale, align 8
  %29 = load double, double* %paper_height, align 8
  %mul19 = fmul double %28, %29
  call void @cairo_rectangle(%struct._cairo* %25, double 0.000000e+00, double 0.000000e+00, double %mul18, double %mul19)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %31 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %31, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %30, %struct._GdkColor* %black)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %32)
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %34 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %34, i32 0, i32 10
  call void @gdk_cairo_set_source_color(%struct._cairo* %33, %struct._GdkColor* %white)
  %35 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %35)
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load double, double* %scale, align 8
  %38 = load double, double* %left_margin, align 8
  %mul20 = fmul double %37, %38
  %39 = load double, double* %scale, align 8
  %40 = load double, double* %top_margin, align 8
  %mul21 = fmul double %39, %40
  %41 = load double, double* %scale, align 8
  %42 = load double, double* %paper_width, align 8
  %43 = load double, double* %left_margin, align 8
  %sub22 = fsub double %42, %43
  %44 = load double, double* %right_margin, align 8
  %sub23 = fsub double %sub22, %44
  %mul24 = fmul double %41, %sub23
  %45 = load double, double* %scale, align 8
  %46 = load double, double* %paper_height, align 8
  %47 = load double, double* %top_margin, align 8
  %sub25 = fsub double %46, %47
  %48 = load double, double* %bottom_margin, align 8
  %sub26 = fsub double %sub25, %48
  %mul27 = fmul double %45, %sub26
  call void @cairo_rectangle(%struct._cairo* %36, double %mul20, double %mul21, double %mul24, double %mul27)
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call28 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %50)
  %idxprom = zext i32 %call28 to i64
  %51 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %mid = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %51, i32 0, i32 5
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %mid, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %49, %struct._GdkColor* %arrayidx)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %52)
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %54 = load double, double* %scale, align 8
  %55 = load double, double* %left_margin, align 8
  %56 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %56, i32 0, i32 7
  %57 = load double, double* %image_offset_x, align 8
  %add29 = fadd double %55, %57
  %mul30 = fmul double %54, %add29
  %58 = load double, double* %scale, align 8
  %59 = load double, double* %top_margin, align 8
  %60 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %60, i32 0, i32 8
  %61 = load double, double* %image_offset_y, align 8
  %add31 = fadd double %59, %61
  %mul32 = fmul double %58, %add31
  call void @cairo_translate(%struct._cairo* %53, double %mul30, double %mul32)
  %62 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %dragging = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %62, i32 0, i32 4
  %63 = load i32, i32* %dragging, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %64 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %inside = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %64, i32 0, i32 5
  %65 = load i32, i32* %inside, align 4
  %tobool33 = icmp ne i32 %65, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %lor.lhs.false, %if.end
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %67 = load double, double* %scale, align 8
  %68 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_width = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %68, i32 0, i32 11
  %69 = load double, double* %image_width, align 8
  %mul35 = fmul double %67, %69
  %70 = load double, double* %scale, align 8
  %71 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_height = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %71, i32 0, i32 12
  %72 = load double, double* %image_height, align 8
  %mul36 = fmul double %70, %72
  call void @cairo_rectangle(%struct._cairo* %66, double 0.000000e+00, double 0.000000e+00, double %mul35, double %mul36)
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %74 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black37 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %74, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %73, %struct._GdkColor* %black37)
  %75 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %75)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %lor.lhs.false
  %76 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %76, i32 0, i32 3
  %77 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail, align 8
  %cmp39 = icmp eq %struct._cairo_surface* %77, null
  br i1 %cmp39, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %if.end.38
  %78 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %78, i32 0, i32 6
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %79, i32 0, i32 0
  %80 = load i32, i32* %drawable_id, align 4
  %call41 = call i32 @gimp_item_is_valid(i32 %80)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %land.lhs.true
  %81 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %drawable44 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %81, i32 0, i32 6
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable44, align 8
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %83 = load i32, i32* %width45, align 4
  %cmp46 = icmp slt i32 %83, 1024
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.43
  %width48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %84 = load i32, i32* %width48, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %84, %cond.true ], [ 1024, %cond.false ]
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %85 = load i32, i32* %height, align 4
  %cmp49 = icmp slt i32 %85, 1024
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end
  %height52 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %86 = load i32, i32* %height52, align 4
  br label %cond.end.54

cond.false.53:                                    ; preds = %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi i32 [ %86, %cond.true.51 ], [ 1024, %cond.false.53 ]
  %call56 = call %struct._cairo_surface* @print_preview_get_thumbnail(%struct._GimpDrawable* %82, i32 %cond, i32 %cond55)
  %87 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail57 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %87, i32 0, i32 3
  store %struct._cairo_surface* %call56, %struct._cairo_surface** %thumbnail57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %cond.end.54, %land.lhs.true, %if.end.38
  %88 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail59 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %88, i32 0, i32 3
  %89 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail59, align 8
  %cmp60 = icmp ne %struct._cairo_surface* %89, null
  br i1 %cmp60, label %if.then.62, label %if.end.77

if.then.62:                                       ; preds = %if.end.58
  %90 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_width63 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %90, i32 0, i32 11
  %91 = load double, double* %image_width63, align 8
  %92 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail64 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %92, i32 0, i32 3
  %93 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail64, align 8
  %call65 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %93)
  %conv66 = sitofp i32 %call65 to double
  %div = fdiv double %91, %conv66
  store double %div, double* %scale_x, align 8
  %94 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_height67 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %94, i32 0, i32 12
  %95 = load double, double* %image_height67, align 8
  %96 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail68 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %96, i32 0, i32 3
  %97 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail68, align 8
  %call69 = call i32 @cairo_image_surface_get_height(%struct._cairo_surface* %97)
  %conv70 = sitofp i32 %call69 to double
  %div71 = fdiv double %95, %conv70
  store double %div71, double* %scale_y, align 8
  %98 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %99 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_width72 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %99, i32 0, i32 11
  %100 = load double, double* %image_width72, align 8
  %101 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_height73 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %101, i32 0, i32 12
  %102 = load double, double* %image_height73, align 8
  call void @cairo_rectangle(%struct._cairo* %98, double 0.000000e+00, double 0.000000e+00, double %100, double %102)
  %103 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %104 = load double, double* %scale_x, align 8
  %105 = load double, double* %scale, align 8
  %mul74 = fmul double %104, %105
  %106 = load double, double* %scale_y, align 8
  %107 = load double, double* %scale, align 8
  %mul75 = fmul double %106, %107
  call void @cairo_scale(%struct._cairo* %103, double %mul74, double %mul75)
  %108 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %109 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %thumbnail76 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %109, i32 0, i32 3
  %110 = load %struct._cairo_surface*, %struct._cairo_surface** %thumbnail76, align 8
  call void @cairo_set_source_surface(%struct._cairo* %108, %struct._cairo_surface* %110, double 0.000000e+00, double 0.000000e+00)
  %111 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %111)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.62, %if.end.58
  %112 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %112)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.10

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %inside = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %7, i32 0, i32 5
  %8 = load i32, i32* %inside, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true.3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %9)
  %call5 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call4, i32 52)
  store %struct._GdkCursor* %call5, %struct._GdkCursor** %cursor, align 8
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %12 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 3
  %14 = load i32, i32* %time, align 4
  %call6 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %11, i32 0, i32 544, %struct._GdkDrawable* null, %struct._GdkCursor* %12, i32 %14)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %15, i32 0, i32 7
  %16 = load double, double* %image_offset_x, align 8
  %17 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %orig_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %17, i32 0, i32 14
  store double %16, double* %orig_offset_x, align 8
  %18 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %18, i32 0, i32 8
  %19 = load double, double* %image_offset_y, align 8
  %20 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %orig_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %20, i32 0, i32 15
  store double %19, double* %orig_offset_y, align 8
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 4
  %22 = load double, double* %x, align 8
  %conv = fptosi double %22 to i32
  %23 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %start_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %23, i32 0, i32 16
  store i32 %conv, i32* %start_x, align 4
  %24 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %24, i32 0, i32 5
  %25 = load double, double* %y, align 8
  %conv9 = fptosi double %25 to i32
  %26 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %start_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %26, i32 0, i32 17
  store i32 %conv9, i32* %start_y, align 4
  %27 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %dragging = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %27, i32 0, i32 4
  store i32 1, i32* %dragging, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %28 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %28)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_button_release_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %dragging = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %3, i32 0, i32 4
  %4 = load i32, i32* %dragging, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %5)
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 3
  %7 = load i32, i32* %time, align 4
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call2, i32 %7)
  %8 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %dragging3 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %8, i32 0, i32 4
  store i32 0, i32* %dragging3, align 4
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %10 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 4
  %12 = load double, double* %x, align 8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 5
  %14 = load double, double* %y, align 8
  %call4 = call i32 @print_preview_is_inside(%struct._PrintPreview* %10, double %12, double %14)
  call void @print_preview_set_inside(%struct._PrintPreview* %9, i32 %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_motion_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  %scale = alloca double, align 8
  %offset_x = alloca double, align 8
  %offset_y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %dragging = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %3, i32 0, i32 4
  %4 = load i32, i32* %dragging, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %call2 = call double @print_preview_get_scale(%struct._PrintPreview* %5)
  store double %call2, double* %scale, align 8
  %6 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %orig_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %6, i32 0, i32 14
  %7 = load double, double* %orig_offset_x, align 8
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 4
  %9 = load double, double* %x, align 8
  %10 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %start_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %10, i32 0, i32 16
  %11 = load i32, i32* %start_x, align 4
  %conv = sitofp i32 %11 to double
  %sub = fsub double %9, %conv
  %12 = load double, double* %scale, align 8
  %div = fdiv double %sub, %12
  %add = fadd double %7, %div
  store double %add, double* %offset_x, align 8
  %13 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %orig_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %13, i32 0, i32 15
  %14 = load double, double* %orig_offset_y, align 8
  %15 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %15, i32 0, i32 5
  %16 = load double, double* %y, align 8
  %17 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %start_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %17, i32 0, i32 17
  %18 = load i32, i32* %start_y, align 4
  %conv3 = sitofp i32 %18 to double
  %sub4 = fsub double %16, %conv3
  %19 = load double, double* %scale, align 8
  %div5 = fdiv double %sub4, %19
  %add6 = fadd double %14, %div5
  store double %add6, double* %offset_y, align 8
  %20 = load double, double* %offset_x, align 8
  %21 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x_max = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %21, i32 0, i32 9
  %22 = load double, double* %image_offset_x_max, align 8
  %cmp = fcmp ogt double %20, %22
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %23 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x_max8 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %23, i32 0, i32 9
  %24 = load double, double* %image_offset_x_max8, align 8
  br label %cond.end.13

cond.false:                                       ; preds = %if.then
  %25 = load double, double* %offset_x, align 8
  %cmp9 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %26 = load double, double* %offset_x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi double [ 0.000000e+00, %cond.true.11 ], [ %26, %cond.false.12 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi double [ %24, %cond.true ], [ %cond, %cond.end ]
  store double %cond14, double* %offset_x, align 8
  %27 = load double, double* %offset_y, align 8
  %28 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y_max = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %28, i32 0, i32 10
  %29 = load double, double* %image_offset_y_max, align 8
  %cmp15 = fcmp ogt double %27, %29
  br i1 %cmp15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end.13
  %30 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y_max18 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %30, i32 0, i32 10
  %31 = load double, double* %image_offset_y_max18, align 8
  br label %cond.end.26

cond.false.19:                                    ; preds = %cond.end.13
  %32 = load double, double* %offset_y, align 8
  %cmp20 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false.19
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.false.19
  %33 = load double, double* %offset_y, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi double [ 0.000000e+00, %cond.true.22 ], [ %33, %cond.false.23 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.17
  %cond27 = phi double [ %31, %cond.true.17 ], [ %cond25, %cond.end.24 ]
  store double %cond27, double* %offset_y, align 8
  %34 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %34, i32 0, i32 7
  %35 = load double, double* %image_offset_x, align 8
  %36 = load double, double* %offset_x, align 8
  %cmp28 = fcmp une double %35, %36
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.26
  %37 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %37, i32 0, i32 8
  %38 = load double, double* %image_offset_y, align 8
  %39 = load double, double* %offset_y, align 8
  %cmp30 = fcmp une double %38, %39
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %lor.lhs.false, %cond.end.26
  %40 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %41 = load double, double* %offset_x, align 8
  %42 = load double, double* %offset_y, align 8
  call void @print_preview_set_image_offsets(%struct._PrintPreview* %40, double %41, double %42)
  %43 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %44 = bitcast %struct._PrintPreview* %43 to i8*
  %45 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @print_preview_signals, i32 0, i64 0), align 4
  %46 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_x33 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %46, i32 0, i32 7
  %47 = load double, double* %image_offset_x33, align 8
  %48 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %image_offset_y34 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %48, i32 0, i32 8
  %49 = load double, double* %image_offset_y34, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %44, i32 %45, i32 0, double %47, double %49)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %lor.lhs.false
  br label %if.end.38

if.else:                                          ; preds = %entry
  %50 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %51 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  %52 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x35 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %52, i32 0, i32 4
  %53 = load double, double* %x35, align 8
  %54 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y36 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %54, i32 0, i32 5
  %55 = load double, double* %y36, align 8
  %call37 = call i32 @print_preview_is_inside(%struct._PrintPreview* %51, double %53, double %55)
  call void @print_preview_set_inside(%struct._PrintPreview* %50, i32 %call37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_leave_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  %preview = alloca %struct._PrintPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @print_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._PrintPreview*
  store %struct._PrintPreview* %2, %struct._PrintPreview** %preview, align 8
  %3 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %mode = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %3, i32 0, i32 9
  %4 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._PrintPreview*, %struct._PrintPreview** %preview, align 8
  call void @print_preview_set_inside(%struct._PrintPreview* %5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i8* @g_value_peek_pointer(%struct._GValue*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @print_preview_get_page_size(%struct._PrintPreview* %preview, double* %paper_width, double* %paper_height) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %paper_width.addr = alloca double*, align 8
  %paper_height.addr = alloca double*, align 8
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double* %paper_width, double** %paper_width.addr, align 8
  store double* %paper_height, double** %paper_height.addr, align 8
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %0, i32 0, i32 2
  %1 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page, align 8
  %call = call double @gtk_page_setup_get_paper_width(%struct._GtkPageSetup* %1, i32 1)
  %2 = load double*, double** %paper_width.addr, align 8
  store double %call, double* %2, align 8
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page1 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %3, i32 0, i32 2
  %4 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page1, align 8
  %call2 = call double @gtk_page_setup_get_paper_height(%struct._GtkPageSetup* %4, i32 1)
  %5 = load double*, double** %paper_height.addr, align 8
  store double %call2, double* %5, align 8
  ret void
}

declare double @gtk_page_setup_get_paper_width(%struct._GtkPageSetup*, i32) #1

declare double @gtk_page_setup_get_paper_height(%struct._GtkPageSetup*, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @print_preview_get_page_margins(%struct._PrintPreview* %preview, double* %left_margin, double* %right_margin, double* %top_margin, double* %bottom_margin) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %left_margin.addr = alloca double*, align 8
  %right_margin.addr = alloca double*, align 8
  %top_margin.addr = alloca double*, align 8
  %bottom_margin.addr = alloca double*, align 8
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double* %left_margin, double** %left_margin.addr, align 8
  store double* %right_margin, double** %right_margin.addr, align 8
  store double* %top_margin, double** %top_margin.addr, align 8
  store double* %bottom_margin, double** %bottom_margin.addr, align 8
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %use_full_page = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %0, i32 0, i32 13
  %1 = load i32, i32* %use_full_page, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double*, double** %left_margin.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load double*, double** %right_margin.addr, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load double*, double** %top_margin.addr, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %bottom_margin.addr, align 8
  store double 0.000000e+00, double* %5, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %6, i32 0, i32 2
  %7 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page, align 8
  %call = call double @gtk_page_setup_get_left_margin(%struct._GtkPageSetup* %7, i32 1)
  %8 = load double*, double** %left_margin.addr, align 8
  store double %call, double* %8, align 8
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page1 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %9, i32 0, i32 2
  %10 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page1, align 8
  %call2 = call double @gtk_page_setup_get_right_margin(%struct._GtkPageSetup* %10, i32 1)
  %11 = load double*, double** %right_margin.addr, align 8
  store double %call2, double* %11, align 8
  %12 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page3 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %12, i32 0, i32 2
  %13 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page3, align 8
  %call4 = call double @gtk_page_setup_get_top_margin(%struct._GtkPageSetup* %13, i32 1)
  %14 = load double*, double** %top_margin.addr, align 8
  store double %call4, double* %14, align 8
  %15 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %page5 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %15, i32 0, i32 2
  %16 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page5, align 8
  %call6 = call double @gtk_page_setup_get_bottom_margin(%struct._GtkPageSetup* %16, i32 1)
  %17 = load double*, double** %bottom_margin.addr, align 8
  store double %call6, double* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @print_preview_get_scale(%struct._PrintPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %paper_width = alloca double, align 8
  %paper_height = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %border = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  %add = add i32 %call4, 1
  store i32 %add, i32* %border, align 4
  %7 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  call void @print_preview_get_page_size(%struct._PrintPreview* %7, double* %paper_width, double* %paper_height)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %9
  %sub = sub nsw i32 %8, %mul
  %conv = sitofp i32 %sub to double
  %10 = load double, double* %paper_width, align 8
  %div = fdiv double %conv, %10
  store double %div, double* %scale_x, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  %12 = load i32, i32* %border, align 4
  %mul5 = mul nsw i32 2, %12
  %sub6 = sub nsw i32 %11, %mul5
  %conv7 = sitofp i32 %sub6 to double
  %13 = load double, double* %paper_height, align 8
  %div8 = fdiv double %conv7, %13
  store double %div8, double* %scale_y, align 8
  %14 = load double, double* %scale_x, align 8
  %15 = load double, double* %scale_y, align 8
  %cmp = fcmp olt double %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load double, double* %scale_x, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load double, double* %scale_y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ %17, %cond.false ]
  ret double %cond
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare i32 @gimp_item_is_valid(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._cairo_surface* @print_preview_get_thumbnail(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._cairo_surface*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %surface = alloca %struct._cairo_surface*, align 8
  %format = alloca i32, align 4
  %data = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %src_stride = alloca i32, align 4
  %dest_stride = alloca i32, align 4
  %y = alloca i32, align 4
  %bpp = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %w = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  %tr90 = alloca i32, align 4
  %tg97 = alloca i32, align 4
  %tb104 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp sle i32 %1, 1024
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.print_preview_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._cairo_surface* null, %struct._cairo_surface** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.7

land.lhs.true.4:                                  ; preds = %do.body.2
  %3 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sle i32 %3, 1024
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true.4
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.print_preview_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  store %struct._cairo_surface* null, %struct._cairo_surface** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call = call i8* @gimp_drawable_get_thumbnail_data(i32 %5, i32* %width.addr, i32* %height.addr, i32* %bpp)
  store i8* %call, i8** %data, align 8
  %6 = load i32, i32* %bpp, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.10
    i32 4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %do.end.9, %do.end.9
  store i32 1, i32* %format, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end.9, %do.end.9
  store i32 0, i32* %format, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 820, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.print_preview_get_thumbnail, i32 0, i32 0), i8* null) #8
  unreachable

do.end.12:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.12, %sw.bb.10, %sw.bb
  %7 = load i32, i32* %format, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %call13 = call %struct._cairo_surface* @cairo_image_surface_create(i32 %7, i32 %8, i32 %9)
  store %struct._cairo_surface* %call13, %struct._cairo_surface** %surface, align 8
  %10 = load i8*, i8** %data, align 8
  store i8* %10, i8** %src, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %src_stride, align 4
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call14 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %13)
  store i8* %call14, i8** %dest, align 8
  %14 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call15 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %14)
  store i32 %call15, i32* %dest_stride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %height.addr, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %src, align 8
  store i8* %17, i8** %s, align 8
  %18 = load i8*, i8** %dest, align 8
  store i8* %18, i8** %d, align 8
  %19 = load i32, i32* %width.addr, align 4
  store i32 %19, i32* %w, align 4
  %20 = load i32, i32* %bpp, align 4
  switch i32 %20, label %sw.epilog.132 [
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.68
    i32 4, label %sw.bb.84
  ]

sw.bb.17:                                         ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %do.end.24, %sw.bb.17
  %21 = load i32, i32* %w, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %w, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.18

do.body.18:                                       ; preds = %while.body
  %22 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load i8*, i8** %d, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %arrayidx19, align 1
  %25 = load i8*, i8** %s, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx20, align 1
  %27 = load i8*, i8** %d, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %arrayidx21, align 1
  %28 = load i8*, i8** %s, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx22, align 1
  %30 = load i8*, i8** %d, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %arrayidx23, align 1
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.18
  %31 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %add.ptr, i8** %s, align 8
  %32 = load i8*, i8** %d, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %add.ptr25, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.132

sw.bb.26:                                         ; preds = %for.body
  br label %while.cond.27

while.cond.27:                                    ; preds = %do.end.64, %sw.bb.26
  %33 = load i32, i32* %w, align 4
  %dec28 = add nsw i32 %33, -1
  store i32 %dec28, i32* %w, align 4
  %tobool29 = icmp ne i32 %33, 0
  br i1 %tobool29, label %while.body.30, label %while.end.67

while.body.30:                                    ; preds = %while.cond.27
  br label %do.body.31

do.body.31:                                       ; preds = %while.body.30
  %34 = load i8*, i8** %s, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx32, align 1
  %conv = zext i8 %35 to i32
  %36 = load i8*, i8** %s, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %37 to i32
  %mul35 = mul nsw i32 %conv, %conv34
  %add = add nsw i32 %mul35, 128
  store i32 %add, i32* %tr, align 4
  %38 = load i8*, i8** %s, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %39 to i32
  %40 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %41 to i32
  %mul40 = mul nsw i32 %conv37, %conv39
  %add41 = add nsw i32 %mul40, 128
  store i32 %add41, i32* %tg, align 4
  %42 = load i8*, i8** %s, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %43 to i32
  %44 = load i8*, i8** %s, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %45 to i32
  %mul46 = mul nsw i32 %conv43, %conv45
  %add47 = add nsw i32 %mul46, 128
  store i32 %add47, i32* %tb, align 4
  %46 = load i32, i32* %tb, align 4
  %shr = lshr i32 %46, 8
  %47 = load i32, i32* %tb, align 4
  %add48 = add i32 %shr, %47
  %shr49 = lshr i32 %add48, 8
  %conv50 = trunc i32 %shr49 to i8
  %48 = load i8*, i8** %d, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %conv50, i8* %arrayidx51, align 1
  %49 = load i32, i32* %tg, align 4
  %shr52 = lshr i32 %49, 8
  %50 = load i32, i32* %tg, align 4
  %add53 = add i32 %shr52, %50
  %shr54 = lshr i32 %add53, 8
  %conv55 = trunc i32 %shr54 to i8
  %51 = load i8*, i8** %d, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %conv55, i8* %arrayidx56, align 1
  %52 = load i32, i32* %tr, align 4
  %shr57 = lshr i32 %52, 8
  %53 = load i32, i32* %tr, align 4
  %add58 = add i32 %shr57, %53
  %shr59 = lshr i32 %add58, 8
  %conv60 = trunc i32 %shr59 to i8
  %54 = load i8*, i8** %d, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %conv60, i8* %arrayidx61, align 1
  %55 = load i8*, i8** %s, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx62, align 1
  %57 = load i8*, i8** %d, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %57, i64 3
  store i8 %56, i8* %arrayidx63, align 1
  br label %do.end.64

do.end.64:                                        ; preds = %do.body.31
  %58 = load i8*, i8** %s, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %add.ptr65, i8** %s, align 8
  %59 = load i8*, i8** %d, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %add.ptr66, i8** %d, align 8
  br label %while.cond.27

while.end.67:                                     ; preds = %while.cond.27
  br label %sw.epilog.132

sw.bb.68:                                         ; preds = %for.body
  br label %while.cond.69

while.cond.69:                                    ; preds = %do.end.80, %sw.bb.68
  %60 = load i32, i32* %w, align 4
  %dec70 = add nsw i32 %60, -1
  store i32 %dec70, i32* %w, align 4
  %tobool71 = icmp ne i32 %60, 0
  br i1 %tobool71, label %while.body.72, label %while.end.83

while.body.72:                                    ; preds = %while.cond.69
  br label %do.body.73

do.body.73:                                       ; preds = %while.body.72
  %61 = load i8*, i8** %s, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx74, align 1
  %63 = load i8*, i8** %d, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %arrayidx75, align 1
  %64 = load i8*, i8** %s, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx76, align 1
  %66 = load i8*, i8** %d, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 %65, i8* %arrayidx77, align 1
  %67 = load i8*, i8** %s, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx78, align 1
  %69 = load i8*, i8** %d, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %arrayidx79, align 1
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.73
  %70 = load i8*, i8** %s, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %70, i64 3
  store i8* %add.ptr81, i8** %s, align 8
  %71 = load i8*, i8** %d, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %add.ptr82, i8** %d, align 8
  br label %while.cond.69

while.end.83:                                     ; preds = %while.cond.69
  br label %sw.epilog.132

sw.bb.84:                                         ; preds = %for.body
  br label %while.cond.85

while.cond.85:                                    ; preds = %do.end.128, %sw.bb.84
  %72 = load i32, i32* %w, align 4
  %dec86 = add nsw i32 %72, -1
  store i32 %dec86, i32* %w, align 4
  %tobool87 = icmp ne i32 %72, 0
  br i1 %tobool87, label %while.body.88, label %while.end.131

while.body.88:                                    ; preds = %while.cond.85
  br label %do.body.89

do.body.89:                                       ; preds = %while.body.88
  %73 = load i8*, i8** %s, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %74 to i32
  %75 = load i8*, i8** %s, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %76 to i32
  %mul95 = mul nsw i32 %conv92, %conv94
  %add96 = add nsw i32 %mul95, 128
  store i32 %add96, i32* %tr90, align 4
  %77 = load i8*, i8** %s, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %77, i64 3
  %78 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %78 to i32
  %79 = load i8*, i8** %s, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %80 to i32
  %mul102 = mul nsw i32 %conv99, %conv101
  %add103 = add nsw i32 %mul102, 128
  store i32 %add103, i32* %tg97, align 4
  %81 = load i8*, i8** %s, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %81, i64 3
  %82 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %82 to i32
  %83 = load i8*, i8** %s, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %83, i64 2
  %84 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %84 to i32
  %mul109 = mul nsw i32 %conv106, %conv108
  %add110 = add nsw i32 %mul109, 128
  store i32 %add110, i32* %tb104, align 4
  %85 = load i32, i32* %tb104, align 4
  %shr111 = lshr i32 %85, 8
  %86 = load i32, i32* %tb104, align 4
  %add112 = add i32 %shr111, %86
  %shr113 = lshr i32 %add112, 8
  %conv114 = trunc i32 %shr113 to i8
  %87 = load i8*, i8** %d, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %conv114, i8* %arrayidx115, align 1
  %88 = load i32, i32* %tg97, align 4
  %shr116 = lshr i32 %88, 8
  %89 = load i32, i32* %tg97, align 4
  %add117 = add i32 %shr116, %89
  %shr118 = lshr i32 %add117, 8
  %conv119 = trunc i32 %shr118 to i8
  %90 = load i8*, i8** %d, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %conv119, i8* %arrayidx120, align 1
  %91 = load i32, i32* %tr90, align 4
  %shr121 = lshr i32 %91, 8
  %92 = load i32, i32* %tr90, align 4
  %add122 = add i32 %shr121, %92
  %shr123 = lshr i32 %add122, 8
  %conv124 = trunc i32 %shr123 to i8
  %93 = load i8*, i8** %d, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 %conv124, i8* %arrayidx125, align 1
  %94 = load i8*, i8** %s, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %94, i64 3
  %95 = load i8, i8* %arrayidx126, align 1
  %96 = load i8*, i8** %d, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %96, i64 3
  store i8 %95, i8* %arrayidx127, align 1
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.89
  %97 = load i8*, i8** %s, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %97, i64 4
  store i8* %add.ptr129, i8** %s, align 8
  %98 = load i8*, i8** %d, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %add.ptr130, i8** %d, align 8
  br label %while.cond.85

while.end.131:                                    ; preds = %while.cond.85
  br label %sw.epilog.132

sw.epilog.132:                                    ; preds = %for.body, %while.end.131, %while.end.83, %while.end.67, %while.end
  %99 = load i32, i32* %src_stride, align 4
  %100 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %99 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %100, i64 %idx.ext
  store i8* %add.ptr133, i8** %src, align 8
  %101 = load i32, i32* %dest_stride, align 4
  %102 = load i8*, i8** %dest, align 8
  %idx.ext134 = sext i32 %101 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %102, i64 %idx.ext134
  store i8* %add.ptr135, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.132
  %103 = load i32, i32* %y, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %104 = load i8*, i8** %data, align 8
  call void @g_free(i8* %104)
  %105 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %105)
  %106 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  store %struct._cairo_surface* %106, %struct._cairo_surface** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.7, %if.else
  %107 = load %struct._cairo_surface*, %struct._cairo_surface** %retval
  ret %struct._cairo_surface* %107
}

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare double @gtk_page_setup_get_left_margin(%struct._GtkPageSetup*, i32) #1

declare double @gtk_page_setup_get_right_margin(%struct._GtkPageSetup*, i32) #1

declare double @gtk_page_setup_get_top_margin(%struct._GtkPageSetup*, i32) #1

declare double @gtk_page_setup_get_bottom_margin(%struct._GtkPageSetup*, i32) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare void @g_free(i8*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #1

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @print_preview_set_inside(%struct._PrintPreview* %preview, i32 %inside) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %inside.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store i32 %inside, i32* %inside.addr, align 4
  %0 = load i32, i32* %inside.addr, align 4
  %1 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %inside1 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %1, i32 0, i32 5
  %2 = load i32, i32* %inside1, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %4 = bitcast %struct._PrintPreview* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %widget, align 8
  %6 = load i32, i32* %inside.addr, align 4
  %7 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %inside3 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %7, i32 0, i32 5
  store i32 %6, i32* %inside3, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  %10 = load i32, i32* %inside.addr, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %11 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %cursor = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %11, i32 0, i32 1
  %12 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GdkCursor* [ %12, %cond.true ], [ null, %cond.false ]
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call6, %struct._GdkCursor* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print_preview_is_inside(%struct._PrintPreview* %preview, double %x, double %y) #3 {
entry:
  %preview.addr = alloca %struct._PrintPreview*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %left_margin = alloca double, align 8
  %right_margin = alloca double, align 8
  %top_margin = alloca double, align 8
  %bottom_margin = alloca double, align 8
  %scale = alloca double, align 8
  %border = alloca i32, align 4
  %paper_width = alloca double, align 8
  %paper_height = alloca double, align 8
  %width = alloca i32, align 4
  store %struct._PrintPreview* %preview, %struct._PrintPreview** %preview.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %1 = bitcast %struct._PrintPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  %add = add i32 %call4, 1
  store i32 %add, i32* %border, align 4
  %7 = load i32, i32* %border, align 4
  %conv = sitofp i32 %7 to double
  %8 = load double, double* %x.addr, align 8
  %sub = fsub double %8, %conv
  store double %sub, double* %x.addr, align 8
  %9 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %call5 = call double @print_preview_get_scale(%struct._PrintPreview* %9)
  store double %call5, double* %scale, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %10)
  %cmp = icmp eq i32 %call6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %11 = load i32, i32* %width8, align 4
  %12 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %12
  %sub9 = sub nsw i32 %11, %mul
  store i32 %sub9, i32* %width, align 4
  %13 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  call void @print_preview_get_page_size(%struct._PrintPreview* %13, double* %paper_width, double* %paper_height)
  %14 = load i32, i32* %width, align 4
  %conv10 = sitofp i32 %14 to double
  %15 = load double, double* %scale, align 8
  %16 = load double, double* %paper_width, align 8
  %mul11 = fmul double %15, %16
  %sub12 = fsub double %conv10, %mul11
  %17 = load double, double* %x.addr, align 8
  %sub13 = fsub double %17, %sub12
  store double %sub13, double* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  call void @print_preview_get_page_margins(%struct._PrintPreview* %18, double* %left_margin, double* %right_margin, double* %top_margin, double* %bottom_margin)
  %19 = load double, double* %x.addr, align 8
  %20 = load double, double* %scale, align 8
  %div = fdiv double %19, %20
  %21 = load double, double* %left_margin, align 8
  %sub14 = fsub double %div, %21
  store double %sub14, double* %x.addr, align 8
  %22 = load double, double* %y.addr, align 8
  %23 = load double, double* %scale, align 8
  %div15 = fdiv double %22, %23
  %24 = load double, double* %top_margin, align 8
  %sub16 = fsub double %div15, %24
  store double %sub16, double* %y.addr, align 8
  %25 = load double, double* %x.addr, align 8
  %26 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_x = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %26, i32 0, i32 7
  %27 = load double, double* %image_offset_x, align 8
  %cmp17 = fcmp ogt double %25, %27
  br i1 %cmp17, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %28 = load double, double* %x.addr, align 8
  %29 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_x19 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %29, i32 0, i32 7
  %30 = load double, double* %image_offset_x19, align 8
  %31 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_width = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %31, i32 0, i32 11
  %32 = load double, double* %image_width, align 8
  %add20 = fadd double %30, %32
  %cmp21 = fcmp olt double %28, %add20
  br i1 %cmp21, label %land.lhs.true.23, label %land.end

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %33 = load double, double* %y.addr, align 8
  %34 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_y = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %34, i32 0, i32 8
  %35 = load double, double* %image_offset_y, align 8
  %cmp24 = fcmp ogt double %33, %35
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.23
  %36 = load double, double* %y.addr, align 8
  %37 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_offset_y26 = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %37, i32 0, i32 8
  %38 = load double, double* %image_offset_y26, align 8
  %39 = load %struct._PrintPreview*, %struct._PrintPreview** %preview.addr, align 8
  %image_height = getelementptr inbounds %struct._PrintPreview, %struct._PrintPreview* %39, i32 0, i32 12
  %40 = load double, double* %image_height, align 8
  %add27 = fadd double %38, %40
  %cmp28 = fcmp olt double %36, %add27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %land.lhs.true, %if.end
  %41 = phi i1 [ false, %land.lhs.true.23 ], [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp28, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  ret i32 %land.ext
}

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gtk_event_box_set_visible_window(%struct._GtkEventBox*, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
