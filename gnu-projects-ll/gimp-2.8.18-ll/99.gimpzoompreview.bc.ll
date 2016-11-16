; ModuleID = './libgimp/gimpzoompreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpZoomPreviewClass = type { %struct._GimpScrolledPreviewClass, void ()*, void ()*, void ()*, void ()* }
%struct._GimpScrolledPreviewClass = type { %struct._GimpPreviewClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct.GimpZoomPreviewPrivate = type { %struct._GimpDrawable*, %struct._GimpZoomModel*, %struct._GdkRectangle }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.PreviewSettings = type { i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_zoom_preview_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpZoomPreview\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_zoom_preview_new = private unnamed_addr constant [22 x i8] c"gimp_zoom_preview_new\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@__func__.gimp_zoom_preview_new_with_model = private unnamed_addr constant [33 x i8] c"gimp_zoom_preview_new_with_model\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ZOOM_MODEL (model)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@__func__.gimp_zoom_preview_get_drawable = private unnamed_addr constant [31 x i8] c"gimp_zoom_preview_get_drawable\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GIMP_IS_ZOOM_PREVIEW (preview)\00", align 1
@__func__.gimp_zoom_preview_get_model = private unnamed_addr constant [28 x i8] c"gimp_zoom_preview_get_model\00", align 1
@__func__.gimp_zoom_preview_get_factor = private unnamed_addr constant [29 x i8] c"gimp_zoom_preview_get_factor\00", align 1
@__func__.gimp_zoom_preview_get_source = private unnamed_addr constant [29 x i8] c"gimp_zoom_preview_get_source\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"width != NULL && height != NULL && bpp != NULL\00", align 1
@gimp_zoom_preview_parent_class = internal global i8* null, align 8
@GimpZoomPreview_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"%s-zoom-preview-%d\00", align 1
@gimp_zoom_preview_counter = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"gimp-zoom-preview-data-name\00", align 1
@__func__.gimp_zoom_preview_set_model = private unnamed_addr constant [28 x i8] c"gimp_zoom_preview_set_model\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"priv->model == NULL\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"zoomed\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"GTK_IS_BOX (box)\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"gimpzoompreview.c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_zoom_preview_set_drawable = private unnamed_addr constant [31 x i8] c"gimp_zoom_preview_set_drawable\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"priv->drawable == NULL\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"scroll-event\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_zoom_preview_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_zoom_preview_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_zoom_preview_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_scrolled_preview_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 960, void (i8*, i8*)* bitcast (void (i8*)* @gimp_zoom_preview_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpZoomPreview*)* @gimp_zoom_preview_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_zoom_preview_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_zoom_preview_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_scrolled_preview_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_zoom_preview_parent_class, align 8
  %1 = load i32, i32* @GimpZoomPreview_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpZoomPreview_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpZoomPreviewClass*
  call void @gimp_zoom_preview_class_init(%struct._GimpZoomPreviewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_init(%struct._GimpZoomPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpZoomPreviewPrivate*
  %3 = bitcast %struct.GimpZoomPreviewPrivate* %2 to i8*
  %4 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %4, i32 0, i32 1
  store i8* %3, i8** %priv, align 8
  %5 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %6 = bitcast %struct._GimpZoomPreview* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %11 = bitcast %struct._GimpZoomPreview* %10 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpZoomPreview*)* @gimp_zoom_preview_size_allocate to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %13 = bitcast %struct._GimpZoomPreview* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %area7 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %area7, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %18 = bitcast %struct._GimpZoomPreview* %17 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventScroll*, %struct._GimpZoomPreview*)* @gimp_zoom_preview_scroll_event to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %20 = bitcast %struct._GimpZoomPreview* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_preview_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPreview*
  %area11 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 2
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %area11, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call12 = call i32 @gimp_check_size() #6
  %call13 = call i32 @gimp_check_type() #6
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 %call12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 %call13, i8* null)
  %24 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %25 = bitcast %struct._GimpZoomPreview* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_scrolled_preview_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpScrolledPreview*
  call void @gimp_scrolled_preview_set_policy(%struct._GimpScrolledPreview* %26, i32 0, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_zoom_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDrawable* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_zoom_preview_new_with_model(%struct._GimpDrawable* %drawable, %struct._GimpZoomModel* %model) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_zoom_preview_new_with_model, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %2 = bitcast %struct._GimpZoomModel* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_zoom_preview_new_with_model, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i64 @gimp_zoom_preview_get_type() #6
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %call18 = call i8* (i64, i8*, ...) @g_object_new(i64 %call17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDrawable* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GimpZoomModel* %15, i8* null)
  %16 = bitcast i8* %call18 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_model_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_zoom_preview_get_drawable(%struct._GimpZoomPreview* %preview) #3 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_zoom_preview_get_drawable, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv, align 8
  %15 = bitcast i8* %14 to %struct.GimpZoomPreviewPrivate*
  %drawable = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %16, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpZoomModel* @gimp_zoom_preview_get_model(%struct._GimpZoomPreview* %preview) #3 {
entry:
  %retval = alloca %struct._GimpZoomModel*, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_zoom_preview_get_model, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpZoomModel* null, %struct._GimpZoomModel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv, align 8
  %15 = bitcast i8* %14 to %struct.GimpZoomPreviewPrivate*
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  store %struct._GimpZoomModel* %16, %struct._GimpZoomModel** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %retval
  ret %struct._GimpZoomModel* %17
}

; Function Attrs: nounwind uwtable
define double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %preview) #3 {
entry:
  %retval = alloca double, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_zoom_preview_get_factor, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %15, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %16 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %tobool12 = icmp ne %struct._GimpZoomModel* %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %18 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model13 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %18, i32 0, i32 1
  %19 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model13, align 8
  %call14 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %19)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call14, %cond.true ], [ 1.000000e+00, %cond.false ]
  store double %cond, double* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %20 = load double, double* %retval
  ret double %20
}

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %preview, i32* %width, i32* %height, i32* %bpp) #3 {
entry:
  %retval = alloca i8*, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %gimp_preview = alloca %struct._GimpPreview*, align 8
  %src_x = alloca i32, align 4
  %src_y = alloca i32, align 4
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_zoom_preview_get_source, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %width.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.18

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32*, i32** %height.addr, align 8
  %cmp14 = icmp ne i32* %14, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.18

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %15 = load i32*, i32** %bpp.addr, align 8
  %cmp16 = icmp ne i32* %15, null
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %if.end.19

if.else.18:                                       ; preds = %land.lhs.true.15, %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_zoom_preview_get_source, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %16 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %call21 = call %struct._GimpDrawable* @gimp_zoom_preview_get_drawable(%struct._GimpZoomPreview* %16)
  store %struct._GimpDrawable* %call21, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool22 = icmp ne %struct._GimpDrawable* %17, null
  br i1 %tobool22, label %if.then.23, label %if.else.34

if.then.23:                                       ; preds = %do.end.20
  %18 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %19 = bitcast %struct._GimpZoomPreview* %18 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_preview_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call25)
  %20 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpPreview*
  store %struct._GimpPreview* %20, %struct._GimpPreview** %gimp_preview, align 8
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %width31 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 14
  %22 = load i32, i32* %width31, align 4
  %23 = load i32*, i32** %width.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %height32 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 15
  %25 = load i32, i32* %height32, align 4
  %26 = load i32*, i32** %height.addr, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  call void @gimp_zoom_preview_get_source_area(%struct._GimpPreview* %27, i32* %src_x, i32* %src_y, i32* %src_width, i32* %src_height)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id, align 4
  %30 = load i32, i32* %src_x, align 4
  %31 = load i32, i32* %src_y, align 4
  %32 = load i32, i32* %src_width, align 4
  %33 = load i32, i32* %src_height, align 4
  %34 = load i32*, i32** %width.addr, align 8
  %35 = load i32*, i32** %height.addr, align 8
  %36 = load i32*, i32** %bpp.addr, align 8
  %call33 = call i8* @gimp_drawable_get_sub_thumbnail_data(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32* %34, i32* %35, i32* %36)
  store i8* %call33, i8** %retval
  br label %return

if.else.34:                                       ; preds = %do.end.20
  %37 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %bpp.addr, align 8
  store i32 0, i32* %39, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.34, %if.then.23, %if.else.18, %if.else.9
  %40 = load i8*, i8** %retval
  ret i8* %40
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_get_source_area(%struct._GimpPreview* %preview, i32* %x, i32* %y, i32* %w, i32* %h) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %w.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %zoom = alloca double, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %w, i32** %w.addr, align 8
  store i32* %h, i32** %h.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %call = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %5)
  store double %call, double* %zoom, align 8
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32*, i32** %y.addr, align 8
  call void @gimp_zoom_preview_untransform(%struct._GimpPreview* %6, i32 0, i32 0, i32* %7, i32* %8)
  %9 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %9, i32 0, i32 2
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load double, double* %zoom, align 8
  %div = fdiv double %conv, %11
  %conv2 = fptosi double %div to i32
  %12 = load i32*, i32** %w.addr, align 8
  store i32 %conv2, i32* %12, align 4
  %13 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents3 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %13, i32 0, i32 2
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents3, i32 0, i32 3
  %14 = load i32, i32* %height, align 4
  %conv4 = sitofp i32 %14 to double
  %15 = load double, double* %zoom, align 8
  %div5 = fdiv double %conv4, %15
  %conv6 = fptosi double %div5 to i32
  %16 = load i32*, i32** %h.addr, align 8
  store i32 %conv6, i32* %16, align 4
  ret void
}

declare i8* @gimp_drawable_get_sub_thumbnail_data(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_class_init(%struct._GimpZoomPreviewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpZoomPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %preview_class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpZoomPreviewClass* %klass, %struct._GimpZoomPreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpZoomPreviewClass*, %struct._GimpZoomPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpZoomPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpZoomPreviewClass*, %struct._GimpZoomPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpZoomPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpZoomPreviewClass*, %struct._GimpZoomPreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpZoomPreviewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %8, %struct._GimpPreviewClass** %preview_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_zoom_preview_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_zoom_preview_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_zoom_preview_dispose, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_zoom_preview_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_zoom_preview_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_zoom_preview_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %15 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %15, i32 0, i32 1
  store void (%struct._GimpPreview*)* @gimp_zoom_preview_draw, void (%struct._GimpPreview*)** %draw, align 8
  %16 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw_buffer = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %16, i32 0, i32 3
  store void (%struct._GimpPreview*, i8*, i32)* @gimp_zoom_preview_draw_buffer, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer, align 8
  %17 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw_thumb = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %17, i32 0, i32 2
  store void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)* @gimp_zoom_preview_draw_thumb, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)** %draw_thumb, align 8
  %18 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %set_cursor = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %18, i32 0, i32 4
  store void (%struct._GimpPreview*)* @gimp_zoom_preview_set_cursor, void (%struct._GimpPreview*)** %set_cursor, align 8
  %19 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %transform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %19, i32 0, i32 6
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_zoom_preview_transform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %transform, align 8
  %20 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %untransform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %20, i32 0, i32 7
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_zoom_preview_untransform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %untransform, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %22 = bitcast %struct._GObjectClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 32)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 1, %struct._GParamSpec* %call5)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_zoom_model_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 2, %struct._GParamSpec* %call7)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %data_name = alloca i8*, align 8
  %settings = alloca %struct.PreviewSettings, align 4
  %model14 = alloca %struct._GimpZoomModel*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed3 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 9
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed3, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i8* @g_get_prgname()
  %13 = load i32, i32* @gimp_zoom_preview_counter, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @gimp_zoom_preview_counter, align 4
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* %call4, i32 %13)
  store i8* %call5, i8** %data_name, align 8
  %14 = load i8*, i8** %data_name, align 8
  %15 = bitcast %struct.PreviewSettings* %settings to i8*
  %call6 = call i32 @gimp_procedural_db_get_data(i8* %14, i8* %15)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_preview_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPreview*
  %update = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 0
  %19 = load i32, i32* %update, align 4
  call void @gimp_preview_set_update(%struct._GimpPreview* %18, i32 %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %21 = load i8*, i8** %data_name, align 8
  call void @g_object_set_data_full(%struct._GObject* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %21, void (i8*)* @g_free)
  %22 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %22, i32 0, i32 1
  %23 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %tobool12 = icmp ne %struct._GimpZoomModel* %23, null
  br i1 %tobool12, label %if.end.18, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %call15 = call %struct._GimpZoomModel* @gimp_zoom_model_new()
  store %struct._GimpZoomModel* %call15, %struct._GimpZoomModel** %model14, align 8
  %24 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model14, align 8
  call void @gimp_zoom_model_set_range(%struct._GimpZoomModel* %24, double 1.000000e+00, double 2.560000e+02)
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_zoom_preview_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call16)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpZoomPreview*
  %28 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model14, align 8
  call void @gimp_zoom_preview_set_model(%struct._GimpZoomPreview* %27, %struct._GimpZoomModel* %28)
  %29 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model14, align 8
  %30 = bitcast %struct._GimpZoomModel* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end.11
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_zoom_preview_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpZoomPreview*
  call void @gimp_zoom_preview_set_adjustments(%struct._GimpZoomPreview* %33, double 1.000000e+00, double 1.000000e+00)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %tobool = icmp ne %struct._GimpZoomModel* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %6, i32 0, i32 1
  %7 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model2, align 8
  %8 = bitcast %struct._GimpZoomModel* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model3 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %9, i32 0, i32 1
  store %struct._GimpZoomModel* null, %struct._GimpZoomModel** %model3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %data_name = alloca i8*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %settings = alloca %struct.PreviewSettings, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call1, i8** %data_name, align 8
  %3 = load i8*, i8** %data_name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreview*
  store %struct._GimpPreview* %6, %struct._GimpPreview** %preview, align 8
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %call4 = call i32 @gimp_preview_get_update(%struct._GimpPreview* %7)
  %update = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 0
  store i32 %call4, i32* %update, align 4
  %8 = load i8*, i8** %data_name, align 8
  %9 = bitcast %struct.PreviewSettings* %settings to i8*
  %call5 = call i32 @gimp_procedural_db_set_data(i8* %8, i8* %9, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpZoomPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  store %struct._GimpZoomPreview* %2, %struct._GimpZoomPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview, align 8
  %call2 = call %struct._GimpDrawable* @gimp_zoom_preview_get_drawable(%struct._GimpZoomPreview* %5)
  %6 = bitcast %struct._GimpDrawable* %call2 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview, align 8
  %call4 = call %struct._GimpZoomModel* @gimp_zoom_preview_get_model(%struct._GimpZoomPreview* %8)
  %9 = bitcast %struct._GimpZoomModel* %call4 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %13, i8* %15, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpZoomPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  store %struct._GimpZoomPreview* %2, %struct._GimpZoomPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_pointer(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpDrawable*
  call void @gimp_zoom_preview_set_drawable(%struct._GimpZoomPreview* %4, %struct._GimpDrawable* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call4 to %struct._GimpZoomModel*
  call void @gimp_zoom_preview_set_model(%struct._GimpZoomPreview* %7, %struct._GimpZoomModel* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 315, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %13, i8* %15, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %size = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GimpZoomPreview*
  %priv2 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %4, i32 0, i32 1
  %5 = load i8*, i8** %priv2, align 8
  %6 = bitcast i8* %5 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %6, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %7 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable3 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable3, align 8
  store %struct._GimpDrawable* %8, %struct._GimpDrawable** %drawable, align 8
  %9 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call4)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 17
  %12 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GtkStyle*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** @gimp_zoom_preview_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call6)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GtkWidgetClass*
  %style_set8 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 17
  %16 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set8, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %16(%struct._GtkWidget* %17, %struct._GtkStyle* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32* %size, i8* null)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable* %20, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %21 = load i32, i32* %x2, align 4
  %22 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %width, align 4
  %23 = load i32, i32* %y2, align 4
  %24 = load i32, i32* %y1, align 4
  %sub12 = sub nsw i32 %23, %24
  store i32 %sub12, i32* %height, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id, align 4
  %call13 = call i32 @gimp_drawable_width(i32 %26)
  store i32 %call13, i32* %width, align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_height(i32 %28)
  store i32 %call15, i32* %height, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %29, %30
  br i1 %cmp, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.end.16
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %size, align 4
  %cmp18 = icmp slt i32 %31, %32
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %33 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %34 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  %35 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %35, i32 0, i32 14
  store i32 %cond, i32* %width19, align 4
  %36 = load i32, i32* %height, align 4
  %37 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width20 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %37, i32 0, i32 14
  %38 = load i32, i32* %width20, align 4
  %mul = mul nsw i32 %36, %38
  %39 = load i32, i32* %width, align 4
  %div = sdiv i32 %mul, %39
  %40 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height21 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %40, i32 0, i32 15
  store i32 %div, i32* %height21, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.end.16
  %41 = load i32, i32* %height, align 4
  %42 = load i32, i32* %size, align 4
  %cmp23 = icmp slt i32 %41, %42
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else.22
  %43 = load i32, i32* %height, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.else.22
  %44 = load i32, i32* %size, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %43, %cond.true.24 ], [ %44, %cond.false.25 ]
  %45 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height28 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %45, i32 0, i32 15
  store i32 %cond27, i32* %height28, align 4
  %46 = load i32, i32* %width, align 4
  %47 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height29 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %47, i32 0, i32 15
  %48 = load i32, i32* %height29, align 4
  %mul30 = mul nsw i32 %46, %48
  %49 = load i32, i32* %height, align 4
  %div31 = sdiv i32 %mul30, %49
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width32 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %50, i32 0, i32 14
  store i32 %div31, i32* %width32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.26, %cond.end
  %51 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %51, i32 0, i32 2
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %53 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width34 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %53, i32 0, i32 14
  %54 = load i32, i32* %width34, align 4
  %55 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height35 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %55, i32 0, i32 15
  %56 = load i32, i32* %height35, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %52, i32 %54, i32 %56)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_draw(%struct._GimpPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %data = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %tobool = icmp ne %struct._GimpZoomModel* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %6 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %7, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool3 = icmp ne %struct._GimpDrawable* %8, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %if.end.13

if.end.5:                                         ; preds = %if.end
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %10 = bitcast %struct._GimpPreview* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpZoomPreview*
  %call7 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %11, i32* %width, i32* %height, i32* %bpp)
  store i8* %call7, i8** %data, align 8
  %12 = load i8*, i8** %data, align 8
  %tobool8 = icmp ne i8* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.5
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_preview_area_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPreviewArea*
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call12 = call i32 @gimp_drawable_type(i32 %20)
  %21 = load i8*, i8** %data, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %22, %23
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %16, i32 0, i32 0, i32 %17, i32 %18, i32 %call12, i8* %21, i32 %mul)
  %24 = load i8*, i8** %data, align 8
  call void @g_free(i8* %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.4, %if.then.9, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_draw_buffer(%struct._GimpPreview* %preview, i8* %buffer, i32 %rowstride) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %buffer.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_id = alloca i32, align 4
  %sel = alloca i8*, align 8
  %src = alloca i8*, align 8
  %selection_id = alloca i32, align 4
  %width8 = alloca i32, align 4
  %height9 = alloca i32, align 4
  %bpp = alloca i32, align 4
  %src_x = alloca i32, align 4
  %src_y = alloca i32, align 4
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %offsx = alloca i32, align 4
  %offsy = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %7)
  store i32 %call, i32* %image_id, align 4
  %8 = load i32, i32* %image_id, align 4
  %call3 = call i32 @gimp_selection_is_empty(i32 %8)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_preview_area_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPreviewArea*
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 14
  %14 = load i32, i32* %width, align 4
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 15
  %16 = load i32, i32* %height, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_type(i32 %18)
  %19 = load i8*, i8** %buffer.addr, align 8
  %20 = load i32, i32* %rowstride.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %12, i32 0, i32 0, i32 %14, i32 %16, i32 %call7, i8* %19, i32 %20)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %offsx, align 4
  store i32 0, i32* %offsy, align 4
  %21 = load i32, i32* %image_id, align 4
  %call10 = call i32 @gimp_image_get_selection(i32 %21)
  store i32 %call10, i32* %selection_id, align 4
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width11 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 14
  %23 = load i32, i32* %width11, align 4
  store i32 %23, i32* %width8, align 4
  %24 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 15
  %25 = load i32, i32* %height12, align 4
  store i32 %25, i32* %height9, align 4
  %26 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_zoom_preview_get_source_area(%struct._GimpPreview* %26, i32* %src_x, i32* %src_y, i32* %src_width, i32* %src_height)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id13, align 4
  %29 = load i32, i32* %src_x, align 4
  %30 = load i32, i32* %src_y, align 4
  %31 = load i32, i32* %src_width, align 4
  %32 = load i32, i32* %src_height, align 4
  %call14 = call i8* @gimp_drawable_get_sub_thumbnail_data(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32* %width8, i32* %height9, i32* %bpp)
  store i8* %call14, i8** %src, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_offsets(i32 %34, i32* %offsx, i32* %offsy)
  %35 = load i32, i32* %selection_id, align 4
  %36 = load i32, i32* %src_x, align 4
  %37 = load i32, i32* %offsx, align 4
  %add = add nsw i32 %36, %37
  %38 = load i32, i32* %src_y, align 4
  %39 = load i32, i32* %offsy, align 4
  %add17 = add nsw i32 %38, %39
  %40 = load i32, i32* %src_width, align 4
  %41 = load i32, i32* %src_height, align 4
  %call18 = call i8* @gimp_drawable_get_sub_thumbnail_data(i32 %35, i32 %add, i32 %add17, i32 %40, i32 %41, i32* %width8, i32* %height9, i32* %bpp)
  store i8* %call18, i8** %sel, align 8
  %42 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %42, i32 0, i32 2
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %area19, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_preview_area_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call20)
  %45 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpPreviewArea*
  %46 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width22 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %46, i32 0, i32 14
  %47 = load i32, i32* %width22, align 4
  %48 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height23 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %48, i32 0, i32 15
  %49 = load i32, i32* %height23, align 4
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 0
  %51 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_type(i32 %51)
  %52 = load i8*, i8** %src, align 8
  %53 = load i32, i32* %width8, align 4
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 3
  %55 = load i32, i32* %bpp26, align 4
  %mul = mul i32 %53, %55
  %56 = load i8*, i8** %buffer.addr, align 8
  %57 = load i32, i32* %rowstride.addr, align 4
  %58 = load i8*, i8** %sel, align 8
  %59 = load i32, i32* %width8, align 4
  call void @gimp_preview_area_mask(%struct._GimpPreviewArea* %45, i32 0, i32 0, i32 %47, i32 %49, i32 %call25, i8* %52, i32 %mul, i8* %56, i32 %57, i8* %58, i32 %59)
  %60 = load i8*, i8** %sel, align 8
  call void @g_free(i8* %60)
  %61 = load i8*, i8** %src, align 8
  call void @g_free(i8* %61)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_draw_thumb(%struct._GimpPreview* %preview, %struct._GimpPreviewArea* %area, i32 %width, i32 %height) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  call void @_gimp_drawable_preview_area_draw_thumb(%struct._GimpPreviewArea* %7, %struct._GimpDrawable* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_set_cursor(%struct._GimpPreview* %preview) #3 {
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
  br label %if.end.11

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %3 = bitcast %struct._GimpPreview* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_zoom_preview_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpZoomPreview*
  %call3 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %4)
  %cmp = fcmp ogt double %call3, 1.000000e+00
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area5 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %area5, align 8
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %8 = bitcast %struct._GimpPreview* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_scrolled_preview_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpScrolledPreview*
  %cursor_move = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %9, i32 0, i32 5
  %10 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_move, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call6, %struct._GdkCursor* %10)
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area9 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %area9, align 8
  %call10 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %default_cursor = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 7
  %14 = load %struct._GdkCursor*, %struct._GdkCursor** %default_cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call10, %struct._GdkCursor* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.else, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_transform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %zoom = alloca double, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpPreview* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpZoomPreview*
  %call3 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %6)
  store double %call3, double* %zoom, align 8
  %7 = load i32, i32* %src_x.addr, align 4
  %8 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %8, i32 0, i32 2
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %7, %9
  %conv = sitofp i32 %sub to double
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 14
  %11 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %11 to double
  %mul = fmul double %conv, %conv4
  %12 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents5 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %12, i32 0, i32 2
  %width6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents5, i32 0, i32 2
  %13 = load i32, i32* %width6, align 4
  %conv7 = sitofp i32 %13 to double
  %div = fdiv double %mul, %conv7
  %14 = load double, double* %zoom, align 8
  %mul8 = fmul double %div, %14
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 8
  %16 = load i32, i32* %xoff, align 4
  %conv9 = sitofp i32 %16 to double
  %sub10 = fsub double %mul8, %conv9
  %conv11 = fptosi double %sub10 to i32
  %17 = load i32*, i32** %dest_x.addr, align 8
  store i32 %conv11, i32* %17, align 4
  %18 = load i32, i32* %src_y.addr, align 4
  %19 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents12 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %19, i32 0, i32 2
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents12, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  %sub13 = sub nsw i32 %18, %20
  %conv14 = sitofp i32 %sub13 to double
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 15
  %22 = load i32, i32* %height, align 4
  %conv15 = sitofp i32 %22 to double
  %mul16 = fmul double %conv14, %conv15
  %23 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents17 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %23, i32 0, i32 2
  %height18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents17, i32 0, i32 3
  %24 = load i32, i32* %height18, align 4
  %conv19 = sitofp i32 %24 to double
  %div20 = fdiv double %mul16, %conv19
  %25 = load double, double* %zoom, align 8
  %mul21 = fmul double %div20, %25
  %26 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %26, i32 0, i32 9
  %27 = load i32, i32* %yoff, align 4
  %conv22 = sitofp i32 %27 to double
  %sub23 = fsub double %mul21, %conv22
  %conv24 = fptosi double %sub23 to i32
  %28 = load i32*, i32** %dest_y.addr, align 8
  store i32 %conv24, i32* %28, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_untransform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %zoom = alloca double, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GimpZoomPreview*
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %3, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpPreview* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpZoomPreview*
  %call3 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %6)
  store double %call3, double* %zoom, align 8
  %7 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %7, i32 0, i32 2
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %conv = sitofp i32 %8 to double
  %9 = load i32, i32* %src_x.addr, align 4
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 8
  %11 = load i32, i32* %xoff, align 4
  %add = add nsw i32 %9, %11
  %conv4 = sitofp i32 %add to double
  %12 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents5 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %12, i32 0, i32 2
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents5, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv6 = sitofp i32 %13 to double
  %mul = fmul double %conv4, %conv6
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width7 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %14, i32 0, i32 14
  %15 = load i32, i32* %width7, align 4
  %conv8 = sitofp i32 %15 to double
  %div = fdiv double %mul, %conv8
  %16 = load double, double* %zoom, align 8
  %div9 = fdiv double %div, %16
  %add10 = fadd double %conv, %div9
  %conv11 = fptosi double %add10 to i32
  %17 = load i32*, i32** %dest_x.addr, align 8
  store i32 %conv11, i32* %17, align 4
  %18 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents12 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %18, i32 0, i32 2
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents12, i32 0, i32 1
  %19 = load i32, i32* %y, align 4
  %conv13 = sitofp i32 %19 to double
  %20 = load i32, i32* %src_y.addr, align 4
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 9
  %22 = load i32, i32* %yoff, align 4
  %add14 = add nsw i32 %20, %22
  %conv15 = sitofp i32 %add14 to double
  %23 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents16 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %23, i32 0, i32 2
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents16, i32 0, i32 3
  %24 = load i32, i32* %height, align 4
  %conv17 = sitofp i32 %24 to double
  %mul18 = fmul double %conv15, %conv17
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height19 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %25, i32 0, i32 15
  %26 = load i32, i32* %height19, align 4
  %conv20 = sitofp i32 %26 to double
  %div21 = fdiv double %mul18, %conv20
  %27 = load double, double* %zoom, align 8
  %div22 = fdiv double %div21, %27
  %add23 = fadd double %conv13, %div22
  %conv24 = fptosi double %add23 to i32
  %28 = load i32*, i32** %dest_y.addr, align 8
  store i32 %conv24, i32* %28, align 4
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_get_prgname() #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @gimp_preview_set_update(%struct._GimpPreview*, i32) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare %struct._GimpZoomModel* @gimp_zoom_model_new() #1

declare void @gimp_zoom_model_set_range(%struct._GimpZoomModel*, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_set_model(%struct._GimpZoomPreview* %preview, %struct._GimpZoomModel* %model) #3 {
entry:
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %button_bar = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %2, %struct.GimpZoomPreviewPrivate** %priv, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model2, align 8
  %cmp = icmp eq %struct._GimpZoomModel* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_zoom_preview_set_model, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %tobool = icmp ne %struct._GimpZoomModel* %5, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  br label %return

if.end.4:                                         ; preds = %do.end
  %6 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %7 = bitcast %struct._GimpZoomModel* %6 to i8*
  %call = call i8* @g_object_ref(i8* %7)
  %8 = bitcast i8* %call to %struct._GimpZoomModel*
  %9 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model5 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %9, i32 0, i32 1
  store %struct._GimpZoomModel* %8, %struct._GimpZoomModel** %model5, align 8
  %10 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model6 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model6, align 8
  %12 = bitcast %struct._GimpZoomModel* %11 to i8*
  %13 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %14 = bitcast %struct._GimpZoomPreview* %13 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomPreview*, double, double)* @gimp_zoom_preview_set_adjustments to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 2)
  %15 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpZoomPreview* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %call10 = call %struct._GtkWidget* @gimp_preview_get_controls(%struct._GimpPreview* %17)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %box, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gtk_box_get_type() #6
  store i64 %call12, i64* %__t, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  store i32 0, i32* %__r, align 4
  br label %if.end.23

if.else.15:                                       ; preds = %do.body.11
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool16 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool16, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.else.15
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %26 = load i64, i64* %__t, align 8
  %cmp18 = icmp eq i64 %25, %26
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %land.lhs.true, %if.else.15
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %28 = load i64, i64* %__t, align 8
  %call21 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #7
  store i32 %call21, i32* %__r, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.14
  %29 = load i32, i32* %__r, align 4
  store i32 %29, i32* %tmp
  %30 = load i32, i32* %tmp
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.23
  br label %if.end.27

if.else.26:                                       ; preds = %if.end.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_zoom_preview_set_model, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button_bar, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button_bar, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button_bar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model32 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %36, i32 0, i32 1
  %37 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model32, align 8
  %call33 = call %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel* %37, i32 1, i32 2)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button_bar, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call34)
  %40 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model36 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %43, i32 0, i32 1
  %44 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model36, align 8
  %call37 = call %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel* %44, i32 0, i32 2)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %button, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button_bar, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call38)
  %47 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  br label %return

return:                                           ; preds = %do.end.28, %if.else.26, %if.then.3, %if.else
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_set_adjustments(%struct._GimpZoomPreview* %preview, double %old_factor, double %new_factor) #3 {
entry:
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %old_factor.addr = alloca double, align 8
  %new_factor.addr = alloca double, align 8
  %scrolled_preview = alloca %struct._GimpScrolledPreview*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %ratio = alloca double, align 8
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  store double %old_factor, double* %old_factor.addr, align 8
  store double %new_factor, double* %new_factor.addr, align 8
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpZoomPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scrolled_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpScrolledPreview*
  store %struct._GimpScrolledPreview* %2, %struct._GimpScrolledPreview** %scrolled_preview, align 8
  %3 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %scrolled_preview, align 8
  call void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview* %3)
  %4 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %5 = bitcast %struct._GimpZoomPreview* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_preview_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPreview*
  %width4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 14
  %7 = load i32, i32* %width4, align 4
  %conv = sitofp i32 %7 to double
  store double %conv, double* %width, align 8
  %8 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %9 = bitcast %struct._GimpZoomPreview* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %height7 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %10, i32 0, i32 15
  %11 = load i32, i32* %height7, align 4
  %conv8 = sitofp i32 %11 to double
  store double %conv8, double* %height, align 8
  %12 = load double, double* %new_factor.addr, align 8
  %13 = load double, double* %old_factor.addr, align 8
  %div = fdiv double %12, %13
  store double %div, double* %ratio, align 8
  %14 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %scrolled_preview, align 8
  %hscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hscr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_range_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkRange*
  %call11 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %17)
  store %struct._GtkAdjustment* %call11, %struct._GtkAdjustment** %adj, align 8
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call12 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %19)
  %20 = load double, double* %width, align 8
  %div13 = fdiv double %20, 2.000000e+00
  %add = fadd double %call12, %div13
  %21 = load double, double* %ratio, align 8
  %mul = fmul double %add, %21
  %22 = load double, double* %width, align 8
  %div14 = fdiv double %22, 2.000000e+00
  %sub = fsub double %mul, %div14
  %23 = load double, double* %width, align 8
  %24 = load double, double* %new_factor.addr, align 8
  %mul15 = fmul double %23, %24
  %25 = load double, double* %new_factor.addr, align 8
  %26 = load double, double* %width, align 8
  %div16 = fdiv double %26, 2.000000e+00
  %27 = load double, double* %new_factor.addr, align 8
  %cmp = fcmp ogt double %div16, %27
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %28 = load double, double* %width, align 8
  %div18 = fdiv double %28, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  %29 = load double, double* %new_factor.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div18, %cond.true ], [ %29, %cond.false ]
  %30 = load double, double* %width, align 8
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %18, double %sub, double 0.000000e+00, double %mul15, double %25, double %cond, double %30)
  %31 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %scrolled_preview, align 8
  %vscr = getelementptr inbounds %struct._GimpScrolledPreview, %struct._GimpScrolledPreview* %31, i32 0, i32 2
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vscr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_range_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkRange*
  %call21 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %34)
  store %struct._GtkAdjustment* %call21, %struct._GtkAdjustment** %adj, align 8
  %35 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call22 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %36)
  %37 = load double, double* %height, align 8
  %div23 = fdiv double %37, 2.000000e+00
  %add24 = fadd double %call22, %div23
  %38 = load double, double* %ratio, align 8
  %mul25 = fmul double %add24, %38
  %39 = load double, double* %height, align 8
  %div26 = fdiv double %39, 2.000000e+00
  %sub27 = fsub double %mul25, %div26
  %40 = load double, double* %height, align 8
  %41 = load double, double* %new_factor.addr, align 8
  %mul28 = fmul double %40, %41
  %42 = load double, double* %new_factor.addr, align 8
  %43 = load double, double* %height, align 8
  %div29 = fdiv double %43, 2.000000e+00
  %44 = load double, double* %new_factor.addr, align 8
  %cmp30 = fcmp ogt double %div29, %44
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.end
  %45 = load double, double* %height, align 8
  %div33 = fdiv double %45, 2.000000e+00
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end
  %46 = load double, double* %new_factor.addr, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.32
  %cond36 = phi double [ %div33, %cond.true.32 ], [ %46, %cond.false.34 ]
  %47 = load double, double* %height, align 8
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %35, double %sub27, double 0.000000e+00, double %mul28, double %42, double %cond36, double %47)
  %48 = load %struct._GimpScrolledPreview*, %struct._GimpScrolledPreview** %scrolled_preview, align 8
  call void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview* %48)
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_preview_get_controls(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview*) #1

declare %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #2

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_preview_get_update(%struct._GimpPreview*) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_set_drawable(%struct._GimpZoomPreview* %preview, %struct._GimpDrawable* %drawable) #3 {
entry:
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %2, %struct.GimpZoomPreviewPrivate** %priv, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable2 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %cmp = icmp eq %struct._GimpDrawable* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_zoom_preview_set_drawable, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %drawable3 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %6, i32 0, i32 0
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable3, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %do.end
  %9 = load i32, i32* %x, align 4
  %10 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %10, i32 0, i32 2
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents, i32 0, i32 0
  store i32 %9, i32* %x5, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents6 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %12, i32 0, i32 2
  %y7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents6, i32 0, i32 1
  store i32 %11, i32* %y7, align 4
  br label %if.end.17

if.else.8:                                        ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_drawable_width(i32 %14)
  store i32 %call10, i32* %width, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id11, align 4
  %call12 = call i32 @gimp_drawable_height(i32 %16)
  store i32 %call12, i32* %height, align 4
  %17 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents13 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %17, i32 0, i32 2
  %x14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents13, i32 0, i32 0
  store i32 0, i32* %x14, align 4
  %18 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents15 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %18, i32 0, i32 2
  %y16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents15, i32 0, i32 1
  store i32 0, i32* %y16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.8, %if.then.4
  %19 = load i32, i32* %width, align 4
  %20 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents18 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %20, i32 0, i32 2
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents18, i32 0, i32 2
  store i32 %19, i32* %width19, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %extents20 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %22, i32 0, i32 2
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %extents20, i32 0, i32 3
  store i32 %21, i32* %height21, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %cmp22 = icmp sgt i32 %23, %24
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end.17
  %25 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %25, 512
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %26 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ 512, %cond.false ]
  store i32 %cond, i32* %max_width, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load i32, i32* %max_width, align 4
  %mul = mul nsw i32 %27, %28
  %29 = load i32, i32* %width, align 4
  %div = sdiv i32 %mul, %29
  store i32 %div, i32* %max_height, align 4
  br label %if.end.33

if.else.25:                                       ; preds = %if.end.17
  %30 = load i32, i32* %height, align 4
  %cmp26 = icmp slt i32 %30, 512
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.else.25
  %31 = load i32, i32* %height, align 4
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.else.25
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ %31, %cond.true.27 ], [ 512, %cond.false.28 ]
  store i32 %cond30, i32* %max_height, align 4
  %32 = load i32, i32* %width, align 4
  %33 = load i32, i32* %max_height, align 4
  %mul31 = mul nsw i32 %32, %33
  %34 = load i32, i32* %height, align 4
  %div32 = sdiv i32 %mul31, %34
  store i32 %div32, i32* %max_width, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.29, %cond.end
  %35 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %36 = bitcast %struct._GimpZoomPreview* %35 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_preview_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpPreview*
  %38 = load i32, i32* %max_width, align 4
  %39 = load i32, i32* %max_height, align 4
  call void @gimp_preview_set_bounds(%struct._GimpPreview* %37, i32 0, i32 0, i32 %38, i32 %39)
  %40 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %41 = bitcast %struct._GimpZoomPreview* %40 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_preview_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call36)
  %42 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpPreview*
  %frame = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %42, i32 0, i32 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load i32, i32* %width, align 4
  %conv = sitofp i32 %45 to double
  %46 = load i32, i32* %height, align 4
  %conv38 = sitofp i32 %46 to double
  %div39 = fdiv double %conv, %conv38
  call void (i8*, i8*, ...) @g_object_set(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), double %div39, i8* null)
  br label %return

return:                                           ; preds = %if.end.33, %if.else
  ret void
}

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @gimp_preview_set_bounds(%struct._GimpPreview*, i32, i32, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare hidden i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable*, i32*, i32*, i32*, i32*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare void @gimp_preview_area_mask(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare hidden void @_gimp_drawable_preview_area_draw_thumb(%struct._GimpPreviewArea*, %struct._GimpDrawable*, i32, i32) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpZoomPreview* %preview) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  %zoom = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  %0 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %2, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %3 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpZoomPreview* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPreview*
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 11
  %6 = load i32, i32* %xmax, align 4
  %7 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %8 = bitcast %struct._GimpZoomPreview* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 10
  %10 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %6, %10
  store i32 %sub, i32* %width, align 4
  %11 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %12 = bitcast %struct._GimpZoomPreview* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 13
  %14 = load i32, i32* %ymax, align 4
  %15 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %16 = bitcast %struct._GimpZoomPreview* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreview*
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 12
  %18 = load i32, i32* %ymin, align 4
  %sub9 = sub nsw i32 %14, %18
  store i32 %sub9, i32* %height, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 2
  %21 = load i32, i32* %width10, align 4
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 2
  %24 = load i32, i32* %width11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %24, %cond.false ]
  %25 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %26 = bitcast %struct._GimpZoomPreview* %25 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call12)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  %width14 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %27, i32 0, i32 14
  store i32 %cond, i32* %width14, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %29, i32 0, i32 3
  %30 = load i32, i32* %height15, align 4
  %cmp16 = icmp slt i32 %28, %30
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %31 = load i32, i32* %height, align 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %32 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %32, i32 0, i32 3
  %33 = load i32, i32* %height19, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.17
  %cond21 = phi i32 [ %31, %cond.true.17 ], [ %33, %cond.false.18 ]
  %34 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %35 = bitcast %struct._GimpZoomPreview* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_preview_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPreview*
  %height24 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %36, i32 0, i32 15
  store i32 %cond21, i32* %height24, align 4
  %37 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %37, i32 0, i32 1
  %38 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %call25 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %38)
  store double %call25, double* %zoom, align 8
  %39 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %40 = load double, double* %zoom, align 8
  %41 = load double, double* %zoom, align 8
  call void @gimp_zoom_preview_set_adjustments(%struct._GimpZoomPreview* %39, double %40, double %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_zoom_preview_scroll_event(%struct._GtkWidget* %widget, %struct._GdkEventScroll* %event, %struct._GimpZoomPreview* %preview) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventScroll*, align 8
  %preview.addr = alloca %struct._GimpZoomPreview*, align 8
  %priv = alloca %struct.GimpZoomPreviewPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventScroll* %event, %struct._GdkEventScroll** %event.addr, align 8
  store %struct._GimpZoomPreview* %preview, %struct._GimpZoomPreview** %preview.addr, align 8
  %0 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %0, i32 0, i32 6
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomPreview, %struct._GimpZoomPreview* %2, i32 0, i32 1
  %3 = load i8*, i8** %priv1, align 8
  %4 = bitcast i8* %3 to %struct.GimpZoomPreviewPrivate*
  store %struct.GimpZoomPreviewPrivate* %4, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %5 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %6 = bitcast %struct._GimpZoomPreview* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_scrolled_preview_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpScrolledPreview*
  call void @gimp_scrolled_preview_freeze(%struct._GimpScrolledPreview* %7)
  %8 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %event.addr, align 8
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %8, i32 0, i32 7
  %9 = load i32, i32* %direction, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %11, i32 0, double 0.000000e+00)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  %12 = load %struct.GimpZoomPreviewPrivate*, %struct.GimpZoomPreviewPrivate** %priv, align 8
  %model4 = getelementptr inbounds %struct.GimpZoomPreviewPrivate, %struct.GimpZoomPreviewPrivate* %12, i32 0, i32 1
  %13 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model4, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %13, i32 1, double 0.000000e+00)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
  %14 = load %struct._GimpZoomPreview*, %struct._GimpZoomPreview** %preview.addr, align 8
  %15 = bitcast %struct._GimpZoomPreview* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_scrolled_preview_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpScrolledPreview*
  call void @gimp_scrolled_preview_thaw(%struct._GimpScrolledPreview* %16)
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i32 @gimp_check_size() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_check_type() #2

declare void @gimp_scrolled_preview_set_policy(%struct._GimpScrolledPreview*, i32, i32) #1

declare void @gimp_zoom_model_zoom(%struct._GimpZoomModel*, i32, double) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
