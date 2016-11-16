; ModuleID = './libgimpwidgets/gimppreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
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
%struct._GimpPreviewClass = type { %struct._GtkBoxClass, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)*, void (%struct._GimpPreview*, i8*, i32)*, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void ()*, void ()* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.GimpPreviewPrivate = type { %struct._GtkWidget* }
%struct._GtkOrientable = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkAspectFrame = type { %struct._GtkFrame, float, float, float, i32, %struct._GdkRectangle }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_preview_get_type.preview_type = internal global i64 0, align 8
@gimp_preview_get_type.preview_info = internal constant %struct._GTypeInfo { i16 896, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpPreviewClass*)* @gimp_preview_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 224, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPreview*)* @gimp_preview_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpPreview\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_preview_set_update = private unnamed_addr constant [24 x i8] c"gimp_preview_set_update\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PREVIEW (preview)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@__func__.gimp_preview_get_update = private unnamed_addr constant [24 x i8] c"gimp_preview_get_update\00", align 1
@__func__.gimp_preview_set_bounds = private unnamed_addr constant [24 x i8] c"gimp_preview_set_bounds\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"xmax > xmin\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ymax > ymin\00", align 1
@__func__.gimp_preview_get_size = private unnamed_addr constant [22 x i8] c"gimp_preview_get_size\00", align 1
@__func__.gimp_preview_get_position = private unnamed_addr constant [26 x i8] c"gimp_preview_get_position\00", align 1
@__func__.gimp_preview_transform = private unnamed_addr constant [23 x i8] c"gimp_preview_transform\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"dest_x != NULL && dest_y != NULL\00", align 1
@__func__.gimp_preview_untransform = private unnamed_addr constant [25 x i8] c"gimp_preview_untransform\00", align 1
@__func__.gimp_preview_get_area = private unnamed_addr constant [22 x i8] c"gimp_preview_get_area\00", align 1
@__func__.gimp_preview_invalidate = private unnamed_addr constant [24 x i8] c"gimp_preview_invalidate\00", align 1
@__func__.gimp_preview_set_default_cursor = private unnamed_addr constant [32 x i8] c"gimp_preview_set_default_cursor\00", align 1
@__func__.gimp_preview_get_controls = private unnamed_addr constant [26 x i8] c"gimp_preview_get_controls\00", align 1
@parent_class = internal global %struct._GtkBoxClass* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@preview_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"gimppreview.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"notify::check-size\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"notify::check-type\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"unrealize\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"_Preview\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_preview_area_realize = private unnamed_addr constant [26 x i8] c"gimp_preview_area_realize\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"preview->cursor_busy == NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_preview_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_preview_get_type.preview_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gtk_box_get_type() #7
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_preview_get_type.preview_info, i32 16)
  store i64 %call1, i64* @gimp_preview_get_type.preview_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_preview_get_type.preview_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_class_init(%struct._GimpPreviewClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpPreviewClass* %klass, %struct._GimpPreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPreviewClass* %6 to i8*
  %call3 = call i8* @g_type_class_peek_parent(i8* %7)
  %8 = bitcast i8* %call3 to %struct._GtkBoxClass*
  store %struct._GtkBoxClass* %8, %struct._GtkBoxClass** @parent_class, align 8
  %9 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPreviewClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i64 %11, i32 1, i32 856, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @preview_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_preview_dispose, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_preview_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_preview_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %direction_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 18
  store void (%struct._GtkWidget*, i32)* @gimp_preview_direction_changed, void (%struct._GtkWidget*, i32)** %direction_changed, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_preview_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %17 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %draw = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %17, i32 0, i32 1
  store void (%struct._GimpPreview*)* null, void (%struct._GimpPreview*)** %draw, align 8
  %18 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %draw_thumb = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %18, i32 0, i32 2
  store void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)* null, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)** %draw_thumb, align 8
  %19 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %draw_buffer = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %19, i32 0, i32 3
  store void (%struct._GimpPreview*, i8*, i32)* null, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer, align 8
  %20 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %set_cursor = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %20, i32 0, i32 4
  store void (%struct._GimpPreview*)* @gimp_preview_real_set_cursor, void (%struct._GimpPreview*)** %set_cursor, align 8
  %21 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %21, i32 0, i32 6
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_preview_real_transform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %transform, align 8
  %22 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %klass.addr, align 8
  %untransform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %22, i32 0, i32 7
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_preview_real_untransform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %untransform, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %24 = bitcast %struct._GObjectClass* %23 to i8*
  call void @g_type_class_add_private(i8* %24, i64 8)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 1, %struct._GParamSpec* %call5)
  %26 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1024, i32 200, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %26, %struct._GParamSpec* %call6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_init(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %priv = alloca %struct.GimpPreviewPrivate*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %xalign = alloca double, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpPreviewPrivate*
  store %struct.GimpPreviewPrivate* %2, %struct.GimpPreviewPrivate** %priv, align 8
  store double 0.000000e+00, double* %xalign, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %5, i32 1)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %7 = bitcast %struct._GimpPreview* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %8, i32 0)
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %10 = bitcast %struct._GimpPreview* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %11, i32 6)
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %13 = bitcast %struct._GimpPreview* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %call10 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %14)
  %cmp = icmp eq i32 %call10, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %xalign, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load double, double* %xalign, align 8
  %conv = fptrunc double %15 to float
  %call11 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float %conv, float 0.000000e+00, float 1.000000e+00, i32 1)
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %frame12 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %16, i32 0, i32 4
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %frame12, align 8
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %frame13 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_frame_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %20, i32 0)
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %22 = bitcast %struct._GimpPreview* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %24 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %frame18 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 4
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame18, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %frame19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame19, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call20 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  %28 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %28, i32 0, i32 3
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %table, align 8
  %29 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table21 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table21, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %32, i32 1, i32 3)
  %33 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %frame24 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %33, i32 0, i32 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame24, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call25)
  %36 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  %37 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table27 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %37, i32 0, i32 3
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table27, align 8
  call void @gtk_container_add(%struct._GtkContainer* %36, %struct._GtkWidget* %38)
  %39 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table28 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %39, i32 0, i32 3
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table28, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %41, i32 0, i32 16
  store i32 0, i32* %timeout_id, align 4
  %42 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %42, i32 0, i32 12
  store i32 0, i32* %ymin, align 4
  %43 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %43, i32 0, i32 10
  store i32 0, i32* %xmin, align 4
  %44 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %44, i32 0, i32 13
  store i32 1, i32* %ymax, align 4
  %45 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %45, i32 0, i32 11
  store i32 1, i32* %xmax, align 4
  %46 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax29 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %46, i32 0, i32 11
  %47 = load i32, i32* %xmax29, align 4
  %48 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin30 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %48, i32 0, i32 10
  %49 = load i32, i32* %xmin30, align 4
  %sub = sub nsw i32 %47, %49
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %50, i32 0, i32 14
  store i32 %sub, i32* %width, align 4
  %51 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax31 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %51, i32 0, i32 13
  %52 = load i32, i32* %ymax31, align 4
  %53 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin32 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %53, i32 0, i32 12
  %54 = load i32, i32* %ymin32, align 4
  %sub33 = sub nsw i32 %52, %54
  %55 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %55, i32 0, i32 15
  store i32 %sub33, i32* %height, align 4
  %56 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %56, i32 0, i32 8
  store i32 0, i32* %xoff, align 4
  %57 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %57, i32 0, i32 9
  store i32 0, i32* %yoff, align 4
  %58 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %58, i32 0, i32 7
  store %struct._GdkCursor* null, %struct._GdkCursor** %default_cursor, align 8
  %call34 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %frame, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_frame_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call35)
  %61 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %61, i32 1)
  %62 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table37 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %62, i32 0, i32 3
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table37, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call38)
  %65 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %65, %struct._GtkWidget* %66, i32 0, i32 1, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %call40 = call %struct._GtkWidget* @gimp_preview_area_new()
  %68 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %68, i32 0, i32 2
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %area, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_container_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call41)
  %71 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkContainer*
  %72 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area43 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %72, i32 0, i32 2
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %area43, align 8
  call void @gtk_container_add(%struct._GtkContainer* %71, %struct._GtkWidget* %73)
  %74 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area44 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %74, i32 0, i32 2
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %area44, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area45 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %76, i32 0, i32 2
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %area45, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %79 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %80 = bitcast %struct._GimpPreview* %79 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_notify_checks to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 2)
  %81 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area47 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %81, i32 0, i32 2
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %area47, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %85 = bitcast %struct._GimpPreview* %84 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_notify_checks to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  %86 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area49 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %86, i32 0, i32 2
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %area49, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %87, i32 792)
  %88 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area50 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %88, i32 0, i32 2
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %area50, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %91 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %92 = bitcast %struct._GimpPreview* %91 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpPreview*)* @gimp_preview_area_event to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area52 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %93, i32 0, i32 2
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %area52, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %96 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %97 = bitcast %struct._GimpPreview* %96 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreview*)* @gimp_preview_area_realize to void ()*), i8* %97, void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area54 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %98, i32 0, i32 2
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %area54, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %102 = bitcast %struct._GimpPreview* %101 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreview*)* @gimp_preview_area_unrealize to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area56 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %103, i32 0, i32 2
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %area56, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %107 = bitcast %struct._GimpPreview* %106 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_area_set_cursor to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 3)
  %108 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area58 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %108, i32 0, i32 2
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %area58, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %111 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %112 = bitcast %struct._GimpPreview* %111 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpPreview*)* @gimp_preview_area_size_allocate to void ()*), i8* %112, void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area60 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %113, i32 0, i32 2
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %area60, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %116 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %117 = bitcast %struct._GimpPreview* %116 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_area_set_cursor to void ()*), i8* %117, void (i8*, %struct._GClosure*)* null, i32 3)
  %call62 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  %118 = load %struct.GimpPreviewPrivate*, %struct.GimpPreviewPrivate** %priv, align 8
  %controls = getelementptr inbounds %struct.GimpPreviewPrivate, %struct.GimpPreviewPrivate* %118, i32 0, i32 0
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %controls, align 8
  %119 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %table63 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %119, i32 0, i32 3
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table63, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call64)
  %122 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %123 = load %struct.GimpPreviewPrivate*, %struct.GimpPreviewPrivate** %priv, align 8
  %controls66 = getelementptr inbounds %struct.GimpPreviewPrivate, %struct.GimpPreviewPrivate* %123, i32 0, i32 0
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %controls66, align 8
  call void @gtk_table_attach(%struct._GtkTable* %122, %struct._GtkWidget* %124, i32 0, i32 2, i32 2, i32 3, i32 5, i32 4, i32 0, i32 0)
  %125 = load %struct.GimpPreviewPrivate*, %struct.GimpPreviewPrivate** %priv, align 8
  %controls67 = getelementptr inbounds %struct.GimpPreviewPrivate, %struct.GimpPreviewPrivate* %125, i32 0, i32 0
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %controls67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %call68 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #5
  %call69 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call68)
  %127 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %toggle = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %127, i32 0, i32 5
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %toggle, align 8
  %128 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %toggle70 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %128, i32 0, i32 5
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle70, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_toggle_button_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call71)
  %131 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkToggleButton*
  %132 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %update_preview = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %132, i32 0, i32 1
  %133 = load i32, i32* %update_preview, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %131, i32 %133)
  %134 = load %struct.GimpPreviewPrivate*, %struct.GimpPreviewPrivate** %priv, align 8
  %controls73 = getelementptr inbounds %struct.GimpPreviewPrivate, %struct.GimpPreviewPrivate* %134, i32 0, i32 0
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %controls73, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call74)
  %137 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %138 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %toggle76 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %138, i32 0, i32 5
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle76, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %137, %struct._GtkWidget* %139, i32 1, i32 1, i32 0)
  %140 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %toggle77 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %140, i32 0, i32 5
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle77, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %toggle78 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %142, i32 0, i32 5
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle78, align 8
  %144 = bitcast %struct._GtkWidget* %143 to i8*
  %145 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %146 = bitcast %struct._GimpPreview* %145 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreview*)* @gimp_preview_toggle_callback to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_preview_set_update(%struct._GimpPreview* %preview, i32 %update) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %update.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %update, i32* %update.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_set_update, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %14 = bitcast %struct._GimpPreview* %13 to i8*
  %15 = load i32, i32* %update.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %15, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_object_set(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_preview_get_update(%struct._GimpPreview* %preview) #1 {
entry:
  %retval = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_get_update, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %update_preview = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 1
  %14 = load i32, i32* %update_preview, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_set_bounds(%struct._GimpPreview* %preview, i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %xmin, i32* %xmin.addr, align 4
  store i32 %ymin, i32* %ymin.addr, align 4
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_set_bounds, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %xmax.addr, align 4
  %14 = load i32, i32* %xmin.addr, align 4
  %cmp12 = icmp sgt i32 %13, %14
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_set_bounds, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load i32, i32* %ymax.addr, align 4
  %16 = load i32, i32* %ymin.addr, align 4
  %cmp18 = icmp sgt i32 %15, %16
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_set_bounds, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load i32, i32* %xmin.addr, align 4
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin23 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %18, i32 0, i32 10
  store i32 %17, i32* %xmin23, align 4
  %19 = load i32, i32* %ymin.addr, align 4
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin24 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 12
  store i32 %19, i32* %ymin24, align 4
  %21 = load i32, i32* %xmax.addr, align 4
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax25 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 11
  store i32 %21, i32* %xmax25, align 4
  %23 = load i32, i32* %ymax.addr, align 4
  %24 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax26 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 13
  store i32 %23, i32* %ymax26, align 4
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_preview_area_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call27)
  %28 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpPreviewArea*
  %29 = load i32, i32* %xmax.addr, align 4
  %30 = load i32, i32* %xmin.addr, align 4
  %sub = sub nsw i32 %29, %30
  %31 = load i32, i32* %ymax.addr, align 4
  %32 = load i32, i32* %ymin.addr, align 4
  %sub29 = sub nsw i32 %31, %32
  call void @gimp_preview_area_set_max_size(%struct._GimpPreviewArea* %28, i32 %sub, i32 %sub29)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_preview_area_set_max_size(%struct._GimpPreviewArea*, i32, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_preview_get_size(%struct._GimpPreview* %preview, i32* %width, i32* %height) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_preview_get_size, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %width.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width13 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 14
  %15 = load i32, i32* %width13, align 4
  %16 = load i32*, i32** %width.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i32*, i32** %height.addr, align 8
  %tobool15 = icmp ne i32* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height17 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %18, i32 0, i32 15
  %19 = load i32, i32* %height17, align 4
  %20 = load i32*, i32** %height.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_get_position(%struct._GimpPreview* %preview, i32* %x, i32* %y) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_preview_get_position, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %x.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 8
  %15 = load i32, i32* %xoff, align 4
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %16, i32 0, i32 10
  %17 = load i32, i32* %xmin, align 4
  %add = add nsw i32 %15, %17
  %18 = load i32*, i32** %x.addr, align 8
  store i32 %add, i32* %18, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %19 = load i32*, i32** %y.addr, align 8
  %tobool14 = icmp ne i32* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 9
  %21 = load i32, i32* %yoff, align 4
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 12
  %23 = load i32, i32* %ymin, align 4
  %add16 = add nsw i32 %21, %23
  %24 = load i32*, i32** %y.addr, align 8
  store i32 %add16, i32* %24, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_transform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_transform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %dest_x.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32*, i32** %dest_y.addr, align 8
  %cmp14 = icmp ne i32* %14, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_transform, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpPreview* %15 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpPreviewClass*
  %transform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %18, i32 0, i32 6
  %19 = load void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %transform, align 8
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %21 = load i32, i32* %src_x.addr, align 4
  %22 = load i32, i32* %src_y.addr, align 4
  %23 = load i32*, i32** %dest_x.addr, align 8
  %24 = load i32*, i32** %dest_y.addr, align 8
  call void %19(%struct._GimpPreview* %20, i32 %21, i32 %22, i32* %23, i32* %24)
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_untransform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_preview_untransform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %dest_x.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32*, i32** %dest_y.addr, align 8
  %cmp14 = icmp ne i32* %14, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_preview_untransform, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpPreview* %15 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpPreviewClass*
  %untransform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %18, i32 0, i32 7
  %19 = load void (%struct._GimpPreview*, i32, i32, i32*, i32*)*, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %untransform, align 8
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %21 = load i32, i32* %src_x.addr, align 4
  %22 = load i32, i32* %src_y.addr, align 4
  %23 = load i32*, i32** %dest_x.addr, align 8
  %24 = load i32*, i32** %dest_y.addr, align 8
  call void %19(%struct._GimpPreview* %20, i32 %21, i32 %22, i32* %23, i32* %24)
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_preview_get_area(%struct._GimpPreview* %preview) #1 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_preview_get_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_draw(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %3, %struct._GimpPreviewClass** %class, align 8
  %4 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %class, align 8
  %draw = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %4, i32 0, i32 1
  %5 = load void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)** %draw, align 8
  %tobool = icmp ne void (%struct._GimpPreview*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %class, align 8
  %draw1 = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %6, i32 0, i32 1
  %7 = load void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)** %draw1, align 8
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void %7(%struct._GimpPreview* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_draw_buffer(%struct._GimpPreview* %preview, i8* %buffer, i32 %rowstride) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %buffer.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %3, %struct._GimpPreviewClass** %class, align 8
  %4 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %class, align 8
  %draw_buffer = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %4, i32 0, i32 3
  %5 = load void (%struct._GimpPreview*, i8*, i32)*, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer, align 8
  %tobool = icmp ne void (%struct._GimpPreview*, i8*, i32)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %class, align 8
  %draw_buffer1 = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %6, i32 0, i32 3
  %7 = load void (%struct._GimpPreview*, i8*, i32)*, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer1, align 8
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i32, i32* %rowstride.addr, align 4
  call void %7(%struct._GimpPreview* %8, i8* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_invalidate(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %update_preview = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 1
  %14 = load i32, i32* %update_preview, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 16
  %16 = load i32, i32* %timeout_id, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.12
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id15 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 16
  %18 = load i32, i32* %timeout_id15, align 4
  %call16 = call i32 @g_source_remove(i32 %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.then.12
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %20 = bitcast %struct._GimpPreview* %19 to i8*
  %call18 = call i32 @g_timeout_add_full(i32 200, i32 200, i32 (i8*)* bitcast (i32 (%struct._GimpPreview*)* @gimp_preview_invalidate_now to i32 (i8*)*), i8* %20, void (i8*)* null)
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 16
  store i32 %call18, i32* %timeout_id19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.end.17, %do.end
  ret void
}

declare i32 @g_source_remove(i32) #2

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_preview_invalidate_now(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toplevel, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %6, %struct._GimpPreviewClass** %class, align 8
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %7)
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %8, i32 0, i32 16
  store i32 0, i32* %timeout_id, align 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call3 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %12, i32 0, i32 6
  %13 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call5, %struct._GdkCursor* %13)
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy7 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %16, i32 0, i32 6
  %17 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy7, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call6, %struct._GdkCursor* %17)
  call void @gdk_flush()
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %19 = bitcast %struct._GimpPreview* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @preview_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  %21 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %class, align 8
  %set_cursor = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %21, i32 0, i32 4
  %22 = load void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)** %set_cursor, align 8
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void %22(%struct._GimpPreview* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %24)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call8, %struct._GdkCursor* null)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %26 = bitcast %struct._GimpPreview* %25 to i8*
  %27 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @preview_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %26, i32 %27, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_set_default_cursor(%struct._GimpPreview* %preview, %struct._GdkCursor* %cursor) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %cursor.addr = alloca %struct._GdkCursor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GdkCursor* %cursor, %struct._GdkCursor** %cursor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_preview_set_default_cursor, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 7
  %14 = load %struct._GdkCursor*, %struct._GdkCursor** %default_cursor, align 8
  %tobool11 = icmp ne %struct._GdkCursor* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor13 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 7
  %16 = load %struct._GdkCursor*, %struct._GdkCursor** %default_cursor13, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor.addr, align 8
  %tobool15 = icmp ne %struct._GdkCursor* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor.addr, align 8
  %call17 = call %struct._GdkCursor* @gdk_cursor_ref(%struct._GdkCursor* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %19 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor.addr, align 8
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 7
  store %struct._GdkCursor* %19, %struct._GdkCursor** %default_cursor19, align 8
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  ret void
}

declare void @gdk_cursor_unref(%struct._GdkCursor*) #2

declare %struct._GdkCursor* @gdk_cursor_ref(%struct._GdkCursor*) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_preview_get_controls(%struct._GimpPreview* %preview) #1 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_preview_get_controls, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %14 = bitcast %struct._GimpPreview* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_preview_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpPreviewPrivate*
  %controls = getelementptr inbounds %struct.GimpPreviewPrivate, %struct.GimpPreviewPrivate* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %controls, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare i8* @g_type_class_peek_parent(i8*) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_dispose(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %timeout_id = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 16
  %4 = load i32, i32* %timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %timeout_id2 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 16
  %6 = load i32, i32* %timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %timeout_id4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 16
  store i32 0, i32* %timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkBoxClass*, %struct._GtkBoxClass** @parent_class, align 8
  %9 = bitcast %struct._GtkBoxClass* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %update_preview = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 1
  %6 = load i32, i32* %update_preview, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %toggle = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %7, i32 %call4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %_glib__object, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %_glib__pspec, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  store i32 %11, i32* %_glib__property_id, align 4
  %12 = load i32, i32* %_glib__property_id, align 4
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %12, i8* %14, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_direction_changed(%struct._GtkWidget* %widget, i32 %prev_dir) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_dir.addr = alloca i32, align 4
  %preview = alloca %struct._GimpPreview*, align 8
  %xalign = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %prev_dir, i32* %prev_dir.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  store double 0.000000e+00, double* %xalign, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %3)
  %cmp = icmp eq i32 %call2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %xalign, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %frame = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_aspect_frame_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkAspectFrame*
  %8 = load double, double* %xalign, align 8
  %conv = fptrunc double %8 to float
  call void @gtk_aspect_frame_set(%struct._GtkAspectFrame* %7, float %conv, float 0.000000e+00, float 1.000000e+00, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_preview_popup_menu(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_area_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreviewArea*
  call void @gimp_preview_area_menu_popup(%struct._GimpPreviewArea* %6, %struct._GdkEventButton* null)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_real_set_cursor(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area1 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area1, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 7
  %5 = load %struct._GdkCursor*, %struct._GdkCursor** %default_cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_real_transform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load i32, i32* %src_x.addr, align 4
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %1, i32 0, i32 8
  %2 = load i32, i32* %xoff, align 4
  %sub = sub nsw i32 %0, %2
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 10
  %4 = load i32, i32* %xmin, align 4
  %sub1 = sub nsw i32 %sub, %4
  %5 = load i32*, i32** %dest_x.addr, align 8
  store i32 %sub1, i32* %5, align 4
  %6 = load i32, i32* %src_y.addr, align 4
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 9
  %8 = load i32, i32* %yoff, align 4
  %sub2 = sub nsw i32 %6, %8
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 12
  %10 = load i32, i32* %ymin, align 4
  %sub3 = sub nsw i32 %sub2, %10
  %11 = load i32*, i32** %dest_y.addr, align 8
  store i32 %sub3, i32* %11, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_real_untransform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load i32, i32* %src_x.addr, align 4
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %1, i32 0, i32 8
  %2 = load i32, i32* %xoff, align 4
  %add = add nsw i32 %0, %2
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 10
  %4 = load i32, i32* %xmin, align 4
  %add1 = add nsw i32 %add, %4
  %5 = load i32*, i32** %dest_x.addr, align 8
  store i32 %add1, i32* %5, align 4
  %6 = load i32, i32* %src_y.addr, align 4
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 9
  %8 = load i32, i32* %yoff, align 4
  %add2 = add nsw i32 %6, %8
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 12
  %10 = load i32, i32* %ymin, align 4
  %add3 = add nsw i32 %add2, %10
  %11 = load i32*, i32** %dest_y.addr, align 8
  store i32 %add3, i32* %11, align 4
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #2

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #2

declare void @gtk_aspect_frame_set(%struct._GtkAspectFrame*, float, float, float, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_aspect_frame_get_type() #3

declare void @gimp_preview_area_menu_popup(%struct._GimpPreviewArea*, %struct._GdkEventButton*) #2

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #2

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #3

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #2

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #2

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #2

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare %struct._GtkWidget* @gimp_preview_area_new() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_notify_checks(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %0)
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %1)
  ret void
}

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_preview_area_event(%struct._GtkWidget* %area, %union._GdkEvent* %event, %struct._GimpPreview* %preview) #1 {
entry:
  %retval = alloca i32, align 4
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %1 = bitcast %union._GdkEvent* %0 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %1, %struct._GdkEventButton** %button_event, align 8
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %2 to i32*
  %3 = load i32, i32* %type, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 8
  %5 = load i32, i32* %button, align 4
  switch i32 %5, label %sw.epilog [
    i32 3, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPreviewArea*
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  call void @gimp_preview_area_menu_popup(%struct._GimpPreviewArea* %8, %struct._GdkEventButton* %9)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %sw.epilog.3

sw.default:                                       ; preds = %entry
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default, %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.3, %sw.bb.1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_realize(%struct._GtkWidget* %widget, %struct._GimpPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %1, i32 0, i32 6
  %2 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy, align 8
  %cmp = icmp eq %struct._GdkCursor* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_preview_area_realize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %3, i32 150)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy2 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 6
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor_busy2, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_unrealize(%struct._GtkWidget* %widget, %struct._GimpPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %0, i32 0, i32 6
  %1 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy, align 8
  %tobool = icmp ne %struct._GdkCursor* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy1 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 6
  %3 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy1, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %3)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cursor_busy2 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 6
  store %struct._GdkCursor* null, %struct._GdkCursor** %cursor_busy2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_set_cursor(%struct._GimpPreview* %preview) #1 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpPreviewClass*
  %set_cursor = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %3, i32 0, i32 4
  %4 = load void (%struct._GimpPreview*)*, void (%struct._GimpPreview*)** %set_cursor, align 8
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void %4(%struct._GimpPreview* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpPreview* %preview) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %0, i32 0, i32 11
  %1 = load i32, i32* %xmax, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 10
  %3 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %width, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %4, i32 0, i32 13
  %5 = load i32, i32* %ymax, align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 12
  %7 = load i32, i32* %ymin, align 4
  %sub1 = sub nsw i32 %5, %7
  store i32 %sub1, i32* %height, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %9, i32 0, i32 2
  %10 = load i32, i32* %width2, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 2
  %13 = load i32, i32* %width3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 14
  store i32 %cond, i32* %width4, align 4
  %15 = load i32, i32* %height, align 4
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i32 0, i32 3
  %17 = load i32, i32* %height5, align 4
  %cmp6 = icmp slt i32 %15, %17
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %18 = load i32, i32* %height, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 3
  %20 = load i32, i32* %height9, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ %18, %cond.true.7 ], [ %20, %cond.false.8 ]
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 15
  store i32 %cond11, i32* %height12, align 4
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %22)
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %23)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_toggle_callback(%struct._GtkWidget* %toggle, %struct._GimpPreview* %preview) #1 {
entry:
  %toggle.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GtkWidget* %toggle, %struct._GtkWidget** %toggle.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %update_preview = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 1
  store i32 1, i32* %update_preview, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpPreview* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 16
  %8 = load i32, i32* %timeout_id, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %timeout_id6 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 16
  %10 = load i32, i32* %timeout_id6, align 4
  %call7 = call i32 @g_source_remove(i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %call8 = call i32 @gimp_preview_invalidate_now(%struct._GimpPreview* %11)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %update_preview9 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %12, i32 0, i32 1
  store i32 0, i32* %update_preview9, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %14 = bitcast %struct._GimpPreview* %13 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_draw(%struct._GimpPreview* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #2

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #2

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #2

declare void @g_object_notify(%struct._GObject*, i8*) #2

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #2

declare void @gdk_flush() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
