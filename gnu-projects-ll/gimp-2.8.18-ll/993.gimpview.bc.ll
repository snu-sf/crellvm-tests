; ModuleID = './app/widgets/gimpview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewClass = type { %struct._GtkWidgetClass, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)*, void (%struct._GimpView*, i32)*, void (%struct._GimpView*)*, void (%struct._GimpView*)* }
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
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
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
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._cairo = type opaque

@gimp_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_new = private unnamed_addr constant [14 x i8] c"gimp_view_new\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_VIEWABLE (viewable)\00", align 1
@__func__.gimp_view_new_full = private unnamed_addr constant [19 x i8] c"gimp_view_new_full\00", align 1
@__func__.gimp_view_new_by_types = private unnamed_addr constant [23 x i8] c"gimp_view_new_by_types\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"g_type_is_a (view_type, GIMP_TYPE_VIEW)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"size > 0 && size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"border_width >= 0 && border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"renderer != NULL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@__func__.gimp_view_new_full_by_types = private unnamed_addr constant [28 x i8] c"gimp_view_new_full_by_types\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"width > 0 && width <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"height > 0 && height <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@__func__.gimp_view_get_viewable = private unnamed_addr constant [23 x i8] c"gimp_view_get_viewable\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"GIMP_IS_VIEW (view)\00", align 1
@__func__.gimp_view_set_viewable = private unnamed_addr constant [23 x i8] c"gimp_view_set_viewable\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@view_signals = internal global [4 x i32] zeroinitializer, align 16
@__func__.gimp_view_set_expand = private unnamed_addr constant [21 x i8] c"gimp_view_set_expand\00", align 1
@gimp_view_parent_class = internal global i8* null, align 8
@GimpView_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"set-viewable\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"double-clicked\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@gimp_debug_memsize = external global i32, align 4
@__func__.gimp_view_real_set_viewable = private unnamed_addr constant [28 x i8] c"gimp_view_real_set_viewable\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"g_type_is_a (viewable_type, view->renderer->viewable_type)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 752, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpView*)* @gimp_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_parent_class, align 8
  %1 = load i32, i32* @GimpView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewClass*
  call void @gimp_view_class_init(%struct._GimpViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_init(%struct._GimpView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpView*, align 8
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_has_window(%struct._GtkWidget* %2, i32 0)
  %3 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %4 = bitcast %struct._GimpView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %5, i32 13056)
  %6 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %6, i32 0, i32 1
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %event_window, align 8
  %7 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %7, i32 0, i32 2
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable, align 8
  %8 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %renderer, align 8
  %9 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %clickable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 4
  %bf.load = load i8, i8* %clickable, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %clickable, align 8
  %10 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %eat_button_events = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 4
  %bf.load4 = load i8, i8* %eat_button_events, align 8
  %bf.clear5 = and i8 %bf.load4, -3
  %bf.set = or i8 %bf.clear5, 2
  store i8 %bf.set, i8* %eat_button_events, align 8
  %11 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %show_popup = getelementptr inbounds %struct._GimpView, %struct._GimpView* %11, i32 0, i32 4
  %bf.load6 = load i8, i8* %show_popup, align 8
  %bf.clear7 = and i8 %bf.load6, -5
  store i8 %bf.clear7, i8* %show_popup, align 8
  %12 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %expand = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 4
  %bf.load8 = load i8, i8* %expand, align 8
  %bf.clear9 = and i8 %bf.load8, -9
  store i8 %bf.clear9, i8* %expand, align 8
  %13 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %in_button = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 4
  %bf.load10 = load i8, i8* %in_button, align 8
  %bf.clear11 = and i8 %bf.load10, -17
  store i8 %bf.clear11, i8* %in_button, align 8
  %14 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %has_grab = getelementptr inbounds %struct._GimpView, %struct._GimpView* %14, i32 0, i32 4
  %bf.load12 = load i8, i8* %has_grab, align 8
  %bf.clear13 = and i8 %bf.load12, -33
  store i8 %bf.clear13, i8* %has_grab, align 8
  %15 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %press_state = getelementptr inbounds %struct._GimpView, %struct._GimpView* %15, i32 0, i32 5
  store i32 0, i32* %press_state, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_view_new(%struct._GimpContext* %context, %struct._GimpViewable* %viewable, i32 %size, i32 %border_width, i32 %is_popup) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %view = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp = icmp eq %struct._GimpContext* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_view_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_view_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call i64 @gimp_view_get_type() #5
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type42, align 8
  %32 = load i32, i32* %size.addr, align 4
  %33 = load i32, i32* %border_width.addr, align 4
  %34 = load i32, i32* %is_popup.addr, align 4
  %call43 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* %27, i64 %call40, i64 %31, i32 %32, i32 %33, i32 %34)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %view, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool44 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %do.end.39
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_view_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call46)
  %38 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpView*
  %39 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %38, %struct._GimpViewable* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %do.end.39
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_view_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call49)
  %42 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %42, i32 0, i32 3
  %43 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.37, %if.else.10
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* %context, i64 %view_type, i64 %viewable_type, i32 %size, i32 %border_width, i32 %is_popup) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_type.addr = alloca i64, align 8
  %viewable_type.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %view = alloca %struct._GimpView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %view_type, i64* %view_type.addr, align 8
  store i64 %viewable_type, i64* %viewable_type.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp = icmp eq %struct._GimpContext* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i64, i64* %view_type.addr, align 8
  %call13 = call i64 @gimp_view_get_type() #5
  %call14 = call i32 @g_type_is_a(i64 %14, i64 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %15 = load i64, i64* %viewable_type.addr, align 8
  %call21 = call i64 @gimp_viewable_get_type() #5
  %call22 = call i32 @g_type_is_a(i64 %15, i64 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.20
  br label %if.end.26

if.else.25:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %16 = load i32, i32* %size.addr, align 4
  %cmp29 = icmp sgt i32 %16, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.33

land.lhs.true.30:                                 ; preds = %do.body.28
  %17 = load i32, i32* %size.addr, align 4
  %cmp31 = icmp sle i32 %17, 2048
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.30
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.30, %do.body.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %18 = load i32, i32* %border_width.addr, align 4
  %cmp37 = icmp sge i32 %18, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %do.body.36
  %19 = load i32, i32* %border_width.addr, align 4
  %cmp39 = icmp sle i32 %19, 16
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.38
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.38, %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load i64, i64* %viewable_type.addr, align 8
  %22 = load i32, i32* %size.addr, align 4
  %23 = load i32, i32* %border_width.addr, align 4
  %24 = load i32, i32* %is_popup.addr, align 4
  %call44 = call %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext* %20, i64 %21, i32 %22, i32 %23, i32 %24)
  store %struct._GimpViewRenderer* %call44, %struct._GimpViewRenderer** %renderer, align 8
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.43
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %cmp46 = icmp ne %struct._GimpViewRenderer* %25, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_new_by_types, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %26 = load i64, i64* %view_type.addr, align 8
  %call51 = call i8* (i64, i8*, ...) @g_object_new(i64 %26, i8* null)
  %27 = bitcast i8* %call51 to %struct._GimpView*
  store %struct._GimpView* %27, %struct._GimpView** %view, align 8
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %29 = bitcast %struct._GimpViewRenderer* %28 to i8*
  %30 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %31 = bitcast %struct._GimpView* %30 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpView*)* @gimp_view_update_callback to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %33 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer53 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %33, i32 0, i32 3
  store %struct._GimpViewRenderer* %32, %struct._GimpViewRenderer** %renderer53, align 8
  %34 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %35 = bitcast %struct._GimpView* %34 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_widget_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call54)
  %36 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWidget*
  store %struct._GtkWidget* %36, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.50, %if.else.48, %if.else.41, %if.else.33, %if.else.25, %if.else.17, %if.else.10
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %37
}

; Function Attrs: nounwind uwtable
define void @gimp_view_set_viewable(%struct._GimpView* %view, %struct._GimpViewable* %viewable) #3 {
entry:
  %view.addr = alloca %struct._GimpView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp12 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %28 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable40 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %28, i32 0, i32 2
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable40, align 8
  %cmp41 = icmp eq %struct._GimpViewable* %27, %29
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  br label %return

if.end.43:                                        ; preds = %do.end.39
  %30 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %31 = bitcast %struct._GimpView* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 0), align 4
  %33 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable44 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %33, i32 0, i32 2
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable44, align 8
  %35 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0, %struct._GimpViewable* %34, %struct._GimpViewable* %35)
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.else.37, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext* %context, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %border_width, i32 %is_popup, i32 %clickable, i32 %show_popup) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %clickable.addr = alloca i32, align 4
  %show_popup.addr = alloca i32, align 4
  %view = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  store i32 %clickable, i32* %clickable.addr, align 4
  store i32 %show_popup, i32* %show_popup.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp = icmp eq %struct._GimpContext* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_view_new_full, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_view_new_full, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call i64 @gimp_view_get_type() #5
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type42, align 8
  %32 = load i32, i32* %width.addr, align 4
  %33 = load i32, i32* %height.addr, align 4
  %34 = load i32, i32* %border_width.addr, align 4
  %35 = load i32, i32* %is_popup.addr, align 4
  %36 = load i32, i32* %clickable.addr, align 4
  %37 = load i32, i32* %show_popup.addr, align 4
  %call43 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %27, i64 %call40, i64 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %view, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool44 = icmp ne %struct._GtkWidget* %38, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %do.end.39
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_view_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call46)
  %41 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpView*
  %42 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %41, %struct._GimpViewable* %42)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %do.end.39
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_view_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call49)
  %45 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %45, i32 0, i32 3
  %46 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.37, %if.else.10
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %context, i64 %view_type, i64 %viewable_type, i32 %width, i32 %height, i32 %border_width, i32 %is_popup, i32 %clickable, i32 %show_popup) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_type.addr = alloca i64, align 8
  %viewable_type.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %clickable.addr = alloca i32, align 4
  %show_popup.addr = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %view = alloca %struct._GimpView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %view_type, i64* %view_type.addr, align 8
  store i64 %viewable_type, i64* %viewable_type.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  store i32 %clickable, i32* %clickable.addr, align 4
  store i32 %show_popup, i32* %show_popup.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp = icmp eq %struct._GimpContext* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i64, i64* %view_type.addr, align 8
  %call13 = call i64 @gimp_view_get_type() #5
  %call14 = call i32 @g_type_is_a(i64 %14, i64 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %15 = load i64, i64* %viewable_type.addr, align 8
  %call21 = call i64 @gimp_viewable_get_type() #5
  %call22 = call i32 @g_type_is_a(i64 %15, i64 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.20
  br label %if.end.26

if.else.25:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %16 = load i32, i32* %width.addr, align 4
  %cmp29 = icmp sgt i32 %16, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.33

land.lhs.true.30:                                 ; preds = %do.body.28
  %17 = load i32, i32* %width.addr, align 4
  %cmp31 = icmp sle i32 %17, 2048
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.30
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.30, %do.body.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %18 = load i32, i32* %height.addr, align 4
  %cmp37 = icmp sgt i32 %18, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %do.body.36
  %19 = load i32, i32* %height.addr, align 4
  %cmp39 = icmp sle i32 %19, 2048
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.38
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.38, %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %20 = load i32, i32* %border_width.addr, align 4
  %cmp45 = icmp sge i32 %20, 0
  br i1 %cmp45, label %land.lhs.true.46, label %if.else.49

land.lhs.true.46:                                 ; preds = %do.body.44
  %21 = load i32, i32* %border_width.addr, align 4
  %cmp47 = icmp sle i32 %21, 16
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %land.lhs.true.46
  br label %if.end.50

if.else.49:                                       ; preds = %land.lhs.true.46, %do.body.44
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = load i64, i64* %viewable_type.addr, align 8
  %24 = load i32, i32* %width.addr, align 4
  %25 = load i32, i32* %height.addr, align 4
  %26 = load i32, i32* %border_width.addr, align 4
  %27 = load i32, i32* %is_popup.addr, align 4
  %call52 = call %struct._GimpViewRenderer* @gimp_view_renderer_new_full(%struct._GimpContext* %22, i64 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store %struct._GimpViewRenderer* %call52, %struct._GimpViewRenderer** %renderer, align 8
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.51
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %cmp54 = icmp ne %struct._GimpViewRenderer* %28, null
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.53
  br label %if.end.57

if.else.56:                                       ; preds = %do.body.53
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_new_full_by_types, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.57:                                        ; preds = %if.then.55
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %29 = load i64, i64* %view_type.addr, align 8
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %29, i8* null)
  %30 = bitcast i8* %call59 to %struct._GimpView*
  store %struct._GimpView* %30, %struct._GimpView** %view, align 8
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %32 = bitcast %struct._GimpViewRenderer* %31 to i8*
  %33 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %34 = bitcast %struct._GimpView* %33 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpView*)* @gimp_view_update_callback to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %36 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer61 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %36, i32 0, i32 3
  store %struct._GimpViewRenderer* %35, %struct._GimpViewRenderer** %renderer61, align 8
  %37 = load i32, i32* %clickable.addr, align 4
  %tobool62 = icmp ne i32 %37, 0
  %cond = select i1 %tobool62, i32 1, i32 0
  %38 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %clickable63 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %38, i32 0, i32 4
  %39 = trunc i32 %cond to i8
  %bf.load = load i8, i8* %clickable63, align 8
  %bf.value = and i8 %39, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %clickable63, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %40 = load i32, i32* %show_popup.addr, align 4
  %tobool64 = icmp ne i32 %40, 0
  %cond65 = select i1 %tobool64, i32 1, i32 0
  %41 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %show_popup66 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %41, i32 0, i32 4
  %42 = trunc i32 %cond65 to i8
  %bf.load67 = load i8, i8* %show_popup66, align 8
  %bf.value68 = and i8 %42, 1
  %bf.shl = shl i8 %bf.value68, 2
  %bf.clear69 = and i8 %bf.load67, -5
  %bf.set70 = or i8 %bf.clear69, %bf.shl
  store i8 %bf.set70, i8* %show_popup66, align 8
  %bf.result.cast71 = zext i8 %bf.value68 to i32
  %43 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %44 = bitcast %struct._GimpView* %43 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_widget_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call72)
  %45 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkWidget*
  store %struct._GtkWidget* %45, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.58, %if.else.56, %if.else.49, %if.else.41, %if.else.33, %if.else.25, %if.else.17, %if.else.10
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %46
}

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext*, i64, i32, i32, i32) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_update_callback(%struct._GimpViewRenderer* %renderer, %struct._GimpView* %view) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %view.addr = alloca %struct._GimpView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_requisition(%struct._GtkWidget* %3, %struct._GtkRequisition* %requisition)
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 4
  %5 = load i32, i32* %width2, align 4
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 6
  %7 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 %5, %mul
  store i32 %add, i32* %width, align 4
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 5
  %9 = load i32, i32* %height3, align 4
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 6
  %11 = load i32, i32* %border_width4, align 4
  %mul5 = mul nsw i32 2, %11
  %add6 = add nsw i32 %9, %mul5
  store i32 %add6, i32* %height, align 4
  %12 = load i32, i32* %width, align 4
  %width7 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %13 = load i32, i32* %width7, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %height, align 4
  %height8 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %15 = load i32, i32* %height8, align 4
  %cmp9 = icmp ne i32 %14, %15
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %16)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GimpViewRenderer* @gimp_view_renderer_new_full(%struct._GimpContext*, i64, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpViewable* @gimp_view_get_viewable(%struct._GimpView* %view) #3 {
entry:
  %retval = alloca %struct._GimpViewable*, align 8
  %view.addr = alloca %struct._GimpView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_get_viewable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 2
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  store %struct._GimpViewable* %14, %struct._GimpViewable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %retval
  ret %struct._GimpViewable* %15
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_set_expand(%struct._GimpView* %view, i32 %expand) #3 {
entry:
  %view.addr = alloca %struct._GimpView*, align 8
  %expand.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  store i32 %expand, i32* %expand.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_view_set_expand, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %expand11 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 4
  %bf.load = load i8, i8* %expand11, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %14 = load i32, i32* %expand.addr, align 4
  %cmp12 = icmp ne i32 %bf.cast, %14
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %do.end
  %15 = load i32, i32* %expand.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %16 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %expand15 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 4
  %17 = trunc i32 %cond to i8
  %bf.load16 = load i8, i8* %expand15, align 8
  %bf.value = and i8 %17, 1
  %bf.shl = shl i8 %bf.value, 3
  %bf.clear17 = and i8 %bf.load16, -9
  %bf.set = or i8 %bf.clear17, %bf.shl
  store i8 %bf.set, i8* %expand15, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %18 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %19 = bitcast %struct._GimpView* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_class_init(%struct._GimpViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpViewClass* %klass, %struct._GimpViewClass** %klass.addr, align 8
  %0 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpViewClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_viewable_get_type() #5
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 %8, i32 1, i32 720, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__OBJECT_OBJECT, i64 4, i32 2, i64 %call3, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpViewClass* %9 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type6, align 8
  %call7 = call i64 @gdk_modifier_type_get_type() #5
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 %11, i32 1, i32 728, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__FLAGS, i64 4, i32 1, i64 %call7)
  store i32 %call8, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpViewClass* %12 to %struct._GTypeClass*
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type9, align 8
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i64 %14, i32 1, i32 736, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call10, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpViewClass* %15 to %struct._GTypeClass*
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type11, align 8
  %call12 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 %17, i32 1, i32 744, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call12, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 3), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %19 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 1), align 4
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %activate_signal = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %20, i32 0, i32 1
  store i32 %19, i32* %activate_signal, align 4
  %21 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %21, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_view_realize, void (%struct._GtkWidget*)** %realize, align 8
  %22 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %22, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_view_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %23 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %23, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gimp_view_map, void (%struct._GtkWidget*)** %map, align 8
  %24 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %24, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_view_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %25 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %25, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_view_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %26 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %26, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_view_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %27 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %27, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_view_expose_event, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %28 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %28, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_view_button_press_event, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %29 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %29, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_view_button_release_event, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %30 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %enter_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %30, i32 0, i32 34
  store i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @gimp_view_enter_notify_event, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %enter_notify_event, align 8
  %31 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %leave_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %31, i32 0, i32 35
  store i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @gimp_view_leave_notify_event, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %leave_notify_event, align 8
  %32 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %set_viewable = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %32, i32 0, i32 1
  store void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)* @gimp_view_real_set_viewable, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)** %set_viewable, align 8
  %33 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %clicked = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %33, i32 0, i32 2
  store void (%struct._GimpView*, i32)* null, void (%struct._GimpView*, i32)** %clicked, align 8
  %34 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %double_clicked = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %34, i32 0, i32 3
  store void (%struct._GimpView*)* null, void (%struct._GimpView*)** %double_clicked, align 8
  %35 = load %struct._GimpViewClass*, %struct._GimpViewClass** %klass.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %35, i32 0, i32 4
  store void (%struct._GimpView*)* null, void (%struct._GimpView*)** %context, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__OBJECT_OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__FLAGS(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 2
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %5, %struct._GimpViewable* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %6, i32 0, i32 3
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool2 = icmp ne %struct._GimpViewRenderer* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %10 = bitcast %struct._GimpViewRenderer* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer5 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %11, i32 0, i32 3
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %renderer5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %12 = load i8*, i8** @gimp_view_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 5
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GimpView*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %attributes = alloca %struct._GdkWindowAttr, align 8
  %attributes_mask = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load i8*, i8** @gimp_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 10
  %6 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %allocation)
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 9
  store i32 2, i32* %window_type, align 4
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %x4 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 2
  store i32 %9, i32* %x4, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %y5 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 3
  store i32 %10, i32* %y5, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %width6 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 %11, i32* %width6, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %12 = load i32, i32* %height, align 4
  %height7 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 %12, i32* %height7, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 6
  store i32 1, i32* %wclass, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call i32 @gtk_widget_get_events(%struct._GtkWidget* %13)
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 1
  store i32 %call8, i32* %event_mask, align 4
  store i32 12, i32* %attributes_mask, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %14)
  %15 = load i32, i32* %attributes_mask, align 4
  %call10 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %call9, %struct._GdkWindowAttr* %attributes, i32 %15)
  %16 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 1
  store %struct._GdkDrawable* %call10, %struct._GdkDrawable** %event_window, align 8
  %17 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window11 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %17, i32 0, i32 1
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window11, align 8
  %19 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %20 = bitcast %struct._GimpView* %19 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %18, i8* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window2 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 1
  %6 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window2, align 8
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %6, i8* null)
  %7 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window3 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %7, i32 0, i32 1
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window3, align 8
  call void @gdk_window_destroy(%struct._GdkDrawable* %8)
  %9 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 1
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %event_window4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 11
  %13 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %13(%struct._GtkWidget* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_map(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load i8*, i8** @gimp_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 8
  %6 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %map, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkWidget* %7)
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 1
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window4, align 8
  call void @gdk_window_show(%struct._GdkDrawable* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %has_grab = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 4
  %bf.load = load i8, i8* %has_grab, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %4)
  %5 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %has_grab2 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 4
  %bf.load3 = load i8, i8* %has_grab2, align 8
  %bf.clear4 = and i8 %bf.load3, -33
  store i8 %bf.clear4, i8* %has_grab2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %6, i32 0, i32 1
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  %tobool5 = icmp ne %struct._GdkDrawable* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window7 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 1
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window7, align 8
  call void @gdk_window_hide(%struct._GdkDrawable* %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %10 = load i8*, i8** @gimp_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call9 = call i64 @gtk_widget_get_type() #5
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call9)
  %12 = bitcast %struct._GTypeClass* %call10 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 9
  %13 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %13(%struct._GtkWidget* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %expand = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 4
  %bf.load = load i8, i8* %expand, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %4, i32 0, i32 3
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 6
  %6 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %6
  %add = add nsw i32 %mul, 1
  %7 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %7, i32 0, i32 0
  store i32 %add, i32* %width, align 4
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer2 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer2, align 8
  %border_width3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 6
  %10 = load i32, i32* %border_width3, align 4
  %mul4 = mul nsw i32 2, %10
  %add5 = add nsw i32 %mul4, 1
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %11, i32 0, i32 1
  store i32 %add5, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer6 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 3
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer6, align 8
  %width7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 4
  %14 = load i32, i32* %width7, align 4
  %15 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer8 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %15, i32 0, i32 3
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer8, align 8
  %border_width9 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 6
  %17 = load i32, i32* %border_width9, align 4
  %mul10 = mul nsw i32 2, %17
  %add11 = add nsw i32 %14, %mul10
  %18 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %18, i32 0, i32 0
  store i32 %add11, i32* %width12, align 4
  %19 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer13 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %19, i32 0, i32 3
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer13, align 8
  %height14 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 5
  %21 = load i32, i32* %height14, align 4
  %22 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer15 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %22, i32 0, i32 3
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer15, align 8
  %border_width16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 6
  %24 = load i32, i32* %border_width16, align 4
  %mul17 = mul nsw i32 2, %24
  %add18 = add nsw i32 %21, %mul17
  %25 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %25, i32 0, i32 1
  store i32 %add18, i32* %height19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %view = alloca %struct._GimpView*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %border_width30 = alloca i32, align 4
  %view_width = alloca i32, align 4
  %view_height = alloca i32, align 4
  %scaled_width = alloca i32, align 4
  %scaled_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %expand = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 4
  %bf.load = load i8, i8* %expand, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.72

if.then:                                          ; preds = %entry
  %4 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %4, i32 0, i32 2
  %5 = load i32, i32* %width2, align 4
  %6 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %6, i32 0, i32 3
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 6
  %8 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %8
  %sub = sub nsw i32 %5, %mul
  %cmp = icmp slt i32 2048, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %9, i32 0, i32 2
  %10 = load i32, i32* %width3, align 4
  %11 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %11, i32 0, i32 3
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %border_width5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 6
  %13 = load i32, i32* %border_width5, align 4
  %mul6 = mul nsw i32 2, %13
  %sub7 = sub nsw i32 %10, %mul6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2048, %cond.true ], [ %sub7, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 3
  %15 = load i32, i32* %height8, align 4
  %16 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer9 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 3
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer9, align 8
  %border_width10 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 6
  %18 = load i32, i32* %border_width10, align 4
  %mul11 = mul nsw i32 2, %18
  %sub12 = sub nsw i32 %15, %mul11
  %cmp13 = icmp slt i32 2048, %sub12
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.21

cond.false.15:                                    ; preds = %cond.end
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 3
  %20 = load i32, i32* %height16, align 4
  %21 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer17 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %21, i32 0, i32 3
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer17, align 8
  %border_width18 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 6
  %23 = load i32, i32* %border_width18, align 4
  %mul19 = mul nsw i32 2, %23
  %sub20 = sub nsw i32 %20, %mul19
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.15, %cond.true.14
  %cond22 = phi i32 [ 2048, %cond.true.14 ], [ %sub20, %cond.false.15 ]
  store i32 %cond22, i32* %height, align 4
  %24 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer23 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %24, i32 0, i32 3
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer23, align 8
  %width24 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %25, i32 0, i32 4
  %26 = load i32, i32* %width24, align 4
  %27 = load i32, i32* %width, align 4
  %cmp25 = icmp ne i32 %26, %27
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.21
  %28 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer26 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %28, i32 0, i32 3
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer26, align 8
  %height27 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %29, i32 0, i32 5
  %30 = load i32, i32* %height27, align 4
  %31 = load i32, i32* %height, align 4
  %cmp28 = icmp ne i32 %30, %31
  br i1 %cmp28, label %if.then.29, label %if.end.71

if.then.29:                                       ; preds = %lor.lhs.false, %cond.end.21
  %32 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer31 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %32, i32 0, i32 3
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer31, align 8
  %border_width32 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 6
  %34 = load i32, i32* %border_width32, align 4
  store i32 %34, i32* %border_width30, align 4
  %35 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer33 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %35, i32 0, i32 3
  %36 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer33, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %36, i32 0, i32 14
  %37 = load i32, i32* %size, align 4
  %cmp34 = icmp ne i32 %37, -1
  br i1 %cmp34, label %land.lhs.true, label %if.else.67

land.lhs.true:                                    ; preds = %if.then.29
  %38 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer35 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %38, i32 0, i32 3
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer35, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %39, i32 0, i32 3
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool36 = icmp ne %struct._GimpViewable* %40, null
  br i1 %tobool36, label %if.then.37, label %if.else.67

if.then.37:                                       ; preds = %land.lhs.true
  %41 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer38 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %41, i32 0, i32 3
  %42 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer38, align 8
  %viewable39 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %42, i32 0, i32 3
  %43 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable39, align 8
  %44 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer40 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %44, i32 0, i32 3
  %45 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer40, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %45, i32 0, i32 7
  %bf.load41 = load i8, i8* %is_popup, align 4
  %bf.lshr42 = lshr i8 %bf.load41, 1
  %bf.clear43 = and i8 %bf.lshr42, 1
  %bf.cast44 = zext i8 %bf.clear43 to i32
  %46 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer45 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %46, i32 0, i32 3
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer45, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %47, i32 0, i32 7
  %bf.load46 = load i8, i8* %dot_for_dot, align 4
  %bf.clear47 = and i8 %bf.load46, 1
  %bf.cast48 = zext i8 %bf.clear47 to i32
  call void @gimp_viewable_get_preview_size(%struct._GimpViewable* %43, i32 2048, i32 %bf.cast44, i32 %bf.cast48, i32* %view_width, i32* %view_height)
  %48 = load i32, i32* %view_width, align 4
  %49 = load i32, i32* %view_height, align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  call void @gimp_viewable_calc_preview_size(i32 %48, i32 %49, i32 %50, i32 %51, i32 1, double 1.000000e+00, double 1.000000e+00, i32* %scaled_width, i32* %scaled_height, i32* null)
  %52 = load i32, i32* %scaled_width, align 4
  %53 = load i32, i32* %width, align 4
  %cmp49 = icmp sgt i32 %52, %53
  br i1 %cmp49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.then.37
  %54 = load i32, i32* %scaled_height, align 4
  %55 = load i32, i32* %width, align 4
  %mul51 = mul nsw i32 %54, %55
  %56 = load i32, i32* %scaled_width, align 4
  %div = sdiv i32 %mul51, %56
  store i32 %div, i32* %scaled_height, align 4
  %57 = load i32, i32* %scaled_width, align 4
  %58 = load i32, i32* %width, align 4
  %mul52 = mul nsw i32 %57, %58
  %59 = load i32, i32* %scaled_width, align 4
  %div53 = sdiv i32 %mul52, %59
  store i32 %div53, i32* %scaled_width, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.then.37
  %60 = load i32, i32* %scaled_height, align 4
  %61 = load i32, i32* %height, align 4
  %cmp54 = icmp sgt i32 %60, %61
  br i1 %cmp54, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %if.else
  %62 = load i32, i32* %scaled_width, align 4
  %63 = load i32, i32* %height, align 4
  %mul56 = mul nsw i32 %62, %63
  %64 = load i32, i32* %scaled_height, align 4
  %div57 = sdiv i32 %mul56, %64
  store i32 %div57, i32* %scaled_width, align 4
  %65 = load i32, i32* %scaled_height, align 4
  %66 = load i32, i32* %height, align 4
  %mul58 = mul nsw i32 %65, %66
  %67 = load i32, i32* %scaled_height, align 4
  %div59 = sdiv i32 %mul58, %67
  store i32 %div59, i32* %scaled_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.55, %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end, %if.then.50
  %68 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer61 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %68, i32 0, i32 3
  %69 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer61, align 8
  %70 = load i32, i32* %scaled_width, align 4
  %71 = load i32, i32* %scaled_height, align 4
  %cmp62 = icmp sgt i32 %70, %71
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.end.60
  %72 = load i32, i32* %scaled_width, align 4
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.end.60
  %73 = load i32, i32* %scaled_height, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi i32 [ %72, %cond.true.63 ], [ %73, %cond.false.64 ]
  %74 = load i32, i32* %border_width30, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %69, i32 %cond66, i32 %74)
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true, %if.then.29
  %75 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer68 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %75, i32 0, i32 3
  %76 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer68, align 8
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %border_width30, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %76, i32 %77, i32 %78, i32 %79)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %cond.end.65
  %80 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer70 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %80, i32 0, i32 3
  %81 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer70, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %81)
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.69, %lor.lhs.false
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %entry
  %82 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer73 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %82, i32 0, i32 3
  %83 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer73, align 8
  %width74 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %83, i32 0, i32 4
  %84 = load i32, i32* %width74, align 4
  %85 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer75 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %85, i32 0, i32 3
  %86 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer75, align 8
  %border_width76 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %86, i32 0, i32 6
  %87 = load i32, i32* %border_width76, align 4
  %mul77 = mul nsw i32 2, %87
  %add = add nsw i32 %84, %mul77
  store i32 %add, i32* %width, align 4
  %88 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer78 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %88, i32 0, i32 3
  %89 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer78, align 8
  %height79 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %89, i32 0, i32 5
  %90 = load i32, i32* %height79, align 4
  %91 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer80 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %91, i32 0, i32 3
  %92 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer80, align 8
  %border_width81 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %92, i32 0, i32 6
  %93 = load i32, i32* %border_width81, align 4
  %mul82 = mul nsw i32 2, %93
  %add83 = add nsw i32 %90, %mul82
  store i32 %add83, i32* %height, align 4
  %94 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width84 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %94, i32 0, i32 2
  %95 = load i32, i32* %width84, align 4
  %96 = load i32, i32* %width, align 4
  %cmp85 = icmp sgt i32 %95, %96
  br i1 %cmp85, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.end.72
  %97 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width87 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %97, i32 0, i32 2
  %98 = load i32, i32* %width87, align 4
  %99 = load i32, i32* %width, align 4
  %sub88 = sub nsw i32 %98, %99
  %div89 = sdiv i32 %sub88, 2
  %100 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %100, i32 0, i32 0
  %101 = load i32, i32* %x, align 4
  %add90 = add nsw i32 %101, %div89
  store i32 %add90, i32* %x, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.end.72
  %102 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height92 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %102, i32 0, i32 3
  %103 = load i32, i32* %height92, align 4
  %104 = load i32, i32* %height, align 4
  %cmp93 = icmp sgt i32 %103, %104
  br i1 %cmp93, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %if.end.91
  %105 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height95 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %105, i32 0, i32 3
  %106 = load i32, i32* %height95, align 4
  %107 = load i32, i32* %height, align 4
  %sub96 = sub nsw i32 %106, %107
  %div97 = sdiv i32 %sub96, 2
  %108 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %108, i32 0, i32 1
  %109 = load i32, i32* %y, align 4
  %add98 = add nsw i32 %109, %div97
  store i32 %add98, i32* %y, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.94, %if.end.91
  %110 = load i32, i32* %width, align 4
  %111 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width100 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %111, i32 0, i32 2
  store i32 %110, i32* %width100, align 4
  %112 = load i32, i32* %height, align 4
  %113 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height101 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %113, i32 0, i32 3
  store i32 %112, i32* %height101, align 4
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %115 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %114, %struct._GdkRectangle* %115)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call102 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %116)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.99
  %117 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %event_window = getelementptr inbounds %struct._GimpView, %struct._GimpView* %117, i32 0, i32 1
  %118 = load %struct._GdkDrawable*, %struct._GdkDrawable** %event_window, align 8
  %119 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %119, i32 0, i32 0
  %120 = load i32, i32* %x105, align 4
  %121 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y106 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %121, i32 0, i32 1
  %122 = load i32, i32* %y106, align 4
  %123 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %123, i32 0, i32 2
  %124 = load i32, i32* %width107, align 4
  %125 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height108 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %125, i32 0, i32 3
  %126 = load i32, i32* %height108, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %118, i32 %120, i32 %122, i32 %124, i32 %126)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.end.99
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 1
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %3)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %5 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %5, i32 0, i32 4
  %6 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %4, %struct._GdkRegion* %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %conv = sitofp i32 %9 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %conv2 = sitofp i32 %10 to double
  call void @cairo_translate(%struct._cairo* %8, double %conv, double %conv2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_view_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 3
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  call void @gimp_view_renderer_draw(%struct._GimpViewRenderer* %14, %struct._GtkWidget* %15, %struct._cairo* %16, i32 %17, i32 %18)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @gimp_debug_memsize, align 4
  %7 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %7, i32 0, i32 2
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %10, i64* null)
  store i32 0, i32* @gimp_debug_memsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %clickable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %11, i32 0, i32 4
  %bf.load = load i8, i8* %clickable, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %12 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %show_popup = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 4
  %bf.load7 = load i8, i8* %show_popup, align 8
  %bf.lshr = lshr i8 %bf.load7, 2
  %bf.clear8 = and i8 %bf.lshr, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.6, %if.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type17 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 0
  %15 = load i32, i32* %type17, align 4
  %cmp18 = icmp eq i32 %15, 4
  br i1 %cmp18, label %if.then.19, label %if.else.69

if.then.19:                                       ; preds = %if.end.16
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %17 = bitcast %struct._GdkEventButton* %16 to %union._GdkEvent*
  %call20 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %17)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %18 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %press_state = getelementptr inbounds %struct._GimpView, %struct._GimpView* %18, i32 0, i32 5
  store i32 0, i32* %press_state, align 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %20, i32 %21, i32 0)
  br label %if.end.68

if.else:                                          ; preds = %if.then.19
  %22 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button23 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %22, i32 0, i32 8
  %23 = load i32, i32* %button23, align 4
  %cmp24 = icmp eq i32 %23, 1
  br i1 %cmp24, label %if.then.25, label %if.else.48

if.then.25:                                       ; preds = %if.else
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %24)
  %25 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %has_grab = getelementptr inbounds %struct._GimpView, %struct._GimpView* %25, i32 0, i32 4
  %bf.load26 = load i8, i8* %has_grab, align 8
  %bf.clear27 = and i8 %bf.load26, -33
  %bf.set = or i8 %bf.clear27, 32
  store i8 %bf.set, i8* %has_grab, align 8
  %26 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %26, i32 0, i32 7
  %27 = load i32, i32* %state, align 4
  %28 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %press_state28 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %28, i32 0, i32 5
  store i32 %27, i32* %press_state28, align 4
  %29 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %show_popup29 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %29, i32 0, i32 4
  %bf.load30 = load i8, i8* %show_popup29, align 8
  %bf.lshr31 = lshr i8 %bf.load30, 2
  %bf.clear32 = and i8 %bf.lshr31, 1
  %bf.cast33 = zext i8 %bf.clear32 to i32
  %tobool34 = icmp ne i32 %bf.cast33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.47

land.lhs.true.35:                                 ; preds = %if.then.25
  %30 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable36 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %30, i32 0, i32 2
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable36, align 8
  %tobool37 = icmp ne %struct._GimpViewable* %31, null
  br i1 %tobool37, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %land.lhs.true.35
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %34 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %34, i32 0, i32 3
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %35, i32 0, i32 1
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %37 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable39 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %37, i32 0, i32 2
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable39, align 8
  %39 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer40 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %39, i32 0, i32 3
  %40 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer40, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %40, i32 0, i32 4
  %41 = load i32, i32* %width, align 4
  %42 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer41 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %42, i32 0, i32 3
  %43 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer41, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %43, i32 0, i32 5
  %44 = load i32, i32* %height, align 4
  %45 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer42 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %45, i32 0, i32 3
  %46 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer42, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %46, i32 0, i32 7
  %bf.load43 = load i8, i8* %dot_for_dot, align 4
  %bf.clear44 = and i8 %bf.load43, 1
  %bf.cast45 = zext i8 %bf.clear44 to i32
  %call46 = call i32 @gimp_view_popup_show(%struct._GtkWidget* %32, %struct._GdkEventButton* %33, %struct._GimpContext* %36, %struct._GimpViewable* %38, i32 %41, i32 %44, i32 %bf.cast45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.then.25
  br label %if.end.67

if.else.48:                                       ; preds = %if.else
  %47 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %press_state49 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %47, i32 0, i32 5
  store i32 0, i32* %press_state49, align 4
  %48 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button50 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %48, i32 0, i32 8
  %49 = load i32, i32* %button50, align 4
  %cmp51 = icmp eq i32 %49, 2
  br i1 %cmp51, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %if.else.48
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %51 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %52 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer53 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %52, i32 0, i32 3
  %53 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer53, align 8
  %context54 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %53, i32 0, i32 1
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context54, align 8
  %55 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable55 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %55, i32 0, i32 2
  %56 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable55, align 8
  %57 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer56 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %57, i32 0, i32 3
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer56, align 8
  %width57 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %58, i32 0, i32 4
  %59 = load i32, i32* %width57, align 4
  %60 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer58 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %60, i32 0, i32 3
  %61 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer58, align 8
  %height59 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %61, i32 0, i32 5
  %62 = load i32, i32* %height59, align 4
  %63 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer60 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %63, i32 0, i32 3
  %64 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer60, align 8
  %dot_for_dot61 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %64, i32 0, i32 7
  %bf.load62 = load i8, i8* %dot_for_dot61, align 4
  %bf.clear63 = and i8 %bf.load62, 1
  %bf.cast64 = zext i8 %bf.clear63 to i32
  %call65 = call i32 @gimp_view_popup_show(%struct._GtkWidget* %50, %struct._GdkEventButton* %51, %struct._GimpContext* %54, %struct._GimpViewable* %56, i32 %59, i32 %62, i32 %bf.cast64)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.52, %if.else.48
  store i32 0, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.47
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.22
  br label %if.end.78

if.else.69:                                       ; preds = %if.end.16
  %65 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type70 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %65, i32 0, i32 0
  %66 = load i32, i32* %type70, align 4
  %cmp71 = icmp eq i32 %66, 5
  br i1 %cmp71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.else.69
  %67 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button73 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %67, i32 0, i32 8
  %68 = load i32, i32* %button73, align 4
  %cmp74 = icmp eq i32 %68, 1
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.72
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %70, i32 %71, i32 0)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.else.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.68
  %72 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %eat_button_events = getelementptr inbounds %struct._GimpView, %struct._GimpView* %72, i32 0, i32 4
  %bf.load79 = load i8, i8* %eat_button_events, align 8
  %bf.lshr80 = lshr i8 %bf.load79, 1
  %bf.clear81 = and i8 %bf.lshr80, 1
  %bf.cast82 = zext i8 %bf.clear81 to i32
  %tobool83 = icmp ne i32 %bf.cast82, 0
  %cond = select i1 %tobool83, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.end.66, %if.then.15, %if.then.11
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_button_release_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %clickable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 4
  %bf.load = load i8, i8* %clickable, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %show_popup = getelementptr inbounds %struct._GimpView, %struct._GimpView* %4, i32 0, i32 4
  %bf.load2 = load i8, i8* %show_popup, align 8
  %bf.lshr = lshr i8 %bf.load2, 2
  %bf.clear3 = and i8 %bf.lshr, 1
  %bf.cast4 = zext i8 %bf.clear3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %7)
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %has_grab = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 4
  %bf.load7 = load i8, i8* %has_grab, align 8
  %bf.clear8 = and i8 %bf.load7, -33
  store i8 %bf.clear8, i8* %has_grab, align 8
  %9 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %clickable9 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 4
  %bf.load10 = load i8, i8* %clickable9, align 8
  %bf.clear11 = and i8 %bf.load10, 1
  %bf.cast12 = zext i8 %bf.clear11 to i32
  %tobool13 = icmp ne i32 %bf.cast12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.21

land.lhs.true.14:                                 ; preds = %if.then.6
  %10 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %in_button = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 4
  %bf.load15 = load i8, i8* %in_button, align 8
  %bf.lshr16 = lshr i8 %bf.load15, 4
  %bf.clear17 = and i8 %bf.lshr16, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %tobool19 = icmp ne i32 %bf.cast18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.14
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @view_signals, i32 0, i64 1), align 4
  %14 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %press_state = getelementptr inbounds %struct._GimpView, %struct._GimpView* %14, i32 0, i32 5
  %15 = load i32, i32* %press_state, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %12, i32 %13, i32 0, i32 %15)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.14, %if.then.6
  br label %if.end.22

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.21
  %16 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %eat_button_events = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 4
  %bf.load23 = load i8, i8* %eat_button_events, align 8
  %bf.lshr24 = lshr i8 %bf.load23, 1
  %bf.clear25 = and i8 %bf.lshr24, 1
  %bf.cast26 = zext i8 %bf.clear25 to i32
  %tobool27 = icmp ne i32 %bf.cast26, 0
  %cond = select i1 %tobool27, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_enter_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  %view = alloca %struct._GimpView*, align 8
  %event_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %4 = bitcast %struct._GdkEventCrossing* %3 to %union._GdkEvent*
  %call2 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %event_widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %detail = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %7, i32 0, i32 10
  %8 = load i32, i32* %detail, align 4
  %cmp3 = icmp ne i32 %8, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %in_button = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 4
  %bf.load = load i8, i8* %in_button, align 8
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %in_button, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_leave_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  %view = alloca %struct._GimpView*, align 8
  %event_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %4 = bitcast %struct._GdkEventCrossing* %3 to %union._GdkEvent*
  %call2 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %event_widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %detail = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %7, i32 0, i32 10
  %8 = load i32, i32* %detail, align 4
  %cmp3 = icmp ne i32 %8, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %in_button = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 4
  %bf.load = load i8, i8* %in_button, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, i8* %in_button, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_real_set_viewable(%struct._GimpView* %view, %struct._GimpViewable* %old, %struct._GimpViewable* %viewable) #3 {
entry:
  %view.addr = alloca %struct._GimpView*, align 8
  %old.addr = alloca %struct._GimpViewable*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %viewable_type = alloca i64, align 8
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  store %struct._GimpViewable* %old, %struct._GimpViewable** %old.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i64 4, i64* %viewable_type, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable1 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %1, i32 0, i32 2
  %2 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable1, align 8
  %cmp = icmp eq %struct._GimpViewable* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.73

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  store i64 %7, i64* %viewable_type, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %8 = load i64, i64* %viewable_type, align 8
  %9 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 3
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable_type3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 2
  %11 = load i64, i64* %viewable_type3, align 8
  %call = call i32 @g_type_is_a(i64 %8, i64 %11)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_real_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.73

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %if.end
  %12 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable8 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 2
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable8, align 8
  %tobool9 = icmp ne %struct._GimpViewable* %13, null
  br i1 %tobool9, label %if.then.10, label %if.else.37

if.then.10:                                       ; preds = %if.end.7
  %14 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable11 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %14, i32 0, i32 2
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable11, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %18 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable13 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %18, i32 0, i32 2
  %19 = bitcast %struct._GimpViewable** %viewable13 to i8*
  %20 = bitcast i8* %19 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %17, i8** %20)
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool14 = icmp ne %struct._GimpViewable* %21, null
  br i1 %tobool14, label %if.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.10
  %22 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer15 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %22, i32 0, i32 3
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer15, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 7
  %bf.load = load i8, i8* %is_popup, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool16 = icmp ne i32 %bf.cast, 0
  br i1 %tobool16, label %if.end.36, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %24 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %25 = bitcast %struct._GimpView* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  %27 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable20 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %27, i32 0, i32 2
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable20, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type22, align 8
  %call23 = call i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget* %26, i64 %31)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %if.then.17
  %32 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable26 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %32, i32 0, i32 2
  %33 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable26, align 8
  %call27 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %33, i32* null, i32* null)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.25
  %34 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %35 = bitcast %struct._GimpView* %34 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_widget_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call30)
  %36 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWidget*
  call void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.25
  %37 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %38 = bitcast %struct._GimpView* %37 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_widget_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call33)
  %39 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWidget*
  call void @gtk_drag_source_unset(%struct._GtkWidget* %39)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.then.17
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %if.then.10
  br label %if.end.64

if.else.37:                                       ; preds = %if.end.7
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool38 = icmp ne %struct._GimpViewable* %40, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.63

land.lhs.true.39:                                 ; preds = %if.else.37
  %41 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer40 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %41, i32 0, i32 3
  %42 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer40, align 8
  %is_popup41 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %42, i32 0, i32 7
  %bf.load42 = load i8, i8* %is_popup41, align 4
  %bf.lshr43 = lshr i8 %bf.load42, 1
  %bf.clear44 = and i8 %bf.lshr43, 1
  %bf.cast45 = zext i8 %bf.clear44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %if.end.63, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.39
  %43 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %44 = bitcast %struct._GimpView* %43 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_widget_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call48)
  %45 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkWidget*
  %46 = load i64, i64* %viewable_type, align 8
  %call50 = call i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget* %45, i32 768, i64 %46, i32 2)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %if.then.47
  %47 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %48 = bitcast %struct._GimpView* %47 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_widget_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call53)
  %49 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkWidget*
  %50 = load i64, i64* %viewable_type, align 8
  %call55 = call i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget* %49, i64 %50, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* @gimp_view_drag_viewable, i8* null)
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call56 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %51, i32* null, i32* null)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.then.52
  %52 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %53 = bitcast %struct._GimpView* %52 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_widget_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call59)
  %54 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkWidget*
  call void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget* %54, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* @gimp_view_drag_pixbuf, i8* null)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.47
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.39, %if.else.37
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.36
  %55 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer65 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %55, i32 0, i32 3
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer65, align 8
  %57 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %56, %struct._GimpViewable* %57)
  %58 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %59 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable66 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %59, i32 0, i32 2
  store %struct._GimpViewable* %58, %struct._GimpViewable** %viewable66, align 8
  %60 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable67 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %60, i32 0, i32 2
  %61 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable67, align 8
  %tobool68 = icmp ne %struct._GimpViewable* %61, null
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.64
  %62 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable70 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %62, i32 0, i32 2
  %63 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable70, align 8
  %64 = bitcast %struct._GimpViewable* %63 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  %66 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %viewable72 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %66, i32 0, i32 2
  %67 = bitcast %struct._GimpViewable** %viewable72 to i8*
  %68 = bitcast i8* %67 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %65, i8** %68)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then, %if.else, %if.then.69, %if.end.64
  ret void
}

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_events(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #1

declare void @gdk_window_destroy(%struct._GdkDrawable*) #1

declare void @gdk_window_show(%struct._GdkDrawable*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_window_hide(%struct._GdkDrawable*) #1

declare void @gimp_viewable_get_preview_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer*, i32, i32, i32) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gimp_view_renderer_draw(%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare i32 @gimp_view_popup_show(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

declare i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget*, i64) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget*) #1

declare void @gtk_drag_source_unset(%struct._GtkWidget*) #1

declare i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget*, i32, i64, i32) #1

declare i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget*, i64, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpViewable* @gimp_view_drag_viewable(%struct._GtkWidget* %widget, %struct._GimpContext** %context, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext**, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpContext** %context, %struct._GimpContext*** %context.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  %tobool = icmp ne %struct._GimpContext** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %6 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  store %struct._GimpContext* %5, %struct._GimpContext** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_view_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 2
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  ret %struct._GimpViewable* %10
}

declare void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget*, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_view_drag_pixbuf(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpView*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %2, %struct._GimpView** %view, align 8
  %3 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable2 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 2
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable2, align 8
  store %struct._GimpViewable* %4, %struct._GimpViewable** %viewable, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call3 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %6, i32* %width, i32* %height)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %8 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %call5 = call %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable* %7, %struct._GimpContext* %10, i32 %11, i32 %12)
  store %struct._GdkPixbuf* %call5, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %13
}

declare void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer*, %struct._GimpViewable*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare void @gtk_widget_set_has_window(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_get_requisition(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
