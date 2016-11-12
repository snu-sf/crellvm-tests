; ModuleID = './libgimpwidgets/gimpscrolledpreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpPreviewClass = type { %struct._GtkBoxClass, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)*, void (%struct._GimpPreview*, i8*, i32)*, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void ()*, void ()* }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpScrolledPreviewClass = type { %struct._GimpPreviewClass, void ()*, void ()*, void ()*, void ()* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct.GimpScrolledPreviewPrivate = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._cairo = type opaque

@gimp_scrolled_preview_get_type.preview_type = internal global i64 0, align 8
@gimp_scrolled_preview_get_type.preview_info = internal constant %struct._GTypeInfo { i16 928, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpScrolledPreviewClass*)* @gimp_scrolled_preview_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 280, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpScrolledPreview*)* @gimp_scrolled_preview_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpScrolledPreview\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_scrolled_preview_set_position = private unnamed_addr constant [35 x i8] c"gimp_scrolled_preview_set_position\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"GIMP_IS_SCROLLED_PREVIEW (preview)\00", align 1
@__func__.gimp_scrolled_preview_set_policy = private unnamed_addr constant [33 x i8] c"gimp_scrolled_preview_set_policy\00", align 1
@__func__.gimp_scrolled_preview_freeze = private unnamed_addr constant [29 x i8] c"gimp_scrolled_preview_freeze\00", align 1
@__func__.gimp_scrolled_preview_thaw = private unnamed_addr constant [27 x i8] c"gimp_scrolled_preview_thaw\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"priv->frozen > 0\00", align 1
@parent_class = internal global %struct._GimpPreviewClass* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"unrealize\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gimp-navigation\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@__func__.gimp_scrolled_preview_area_realize = private unnamed_addr constant [35 x i8] c"gimp_scrolled_preview_area_realize\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"preview->cursor_move == NULL\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_scrolled_preview_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_scrolled_preview_get_type.preview_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_scrolled_preview_get_type.preview_info, i32 16)
  store i64 %call1, i64* @gimp_scrolled_preview_get_type.preview_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_scrolled_preview_get_type.preview_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_class_init(%struct._GimpScrolledPreviewClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpScrolledPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %preview_class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpScrolledPreviewClass* %klass, %struct._GimpScrolledPreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpScrolledPreviewClass*, %struct._GimpScrolledPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpScrolledPreviewClass*, %struct._GimpScrolledPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpScrolledPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_preview_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %5, %struct._GimpPreviewClass** %preview_class, align 8
  %6 = load %struct._GimpScrolledPreviewClass*, %struct._GimpScrolledPreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpScrolledPreviewClass* %6 to i8*
  %call3 = call i8* @g_type_class_peek_parent(i8* %7)
  %8 = bitcast i8* %call3 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %8, %struct._GimpPreviewClass** @parent_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_scrolled_preview_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %set_cursor = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %10, i32 0, i32 4
  store void (%struct._GimpPreview*)* @gimp_scrolled_preview_set_cursor, void (%struct._GimpPreview*)** %set_cursor, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %12 = bitcast %struct._GObjectClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_init(%struct._GimpScrolledPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scrolled_preview_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpScrolledPreviewPrivate*
  %3 = bitcast %struct.GimpScrolledPreviewPrivate* %2 to i8*
  %4 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %4, i32 0, i32 7
  store i8* %3, i8** %priv2, align 8
  %5 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %5, i32 0, i32 7
  %6 = load i8*, i8** %priv3, align 8
  %7 = bitcast i8* %6 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %7, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %8 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %8, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %nav_popup, align 8
  %9 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %hscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %9, i32 0, i32 0
  store i32 1, i32* %hscr_policy, align 4
  %10 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %vscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %10, i32 0, i32 1
  store i32 1, i32* %vscr_policy, align 4
  %11 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %11, i32 0, i32 6
  store i32 0, i32* %in_drag, align 4
  %12 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %12, i32 0, i32 7
  store i32 1, i32* %frozen, align 4
  %13 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %14 = bitcast %struct._GimpScrolledPreview* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_preview_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPreview*
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 14
  %16 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %16, 1
  %conv = sitofp i32 %sub to double
  %17 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %18 = bitcast %struct._GimpScrolledPreview* %17 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_preview_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call6)
  %19 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPreview*
  %width8 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %19, i32 0, i32 14
  %20 = load i32, i32* %width8, align 4
  %conv9 = sitofp i32 %20 to double
  %21 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %22 = bitcast %struct._GimpScrolledPreview* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_preview_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPreview*
  %width12 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %23, i32 0, i32 14
  %24 = load i32, i32* %width12, align 4
  %conv13 = sitofp i32 %24 to double
  %call14 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double %conv, double 1.000000e+00, double %conv9, double %conv13)
  %25 = bitcast %struct._GtkObject* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_adjustment_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %26, %struct._GtkAdjustment** %adj, align 8
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %28 = bitcast %struct._GtkAdjustment* %27 to i8*
  %29 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %30 = bitcast %struct._GimpScrolledPreview* %29 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpPreview*)* @gimp_scrolled_preview_h_scroll to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call18 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 0, %struct._GtkAdjustment* %31)
  %32 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %32, i32 0, i32 1
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hscr, align 8
  %33 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %34 = bitcast %struct._GimpScrolledPreview* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_preview_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPreview*
  %table = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %35, i32 0, i32 3
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call21)
  %38 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %39 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr23 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr23, align 8
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %40, i32 0, i32 1, i32 1, i32 2, i32 5, i32 4, i32 0, i32 0)
  %41 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %42 = bitcast %struct._GimpScrolledPreview* %41 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_preview_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call24)
  %43 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPreview*
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %43, i32 0, i32 15
  %44 = load i32, i32* %height, align 4
  %sub26 = sub nsw i32 %44, 1
  %conv27 = sitofp i32 %sub26 to double
  %45 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %46 = bitcast %struct._GimpScrolledPreview* %45 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_preview_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call28)
  %47 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpPreview*
  %height30 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %47, i32 0, i32 15
  %48 = load i32, i32* %height30, align 4
  %conv31 = sitofp i32 %48 to double
  %49 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %50 = bitcast %struct._GimpScrolledPreview* %49 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_preview_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call32)
  %51 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpPreview*
  %height34 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %51, i32 0, i32 15
  %52 = load i32, i32* %height34, align 4
  %conv35 = sitofp i32 %52 to double
  %call36 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double %conv27, double 1.000000e+00, double %conv31, double %conv35)
  %53 = bitcast %struct._GtkObject* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_adjustment_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %54, %struct._GtkAdjustment** %adj, align 8
  %55 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %56 = bitcast %struct._GtkAdjustment* %55 to i8*
  %57 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %58 = bitcast %struct._GimpScrolledPreview* %57 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpPreview*)* @gimp_scrolled_preview_v_scroll to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call40 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 1, %struct._GtkAdjustment* %59)
  %60 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %60, i32 0, i32 2
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %vscr, align 8
  %61 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %62 = bitcast %struct._GimpScrolledPreview* %61 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_preview_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call41)
  %63 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpPreview*
  %table43 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %63, i32 0, i32 3
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table43, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %67 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr46 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %67, i32 0, i32 2
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr46, align 8
  call void @gtk_table_attach(%struct._GtkTable* %66, %struct._GtkWidget* %68, i32 1, i32 2, i32 0, i32 1, i32 4, i32 5, i32 0, i32 0)
  %69 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %70 = bitcast %struct._GimpScrolledPreview* %69 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_preview_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call47)
  %71 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %75 = bitcast %struct._GimpScrolledPreview* %74 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_area_event to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 1)
  %76 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %77 = bitcast %struct._GimpScrolledPreview* %76 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_preview_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call50)
  %78 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpPreview*
  %area52 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %78, i32 0, i32 2
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %area52, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %81 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %82 = bitcast %struct._GimpScrolledPreview* %81 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_area_realize to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %84 = bitcast %struct._GimpScrolledPreview* %83 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_preview_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call54)
  %85 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpPreview*
  %area56 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %85, i32 0, i32 2
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %area56, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %89 = bitcast %struct._GimpScrolledPreview* %88 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_area_unrealize to void ()*), i8* %89, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %91 = bitcast %struct._GimpScrolledPreview* %90 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_preview_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call58)
  %92 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpPreview*
  %area60 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %92, i32 0, i32 2
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %area60, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %95 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %96 = bitcast %struct._GimpScrolledPreview* %95 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_area_size_allocate to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  %call62 = call %struct._GtkWidget* @gtk_event_box_new()
  %97 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_icon = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %97, i32 0, i32 3
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %nav_icon, align 8
  %98 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %99 = bitcast %struct._GimpScrolledPreview* %98 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_preview_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call63)
  %100 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpPreview*
  %table65 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %100, i32 0, i32 3
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %table65, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call66)
  %103 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %104 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_icon68 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %104, i32 0, i32 3
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_icon68, align 8
  call void @gtk_table_attach(%struct._GtkTable* %103, %struct._GtkWidget* %105, i32 1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0)
  %call69 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %image, align 8
  %106 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_icon70 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %106, i32 0, i32 3
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_icon70, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_container_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call71)
  %109 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkContainer*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %109, %struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_icon73 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %112, i32 0, i32 3
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_icon73, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %115 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %116 = bitcast %struct._GimpScrolledPreview* %115 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_nav_button_press to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen75 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %117, i32 0, i32 7
  store i32 0, i32* %frozen75, align 4
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_scrolled_preview_set_position(%struct._GimpScrolledPreview* %preview, i32 %x, i32 %y) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scrolled_preview_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_scrolled_preview_set_position, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview* %13)
  %14 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_hscr_update(%struct._GimpScrolledPreview* %14)
  %15 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_vscr_update(%struct._GimpScrolledPreview* %15)
  %16 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_range_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkRange*
  %call13 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %19)
  store %struct._GtkAdjustment* %call13, %struct._GtkAdjustment** %adj, align 8
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %21 = load i32, i32* %x.addr, align 4
  %22 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %23 = bitcast %struct._GimpScrolledPreview* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_preview_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpPreview*
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 10
  %25 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %21, %25
  %conv = sitofp i32 %sub to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %20, double %conv)
  %26 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_range_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkRange*
  %call18 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %29)
  store %struct._GtkAdjustment* %call18, %struct._GtkAdjustment** %adj, align 8
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %31 = load i32, i32* %y.addr, align 4
  %32 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %33 = bitcast %struct._GimpScrolledPreview* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_preview_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPreview*
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %34, i32 0, i32 12
  %35 = load i32, i32* %ymin, align 4
  %sub21 = sub nsw i32 %31, %35
  %conv22 = sitofp i32 %sub21 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %30, double %conv22)
  %36 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview* %36)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scrolled_preview_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_scrolled_preview_freeze, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %13, i32 0, i32 7
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %15, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %16 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %16, i32 0, i32 7
  %17 = load i32, i32* %frozen, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %frozen, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_hscr_update(%struct._GimpScrolledPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %width = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  %call2 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %3)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %4 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpScrolledPreview* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 11
  %7 = load i32, i32* %xmax, align 4
  %8 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %9 = bitcast %struct._GimpScrolledPreview* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 10
  %11 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %7, %11
  store i32 %sub, i32* %width, align 4
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %13)
  %14 = load i32, i32* %width, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpScrolledPreview* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %width10 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 14
  %18 = load i32, i32* %width10, align 4
  %conv11 = sitofp i32 %18 to double
  %div = fdiv double %conv11, 2.000000e+00
  %cmp = fcmp ogt double %div, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %20 = bitcast %struct._GimpScrolledPreview* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_preview_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPreview*
  %width15 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 14
  %22 = load i32, i32* %width15, align 4
  %conv16 = sitofp i32 %22 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div17, %cond.true ], [ 1.000000e+00, %cond.false ]
  %23 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %24 = bitcast %struct._GimpScrolledPreview* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_preview_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPreview*
  %width20 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %25, i32 0, i32 14
  %26 = load i32, i32* %width20, align 4
  %conv21 = sitofp i32 %26 to double
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %12, double %call7, double 0.000000e+00, double %conv, double 1.000000e+00, double %cond, double %conv21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_vscr_update(%struct._GimpScrolledPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %height = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  %call2 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %3)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %4 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpScrolledPreview* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 13
  %7 = load i32, i32* %ymax, align 4
  %8 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %9 = bitcast %struct._GimpScrolledPreview* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 12
  %11 = load i32, i32* %ymin, align 4
  %sub = sub nsw i32 %7, %11
  store i32 %sub, i32* %height, align 4
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %13)
  %14 = load i32, i32* %height, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpScrolledPreview* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %height10 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 15
  %18 = load i32, i32* %height10, align 4
  %conv11 = sitofp i32 %18 to double
  %div = fdiv double %conv11, 2.000000e+00
  %cmp = fcmp ogt double %div, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %20 = bitcast %struct._GimpScrolledPreview* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_preview_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPreview*
  %height15 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 15
  %22 = load i32, i32* %height15, align 4
  %conv16 = sitofp i32 %22 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div17, %cond.true ], [ 1.000000e+00, %cond.false ]
  %23 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %24 = bitcast %struct._GimpScrolledPreview* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_preview_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPreview*
  %height20 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %25, i32 0, i32 15
  %26 = load i32, i32* %height20, align 4
  %conv21 = sitofp i32 %26 to double
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %12, double %call7, double 0.000000e+00, double %conv, double 1.000000e+00, double %cond, double %conv21)
  ret void
}

declare %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #2

; Function Attrs: nounwind uwtable
define void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scrolled_preview_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_scrolled_preview_thaw, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %13, i32 0, i32 7
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %15, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %16, i32 0, i32 7
  %17 = load i32, i32* %frozen, align 4
  %cmp13 = icmp sgt i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_scrolled_preview_thaw, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.26

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %18 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen18 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %18, i32 0, i32 7
  %19 = load i32, i32* %frozen18, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %frozen18, align 4
  %20 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen19 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %20, i32 0, i32 7
  %21 = load i32, i32* %frozen19, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.end.26, label %if.then.21

if.then.21:                                       ; preds = %do.end.17
  %22 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %23 = bitcast %struct._GimpScrolledPreview* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_preview_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPreview*
  call void @gimp_preview_draw(%struct._GimpPreview* %24)
  %25 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %26 = bitcast %struct._GimpScrolledPreview* %25 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_preview_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call24)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.else.15, %if.then.21, %do.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scrolled_preview_set_policy(%struct._GimpScrolledPreview* %preview, i32 %hscrollbar_policy, i32 %vscrollbar_policy) #1 {
entry:
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %hscrollbar_policy.addr = alloca i32, align 4
  %vscrollbar_policy.addr = alloca i32, align 4
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  store i32 %hscrollbar_policy, i32* %hscrollbar_policy.addr, align 4
  store i32 %vscrollbar_policy, i32* %vscrollbar_policy.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scrolled_preview_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_scrolled_preview_set_policy, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %13, i32 0, i32 7
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %15, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %16 = load i32, i32* %hscrollbar_policy.addr, align 4
  %17 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %hscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %17, i32 0, i32 0
  store i32 %16, i32* %hscr_policy, align 4
  %18 = load i32, i32* %vscrollbar_policy.addr, align 4
  %19 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %vscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %19, i32 0, i32 1
  store i32 %18, i32* %vscr_policy, align 4
  %20 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %21 = bitcast %struct._GimpScrolledPreview* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %23)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #2

declare void @gimp_preview_draw(%struct._GimpPreview*) #2

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_dispose(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %preview = alloca %struct._GimpScrolledPreview*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scrolled_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpScrolledPreview*
  store %struct._GimpScrolledPreview* %2, %struct._GimpScrolledPreview** %preview, align 8
  %3 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview, align 8
  %nav_popup = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview, align 8
  %nav_popup2 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview, align 8
  %nav_popup3 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %7, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %nav_popup3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** @parent_class, align 8
  %9 = bitcast %struct._GimpPreviewClass* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_set_cursor(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 11
  %3 = load i32, i32* %xmax, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 10
  %5 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %3, %5
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 14
  %7 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %sub, %7
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %8, i32 0, i32 13
  %9 = load i32, i32* %ymax, align 4
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 12
  %11 = load i32, i32* %ymin, align 4
  %sub1 = sub nsw i32 %9, %11
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %12, i32 0, i32 15
  %13 = load i32, i32* %height, align 4
  %cmp2 = icmp sgt i32 %sub1, %13
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %area4, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %17 = bitcast %struct._GimpPreview* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_scrolled_preview_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpScrolledPreview*
  %cursor_move = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %18, i32 0, i32 5
  %19 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_move, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call5, %struct._GdkCursor* %19)
  br label %if.end.10

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area8 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %area8, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %21)
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 7
  %23 = load %struct._GdkCursor*, %struct._GdkCursor** %default_cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call9, %struct._GdkCursor* %23)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.else, %if.then.3
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #2

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #2

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_h_scroll(%struct._GtkAdjustment* %hadj, %struct._GimpPreview* %preview) #1 {
entry:
  %hadj.addr = alloca %struct._GtkAdjustment*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  store %struct._GtkAdjustment* %hadj, %struct._GtkAdjustment** %hadj.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpScrolledPreview*
  %priv1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %1, i32 0, i32 7
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %3, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %conv = fptosi double %call to i32
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 8
  store i32 %conv, i32* %xoff, align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_area_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreviewArea*
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 8
  %11 = load i32, i32* %xoff4, align 4
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %12, i32 0, i32 9
  %13 = load i32, i32* %yoff, align 4
  call void @gimp_preview_area_set_offsets(%struct._GimpPreviewArea* %9, i32 %11, i32 %13)
  %14 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %14, i32 0, i32 6
  %15 = load i32, i32* %in_drag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %16, i32 0, i32 7
  %17 = load i32, i32* %frozen, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %18)
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_scrollbar_new(i32, %struct._GtkAdjustment*) #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_v_scroll(%struct._GtkAdjustment* %vadj, %struct._GimpPreview* %preview) #1 {
entry:
  %vadj.addr = alloca %struct._GtkAdjustment*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  store %struct._GtkAdjustment* %vadj, %struct._GtkAdjustment** %vadj.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpScrolledPreview*
  %priv1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %1, i32 0, i32 7
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %3, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %conv = fptosi double %call to i32
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 9
  store i32 %conv, i32* %yoff, align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_area_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreviewArea*
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 8
  %11 = load i32, i32* %xoff, align 4
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %12, i32 0, i32 9
  %13 = load i32, i32* %yoff4, align 4
  call void @gimp_preview_area_set_offsets(%struct._GimpPreviewArea* %9, i32 %11, i32 %13)
  %14 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %14, i32 0, i32 6
  %15 = load i32, i32* %in_drag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %frozen = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %16, i32 0, i32 7
  %17 = load i32, i32* %frozen, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %18)
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scrolled_preview_area_event(%struct._GtkWidget* %area, %union._GdkEvent* %event, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %retval = alloca i32, align 4
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %hadj = alloca %struct._GtkAdjustment*, align 8
  %vadj = alloca %struct._GtkAdjustment*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sevent = alloca %struct._GdkEventScroll*, align 8
  %direction = alloca i32, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %value = alloca float, align 4
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 7
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %2, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %4 = bitcast %union._GdkEvent* %3 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %4, %struct._GdkEventButton** %button_event, align 8
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %5 to i32*
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default.165 [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.12
    i32 3, label %sw.bb.23
    i32 31, label %sw.bb.103
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 8
  %8 = load i32, i32* %button, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.11
  ]

sw.bb.2:                                          ; preds = %sw.bb, %sw.bb
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %9)
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call, i32 52)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %10)
  %11 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call5 = call i32 @gdk_event_get_time(%union._GdkEvent* %12)
  %call6 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call4, i32 1, i32 536, %struct._GdkDrawable* null, %struct._GdkCursor* %11, i32 %call5)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %14 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_x = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %14, i32 0, i32 2
  %15 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_y = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %15, i32 0, i32 3
  call void @gtk_widget_get_pointer(%struct._GtkWidget* %13, i32* %drag_x, i32* %drag_y)
  %16 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %17 = bitcast %struct._GimpScrolledPreview* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreview*
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %18, i32 0, i32 8
  %19 = load i32, i32* %xoff, align 4
  %20 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_xoff = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %20, i32 0, i32 4
  store i32 %19, i32* %drag_xoff, align 4
  %21 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %22 = bitcast %struct._GimpScrolledPreview* %21 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_preview_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call9)
  %23 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPreview*
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %23, i32 0, i32 9
  %24 = load i32, i32* %yoff, align 4
  %25 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_yoff = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %25, i32 0, i32 5
  store i32 %24, i32* %drag_yoff, align 4
  %26 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %26, i32 0, i32 6
  store i32 1, i32* %in_drag, align 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %28 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %28)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %if.end
  br label %sw.epilog.166

sw.bb.12:                                         ; preds = %entry
  %29 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag13 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %29, i32 0, i32 6
  %30 = load i32, i32* %in_drag13, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %sw.bb.12
  %31 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button14 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %31, i32 0, i32 8
  %32 = load i32, i32* %button14, align 4
  %cmp15 = icmp eq i32 %32, 1
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button16 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %33, i32 0, i32 8
  %34 = load i32, i32* %button16, align 4
  %cmp17 = icmp eq i32 %34, 2
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %call19 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %35)
  %36 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call20 = call i32 @gdk_event_get_time(%union._GdkEvent* %36)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call19, i32 %call20)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %37)
  %38 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag21 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %38, i32 0, i32 6
  store i32 0, i32* %in_drag21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %lor.lhs.false, %sw.bb.12
  br label %sw.epilog.166

sw.bb.23:                                         ; preds = %entry
  %39 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %in_drag24 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %39, i32 0, i32 6
  %40 = load i32, i32* %in_drag24, align 4
  %tobool25 = icmp ne i32 %40, 0
  br i1 %tobool25, label %if.then.26, label %if.end.102

if.then.26:                                       ; preds = %sw.bb.23
  %41 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %42 = bitcast %union._GdkEvent* %41 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %42, %struct._GdkEventMotion** %mevent, align 8
  %43 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %43, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_range_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call27)
  %46 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkRange*
  %call29 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %46)
  store %struct._GtkAdjustment* %call29, %struct._GtkAdjustment** %hadj, align 8
  %47 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %47, i32 0, i32 2
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_range_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call30)
  %50 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkRange*
  %call32 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %50)
  store %struct._GtkAdjustment* %call32, %struct._GtkAdjustment** %vadj, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_widget_get_pointer(%struct._GtkWidget* %51, i32* %x, i32* %y)
  %52 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_xoff33 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %52, i32 0, i32 4
  %53 = load i32, i32* %drag_xoff33, align 4
  %54 = load i32, i32* %x, align 4
  %55 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_x34 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %55, i32 0, i32 2
  %56 = load i32, i32* %drag_x34, align 4
  %sub = sub nsw i32 %54, %56
  %sub35 = sub nsw i32 %53, %sub
  store i32 %sub35, i32* %x, align 4
  %57 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_yoff36 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %57, i32 0, i32 5
  %58 = load i32, i32* %drag_yoff36, align 4
  %59 = load i32, i32* %y, align 4
  %60 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %drag_y37 = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %60, i32 0, i32 3
  %61 = load i32, i32* %drag_y37, align 4
  %sub38 = sub nsw i32 %59, %61
  %sub39 = sub nsw i32 %58, %sub38
  store i32 %sub39, i32* %y, align 4
  %62 = load i32, i32* %x, align 4
  %conv = sitofp i32 %62 to double
  %63 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call40 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %63)
  %64 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call41 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %64)
  %sub42 = fsub double %call40, %call41
  %cmp43 = fcmp ogt double %conv, %sub42
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call45 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %65)
  %66 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call46 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %66)
  %sub47 = fsub double %call45, %call46
  br label %cond.end.56

cond.false:                                       ; preds = %if.then.26
  %67 = load i32, i32* %x, align 4
  %conv48 = sitofp i32 %67 to double
  %68 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call49 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %68)
  %cmp50 = fcmp olt double %conv48, %call49
  br i1 %cmp50, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.false
  %69 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call53 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %69)
  br label %cond.end

cond.false.54:                                    ; preds = %cond.false
  %70 = load i32, i32* %x, align 4
  %conv55 = sitofp i32 %70 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.54, %cond.true.52
  %cond = phi double [ %call53, %cond.true.52 ], [ %conv55, %cond.false.54 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true
  %cond57 = phi double [ %sub47, %cond.true ], [ %cond, %cond.end ]
  %conv58 = fptosi double %cond57 to i32
  store i32 %conv58, i32* %x, align 4
  %71 = load i32, i32* %y, align 4
  %conv59 = sitofp i32 %71 to double
  %72 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call60 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %72)
  %73 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call61 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %73)
  %sub62 = fsub double %call60, %call61
  %cmp63 = fcmp ogt double %conv59, %sub62
  br i1 %cmp63, label %cond.true.65, label %cond.false.69

cond.true.65:                                     ; preds = %cond.end.56
  %74 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call66 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %74)
  %75 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call67 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %75)
  %sub68 = fsub double %call66, %call67
  br label %cond.end.80

cond.false.69:                                    ; preds = %cond.end.56
  %76 = load i32, i32* %y, align 4
  %conv70 = sitofp i32 %76 to double
  %77 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call71 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %77)
  %cmp72 = fcmp olt double %conv70, %call71
  br i1 %cmp72, label %cond.true.74, label %cond.false.76

cond.true.74:                                     ; preds = %cond.false.69
  %78 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call75 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %78)
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.69
  %79 = load i32, i32* %y, align 4
  %conv77 = sitofp i32 %79 to double
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.74
  %cond79 = phi double [ %call75, %cond.true.74 ], [ %conv77, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.65
  %cond81 = phi double [ %sub68, %cond.true.65 ], [ %cond79, %cond.end.78 ]
  %conv82 = fptosi double %cond81 to i32
  store i32 %conv82, i32* %y, align 4
  %80 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %81 = bitcast %struct._GimpScrolledPreview* %80 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_preview_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call83)
  %82 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpPreview*
  %xoff85 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %82, i32 0, i32 8
  %83 = load i32, i32* %xoff85, align 4
  %84 = load i32, i32* %x, align 4
  %cmp86 = icmp ne i32 %83, %84
  br i1 %cmp86, label %if.then.94, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %cond.end.80
  %85 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %86 = bitcast %struct._GimpScrolledPreview* %85 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_preview_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call89)
  %87 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpPreview*
  %yoff91 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %87, i32 0, i32 9
  %88 = load i32, i32* %yoff91, align 4
  %89 = load i32, i32* %y, align 4
  %cmp92 = icmp ne i32 %88, %89
  br i1 %cmp92, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %lor.lhs.false.88, %cond.end.80
  %90 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %91 = load i32, i32* %x, align 4
  %conv95 = sitofp i32 %91 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %90, double %conv95)
  %92 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %93 = load i32, i32* %y, align 4
  %conv96 = sitofp i32 %93 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %92, double %conv96)
  %94 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %95 = bitcast %struct._GimpScrolledPreview* %94 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_preview_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call97)
  %96 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpPreview*
  call void @gimp_preview_draw(%struct._GimpPreview* %96)
  %97 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %98 = bitcast %struct._GimpScrolledPreview* %97 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_preview_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call99)
  %99 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %99)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.94, %lor.lhs.false.88
  %100 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %100)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %sw.bb.23
  br label %sw.epilog.166

sw.bb.103:                                        ; preds = %entry
  %101 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %102 = bitcast %union._GdkEvent* %101 to %struct._GdkEventScroll*
  store %struct._GdkEventScroll* %102, %struct._GdkEventScroll** %sevent, align 8
  %103 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction104 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %103, i32 0, i32 7
  %104 = load i32, i32* %direction104, align 4
  store i32 %104, i32* %direction, align 4
  %105 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %state = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %105, i32 0, i32 6
  %106 = load i32, i32* %state, align 4
  %and = and i32 %106, 4
  %tobool105 = icmp ne i32 %and, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %sw.bb.103
  store i32 0, i32* %retval
  br label %return

if.end.107:                                       ; preds = %sw.bb.103
  %107 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %state108 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %107, i32 0, i32 6
  %108 = load i32, i32* %state108, align 4
  %and109 = and i32 %108, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %if.end.107
  %109 = load i32, i32* %direction, align 4
  switch i32 %109, label %sw.epilog.116 [
    i32 0, label %sw.bb.112
    i32 1, label %sw.bb.113
    i32 2, label %sw.bb.114
    i32 3, label %sw.bb.115
  ]

sw.bb.112:                                        ; preds = %if.then.111
  store i32 2, i32* %direction, align 4
  br label %sw.epilog.116

sw.bb.113:                                        ; preds = %if.then.111
  store i32 3, i32* %direction, align 4
  br label %sw.epilog.116

sw.bb.114:                                        ; preds = %if.then.111
  store i32 0, i32* %direction, align 4
  br label %sw.epilog.116

sw.bb.115:                                        ; preds = %if.then.111
  store i32 1, i32* %direction, align 4
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %if.then.111, %sw.bb.115, %sw.bb.114, %sw.bb.113, %sw.bb.112
  br label %if.end.117

if.end.117:                                       ; preds = %sw.epilog.116, %if.end.107
  %110 = load i32, i32* %direction, align 4
  switch i32 %110, label %sw.default [
    i32 0, label %sw.bb.118
    i32 1, label %sw.bb.118
    i32 3, label %sw.bb.123
    i32 2, label %sw.bb.123
  ]

sw.bb.118:                                        ; preds = %if.end.117, %if.end.117
  br label %sw.default

sw.default:                                       ; preds = %if.end.117, %sw.bb.118
  %111 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr119 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %111, i32 0, i32 2
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr119, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_range_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call120)
  %114 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkRange*
  %call122 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %114)
  store %struct._GtkAdjustment* %call122, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog.128

sw.bb.123:                                        ; preds = %if.end.117, %if.end.117
  %115 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr124 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %115, i32 0, i32 1
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr124, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_range_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call125)
  %118 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkRange*
  %call127 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %118)
  store %struct._GtkAdjustment* %call127, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog.128

sw.epilog.128:                                    ; preds = %sw.bb.123, %sw.default
  %119 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call129 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %119)
  %conv130 = fptrunc double %call129 to float
  store float %conv130, float* %value, align 4
  %120 = load i32, i32* %direction, align 4
  switch i32 %120, label %sw.epilog.141 [
    i32 0, label %sw.bb.131
    i32 2, label %sw.bb.131
    i32 1, label %sw.bb.136
    i32 3, label %sw.bb.136
  ]

sw.bb.131:                                        ; preds = %sw.epilog.128, %sw.epilog.128
  %121 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call132 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %121)
  %div = fdiv double %call132, 2.000000e+00
  %122 = load float, float* %value, align 4
  %conv133 = fpext float %122 to double
  %sub134 = fsub double %conv133, %div
  %conv135 = fptrunc double %sub134 to float
  store float %conv135, float* %value, align 4
  br label %sw.epilog.141

sw.bb.136:                                        ; preds = %sw.epilog.128, %sw.epilog.128
  %123 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call137 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %123)
  %div138 = fdiv double %call137, 2.000000e+00
  %124 = load float, float* %value, align 4
  %conv139 = fpext float %124 to double
  %add = fadd double %conv139, %div138
  %conv140 = fptrunc double %add to float
  store float %conv140, float* %value, align 4
  br label %sw.epilog.141

sw.epilog.141:                                    ; preds = %sw.epilog.128, %sw.bb.136, %sw.bb.131
  %125 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %126 = load float, float* %value, align 4
  %conv142 = fpext float %126 to double
  %127 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call143 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %127)
  %128 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call144 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %128)
  %sub145 = fsub double %call143, %call144
  %cmp146 = fcmp ogt double %conv142, %sub145
  br i1 %cmp146, label %cond.true.148, label %cond.false.152

cond.true.148:                                    ; preds = %sw.epilog.141
  %129 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call149 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %129)
  %130 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call150 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %130)
  %sub151 = fsub double %call149, %call150
  br label %cond.end.163

cond.false.152:                                   ; preds = %sw.epilog.141
  %131 = load float, float* %value, align 4
  %conv153 = fpext float %131 to double
  %132 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call154 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %132)
  %cmp155 = fcmp olt double %conv153, %call154
  br i1 %cmp155, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %cond.false.152
  %133 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call158 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %133)
  br label %cond.end.161

cond.false.159:                                   ; preds = %cond.false.152
  %134 = load float, float* %value, align 4
  %conv160 = fpext float %134 to double
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi double [ %call158, %cond.true.157 ], [ %conv160, %cond.false.159 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.true.148
  %cond164 = phi double [ %sub151, %cond.true.148 ], [ %cond162, %cond.end.161 ]
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %125, double %cond164)
  br label %sw.epilog.166

sw.default.165:                                   ; preds = %entry
  br label %sw.epilog.166

sw.epilog.166:                                    ; preds = %sw.default.165, %cond.end.163, %if.end.102, %if.end.22, %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.166, %if.then.106, %sw.bb.11
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_area_realize(%struct._GtkWidget* %widget, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %cursor_move = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %1, i32 0, i32 5
  %2 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_move, align 8
  %cmp = icmp eq %struct._GdkCursor* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_scrolled_preview_area_realize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %3, i32 58)
  %4 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %cursor_move2 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %4, i32 0, i32 5
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor_move2, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_area_unrealize(%struct._GtkWidget* %widget, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %cursor_move = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 5
  %1 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_move, align 8
  %tobool = icmp ne %struct._GdkCursor* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %cursor_move1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %2, i32 0, i32 5
  %3 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_move1, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %3)
  %4 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %cursor_move2 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %4, i32 0, i32 5
  store %struct._GdkCursor* null, %struct._GdkCursor** %cursor_move2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scrolled_preview_area_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %priv = alloca %struct.GimpScrolledPreviewPrivate*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 7
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpScrolledPreviewPrivate*
  store %struct.GimpScrolledPreviewPrivate* %2, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %3 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpScrolledPreview* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPreview*
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 11
  %6 = load i32, i32* %xmax, align 4
  %7 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %8 = bitcast %struct._GimpScrolledPreview* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 10
  %10 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %6, %10
  store i32 %sub, i32* %width, align 4
  %11 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %12 = bitcast %struct._GimpScrolledPreview* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 13
  %14 = load i32, i32* %ymax, align 4
  %15 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpScrolledPreview* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreview*
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 12
  %18 = load i32, i32* %ymin, align 4
  %sub9 = sub nsw i32 %14, %18
  store i32 %sub9, i32* %height, align 4
  %19 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview* %19)
  %20 = load i32, i32* %width, align 4
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 2
  %22 = load i32, i32* %width10, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %23 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 2
  %25 = load i32, i32* %width11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ]
  %26 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %27 = bitcast %struct._GimpScrolledPreview* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  %width14 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %28, i32 0, i32 14
  store i32 %cond, i32* %width14, align 4
  %29 = load i32, i32* %height, align 4
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 3
  %31 = load i32, i32* %height15, align 4
  %cmp16 = icmp slt i32 %29, %31
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %32 = load i32, i32* %height, align 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %33 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %33, i32 0, i32 3
  %34 = load i32, i32* %height19, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.17
  %cond21 = phi i32 [ %32, %cond.true.17 ], [ %34, %cond.false.18 ]
  %35 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %36 = bitcast %struct._GimpScrolledPreview* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_preview_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPreview*
  %height24 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %37, i32 0, i32 15
  store i32 %cond21, i32* %height24, align 4
  %38 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_hscr_update(%struct._GimpScrolledPreview* %38)
  %39 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %hscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %39, i32 0, i32 0
  %40 = load i32, i32* %hscr_policy, align 4
  switch i32 %40, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.29
    i32 2, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %cond.end.20
  %41 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %41, i32 0, i32 1
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %43 = load i32, i32* %width, align 4
  %44 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %45 = bitcast %struct._GimpScrolledPreview* %44 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_preview_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call25)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpPreview*
  %width27 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %46, i32 0, i32 14
  %47 = load i32, i32* %width27, align 4
  %cmp28 = icmp sgt i32 %43, %47
  %conv = zext i1 %cmp28 to i32
  call void @gtk_widget_set_visible(%struct._GtkWidget* %42, i32 %conv)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %cond.end.20
  %48 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr30 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %48, i32 0, i32 1
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr30, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %cond.end.20
  %50 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr32 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %50, i32 0, i32 1
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr32, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %51)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.20, %sw.bb.31, %sw.bb.29, %sw.bb
  %52 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_vscr_update(%struct._GimpScrolledPreview* %52)
  %53 = load %struct.GimpScrolledPreviewPrivate*, %struct.GimpScrolledPreviewPrivate** %priv, align 8
  %vscr_policy = getelementptr inbounds %struct.GimpScrolledPreviewPrivate, %struct.GimpScrolledPreviewPrivate* %53, i32 0, i32 1
  %54 = load i32, i32* %vscr_policy, align 4
  switch i32 %54, label %sw.epilog.43 [
    i32 1, label %sw.bb.33
    i32 0, label %sw.bb.39
    i32 2, label %sw.bb.41
  ]

sw.bb.33:                                         ; preds = %sw.epilog
  %55 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %57 = load i32, i32* %height, align 4
  %58 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %59 = bitcast %struct._GimpScrolledPreview* %58 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_preview_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call34)
  %60 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpPreview*
  %height36 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %60, i32 0, i32 15
  %61 = load i32, i32* %height36, align 4
  %cmp37 = icmp sgt i32 %57, %61
  %conv38 = zext i1 %cmp37 to i32
  call void @gtk_widget_set_visible(%struct._GtkWidget* %56, i32 %conv38)
  br label %sw.epilog.43

sw.bb.39:                                         ; preds = %sw.epilog
  %62 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr40 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %62, i32 0, i32 2
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr40, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  br label %sw.epilog.43

sw.bb.41:                                         ; preds = %sw.epilog
  %64 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr42 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %64, i32 0, i32 2
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr42, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %65)
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.epilog, %sw.bb.41, %sw.bb.39, %sw.bb.33
  %66 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_icon = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %66, i32 0, i32 3
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_icon, align 8
  %68 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr44 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %68, i32 0, i32 2
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr44, align 8
  %call45 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %69)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %sw.epilog.43
  %70 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr46 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %70, i32 0, i32 1
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr46, align 8
  %call47 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %71)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %72 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %73 = bitcast %struct._GimpScrolledPreview* %72 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %73, i32 0, i32 0
  %74 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %75 = bitcast %struct._GTypeClass* %74 to %struct._GimpPreviewClass*
  %draw_thumb = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %75, i32 0, i32 2
  %76 = load void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)*, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)** %draw_thumb, align 8
  %tobool49 = icmp ne void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)* %76, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %sw.epilog.43
  %77 = phi i1 [ false, %land.lhs.true ], [ false, %sw.epilog.43 ], [ %tobool49, %land.rhs ]
  %land.ext = zext i1 %77 to i32
  call void @gtk_widget_set_visible(%struct._GtkWidget* %67, i32 %land.ext)
  %78 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  call void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview* %78)
  ret void
}

declare %struct._GtkWidget* @gtk_event_box_new() #2

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scrolled_preview_nav_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %gimp_preview = alloca %struct._GimpPreview*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %outer = alloca %struct._GtkWidget*, align 8
  %inner = alloca %struct._GtkWidget*, align 8
  %area = alloca %struct._GtkWidget*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %h = alloca double, align 8
  %v = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpScrolledPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %gimp_preview, align 8
  %3 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 8
  %8 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then.3, label %if.end.83

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %9)
  store %struct._GtkStyle* %call4, %struct._GtkStyle** %style, align 8
  %call5 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  %10 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup6 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %10, i32 0, i32 4
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %nav_popup6, align 8
  %11 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup7 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup7, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %15)
  call void @gtk_window_set_screen(%struct._GtkWindow* %14, %struct._GdkScreen* %call10)
  %call11 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %outer, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %outer, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_frame_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %18, i32 2)
  %19 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup14 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %outer, align 8
  call void @gtk_container_add(%struct._GtkContainer* %22, %struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %outer, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call17 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %inner, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %inner, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_frame_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %27, i32 1)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %outer, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %inner, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %inner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call22 = call i64 @gimp_preview_area_get_type() #5
  %33 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %area23 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %33, i32 0, i32 2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %area23, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_preview_area_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPreviewArea*
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %36, i32 0, i32 2
  %37 = load i32, i32* %check_type, align 4
  %call26 = call i8* (i64, i8*, ...) @g_object_new(i64 %call22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 %37, i8* null)
  %38 = bitcast i8* %call26 to %struct._GtkWidget*
  store %struct._GtkWidget* %38, %struct._GtkWidget** %area, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %inner, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call27)
  %41 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %46 = bitcast %struct._GimpScrolledPreview* %45 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_nav_popup_event to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %50 = bitcast %struct._GimpScrolledPreview* %49 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpScrolledPreview*)* @gimp_scrolled_preview_nav_popup_expose to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 1)
  %51 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %52 = bitcast %struct._GimpScrolledPreview* %51 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %54 = bitcast %struct._GTypeClass* %53 to %struct._GimpPreviewClass*
  %draw_thumb = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %54, i32 0, i32 2
  %55 = load void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)*, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)** %draw_thumb, align 8
  %56 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_preview_area_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call31)
  %59 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpPreviewArea*
  call void %55(%struct._GimpPreview* %56, %struct._GimpPreviewArea* %59, i32 100, i32 100)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call33 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %62)
  %call34 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call33, i32* %x, i32* %y)
  %63 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %63, i32 0, i32 1
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_range_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call35)
  %66 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkRange*
  %call37 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %66)
  store %struct._GtkAdjustment* %call37, %struct._GtkAdjustment** %adj, align 8
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call38 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %67)
  %68 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call39 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %68)
  %div = fdiv double %call38, %call39
  %69 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call40 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %69)
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call41 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %70)
  %div42 = fdiv double %call40, %call41
  %div43 = fdiv double %div42, 2.000000e+00
  %add = fadd double %div, %div43
  store double %add, double* %h, align 8
  %71 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_range_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call44)
  %74 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkRange*
  %call46 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %74)
  store %struct._GtkAdjustment* %call46, %struct._GtkAdjustment** %adj, align 8
  %75 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call47 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %75)
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call48 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %76)
  %div49 = fdiv double %call47, %call48
  %77 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call50 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %77)
  %78 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call51 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %78)
  %div52 = fdiv double %call50, %call51
  %div53 = fdiv double %div52, 2.000000e+00
  %add54 = fadd double %div49, %div53
  store double %add54, double* %v, align 8
  %79 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x55 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %79, i32 0, i32 4
  %80 = load double, double* %x55, align 8
  %81 = load double, double* %h, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_preview_area_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call56)
  %84 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpPreviewArea*
  %width = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %84, i32 0, i32 3
  %85 = load i32, i32* %width, align 4
  %conv = sitofp i32 %85 to double
  %mul = fmul double %81, %conv
  %sub = fsub double %80, %mul
  %86 = load i32, i32* %x, align 4
  %conv58 = sitofp i32 %86 to double
  %add59 = fadd double %conv58, %sub
  %conv60 = fptosi double %add59 to i32
  store i32 %conv60, i32* %x, align 4
  %87 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y61 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %87, i32 0, i32 5
  %88 = load double, double* %y61, align 8
  %89 = load double, double* %v, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_preview_area_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call62)
  %92 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpPreviewArea*
  %height = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %92, i32 0, i32 4
  %93 = load i32, i32* %height, align 4
  %conv64 = sitofp i32 %93 to double
  %mul65 = fmul double %89, %conv64
  %sub66 = fsub double %88, %mul65
  %94 = load i32, i32* %y, align 4
  %conv67 = sitofp i32 %94 to double
  %add68 = fadd double %conv67, %sub66
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* %y, align 4
  %95 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup70 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %95, i32 0, i32 4
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup70, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_window_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call71)
  %98 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWindow*
  %99 = load i32, i32* %x, align 4
  %100 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %100, i32 0, i32 12
  %101 = load i32, i32* %xthickness, align 4
  %mul73 = mul nsw i32 2, %101
  %sub74 = sub nsw i32 %99, %mul73
  %102 = load i32, i32* %y, align 4
  %103 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %103, i32 0, i32 13
  %104 = load i32, i32* %ythickness, align 4
  %mul75 = mul nsw i32 2, %104
  %sub76 = sub nsw i32 %102, %mul75
  call void @gtk_window_move(%struct._GtkWindow* %98, i32 %sub74, i32 %sub76)
  %105 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup77 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %105, i32 0, i32 4
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup77, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %107)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call78 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %108)
  %call79 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call78, i32 52)
  store %struct._GdkCursor* %call79, %struct._GdkCursor** %cursor, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call80 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call81 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %110)
  %111 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %112 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %112, i32 0, i32 3
  %113 = load i32, i32* %time, align 4
  %call82 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call80, i32 1, i32 536, %struct._GdkDrawable* %call81, %struct._GdkCursor* %111, i32 %113)
  %114 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %114)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.3, %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then
  %115 = load i32, i32* %retval
  ret i32 %115
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #2

declare void @gimp_preview_area_set_offsets(%struct._GimpPreviewArea*, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #2

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #2

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #2

declare i32 @gdk_event_get_time(%union._GdkEvent*) #2

declare void @gtk_widget_get_pointer(%struct._GtkWidget*, i32*, i32*) #2

declare void @gtk_grab_add(%struct._GtkWidget*) #2

declare void @gdk_cursor_unref(%struct._GdkCursor*) #2

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #2

declare void @gtk_grab_remove(%struct._GtkWidget*) #2

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #2

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #2

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #2

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #2

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #2

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #2

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #2

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gtk_window_new(i32) #2

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #2

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scrolled_preview_nav_popup_event(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %hadj = alloca %struct._GtkAdjustment*, align 8
  %vadj = alloca %struct._GtkAdjustment*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 7, label %sw.bb
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %button_event, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 8
  %5 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %7)
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 3
  %9 = load i32, i32* %time, align 4
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call, i32 %9)
  %10 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  %12 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %nav_popup1 = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %12, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %nav_popup1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %14 = bitcast %union._GdkEvent* %13 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %14, %struct._GdkEventMotion** %mevent, align 8
  %15 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_range_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call3)
  %18 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkRange*
  %call5 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %18)
  store %struct._GtkAdjustment* %call5, %struct._GtkAdjustment** %hadj, align 8
  %19 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_range_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call6)
  %22 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkRange*
  %call8 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %22)
  store %struct._GtkAdjustment* %call8, %struct._GtkAdjustment** %vadj, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %23, %struct._GdkRectangle* %allocation)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_pointer(%struct._GtkWidget* %24, i32* %cx, i32* %cy)
  %25 = load i32, i32* %cx, align 4
  %conv = sitofp i32 %25 to double
  %26 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call9 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %26)
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call10 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %27)
  %sub = fsub double %call9, %call10
  %mul = fmul double %conv, %sub
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %28 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %28 to double
  %div = fdiv double %mul, %conv11
  store double %div, double* %x, align 8
  %29 = load i32, i32* %cy, align 4
  %conv12 = sitofp i32 %29 to double
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call13 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %30)
  %31 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call14 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %31)
  %sub15 = fsub double %call13, %call14
  %mul16 = fmul double %conv12, %sub15
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height, align 4
  %conv17 = sitofp i32 %32 to double
  %div18 = fdiv double %mul16, %conv17
  store double %div18, double* %y, align 8
  %33 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call19 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %33)
  %34 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call20 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %34)
  %div21 = fdiv double %call20, 2.000000e+00
  %sub22 = fsub double %call19, %div21
  %35 = load double, double* %x, align 8
  %add = fadd double %35, %sub22
  store double %add, double* %x, align 8
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call23 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %36)
  %37 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call24 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %37)
  %div25 = fdiv double %call24, 2.000000e+00
  %sub26 = fsub double %call23, %div25
  %38 = load double, double* %y, align 8
  %add27 = fadd double %38, %sub26
  store double %add27, double* %y, align 8
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %40 = load double, double* %x, align 8
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call28 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %41)
  %42 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call29 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %42)
  %sub30 = fsub double %call28, %call29
  %cmp31 = fcmp ogt double %40, %sub30
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.2
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call33 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %43)
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call34 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %44)
  %sub35 = fsub double %call33, %call34
  br label %cond.end.42

cond.false:                                       ; preds = %sw.bb.2
  %45 = load double, double* %x, align 8
  %46 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call36 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %46)
  %cmp37 = fcmp olt double %45, %call36
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.false
  %47 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call40 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %47)
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false
  %48 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.39
  %cond = phi double [ %call40, %cond.true.39 ], [ %48, %cond.false.41 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end, %cond.true
  %cond43 = phi double [ %sub35, %cond.true ], [ %cond, %cond.end ]
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %39, double %cond43)
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %50 = load double, double* %y, align 8
  %51 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call44 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %51)
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call45 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %52)
  %sub46 = fsub double %call44, %call45
  %cmp47 = fcmp ogt double %50, %sub46
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end.42
  %53 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call50 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %53)
  %54 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call51 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %54)
  %sub52 = fsub double %call50, %call51
  br label %cond.end.62

cond.false.53:                                    ; preds = %cond.end.42
  %55 = load double, double* %y, align 8
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call54 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %56)
  %cmp55 = fcmp olt double %55, %call54
  br i1 %cmp55, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %cond.false.53
  %57 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call58 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %57)
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.false.53
  %58 = load double, double* %y, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.57
  %cond61 = phi double [ %call58, %cond.true.57 ], [ %58, %cond.false.59 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true.49
  %cond63 = phi double [ %sub52, %cond.true.49 ], [ %cond61, %cond.end.60 ]
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %49, double %cond63)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call64 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %60)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call64, i32 0)
  %61 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %61)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.62, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scrolled_preview_nav_popup_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpScrolledPreview* %preview) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %preview.addr = alloca %struct._GimpScrolledPreview*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpScrolledPreview* %preview, %struct._GimpScrolledPreview** %preview.addr, align 8
  %0 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  %call2 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %3)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %7)
  %sub = fsub double %call4, %call5
  %div = fdiv double %call3, %sub
  store double %div, double* %x, align 8
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call6 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %8)
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %9)
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call8 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %10)
  %sub9 = fsub double %call7, %call8
  %div10 = fdiv double %call6, %sub9
  store double %div10, double* %w, align 8
  %11 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %preview.addr, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_range_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkRange*
  %call13 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %14)
  store %struct._GtkAdjustment* %call13, %struct._GtkAdjustment** %adj, align 8
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call14 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %15)
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call15 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %16)
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call16 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %17)
  %sub17 = fsub double %call15, %call16
  %div18 = fdiv double %call14, %sub17
  store double %div18, double* %y, align 8
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call19 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %18)
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call20 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %19)
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call21 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %20)
  %sub22 = fsub double %call20, %call21
  %div23 = fdiv double %call19, %sub22
  store double %div23, double* %h, align 8
  %21 = load double, double* %w, align 8
  %cmp = fcmp oge double %21, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %22 = load double, double* %h, align 8
  %cmp24 = fcmp oge double %22, 1.000000e+00
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %23 = load double, double* %x, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width, align 4
  %conv = sitofp i32 %24 to double
  %mul = fmul double %23, %conv
  %call25 = call double @floor(double %mul) #5
  store double %call25, double* %x, align 8
  %25 = load double, double* %y, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %26 = load i32, i32* %height, align 4
  %conv26 = sitofp i32 %26 to double
  %mul27 = fmul double %25, %conv26
  %call28 = call double @floor(double %mul27) #5
  store double %call28, double* %y, align 8
  %27 = load double, double* %w, align 8
  %width29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %28 = load i32, i32* %width29, align 4
  %conv30 = sitofp i32 %28 to double
  %mul31 = fmul double %27, %conv30
  %call32 = call double @ceil(double %mul31) #5
  %cmp33 = fcmp ogt double 1.000000e+00, %call32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %29 = load double, double* %w, align 8
  %width35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width35, align 4
  %conv36 = sitofp i32 %30 to double
  %mul37 = fmul double %29, %conv36
  %call38 = call double @ceil(double %mul37) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %call38, %cond.false ]
  store double %cond, double* %w, align 8
  %31 = load double, double* %h, align 8
  %height39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height39, align 4
  %conv40 = sitofp i32 %32 to double
  %mul41 = fmul double %31, %conv40
  %call42 = call double @ceil(double %mul41) #5
  %cmp43 = fcmp ogt double 1.000000e+00, %call42
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.end
  br label %cond.end.51

cond.false.46:                                    ; preds = %cond.end
  %33 = load double, double* %h, align 8
  %height47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %34 = load i32, i32* %height47, align 4
  %conv48 = sitofp i32 %34 to double
  %mul49 = fmul double %33, %conv48
  %call50 = call double @ceil(double %mul49) #5
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.46, %cond.true.45
  %cond52 = phi double [ 1.000000e+00, %cond.true.45 ], [ %call50, %cond.false.46 ]
  store double %cond52, double* %h, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call53 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %35)
  %call54 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call53)
  store %struct._cairo* %call54, %struct._cairo** %cr, align 8
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %37, i32 0, i32 4
  %38 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %36, %struct._GdkRegion* %38)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %39)
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width55 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %41 = load i32, i32* %width55, align 4
  %conv56 = sitofp i32 %41 to double
  %height57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %42 = load i32, i32* %height57, align 4
  %conv58 = sitofp i32 %42 to double
  call void @cairo_rectangle(%struct._cairo* %40, double 0.000000e+00, double 0.000000e+00, double %conv56, double %conv58)
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %44 = load double, double* %x, align 8
  %45 = load double, double* %y, align 8
  %46 = load double, double* %w, align 8
  %47 = load double, double* %h, align 8
  call void @cairo_rectangle(%struct._cairo* %43, double %44, double %45, double %46, double %47)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %48, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_fill_rule(%struct._cairo* %49, i32 1)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %50)
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %52 = load double, double* %x, align 8
  %53 = load double, double* %y, align 8
  %54 = load double, double* %w, align 8
  %55 = load double, double* %h, align 8
  call void @cairo_rectangle(%struct._cairo* %51, double %52, double %53, double %54, double %55)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %56, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %57, double 2.000000e+00)
  %58 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %58)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %59)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.51, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare void @gtk_widget_realize(%struct._GtkWidget*) #2

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #2

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #2

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #2

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #2

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #2

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #2

declare void @cairo_clip(%struct._cairo*) #2

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #2

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #2

declare void @cairo_set_fill_rule(%struct._cairo*, i32) #2

declare void @cairo_fill(%struct._cairo*) #2

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #2

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @cairo_stroke(%struct._cairo*) #2

declare void @cairo_destroy(%struct._cairo*) #2

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
