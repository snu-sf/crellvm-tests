; ModuleID = './libgimp/gimpdrawablepreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDrawablePreviewClass = type { %struct._GimpScrolledPreviewClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.PreviewSettings = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_drawable_preview_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpDrawablePreview\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__._gimp_drawable_preview_area_draw_thumb = private unnamed_addr constant [39 x i8] c"_gimp_drawable_preview_area_draw_thumb\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PREVIEW_AREA (area)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@__func__._gimp_drawable_preview_get_bounds = private unnamed_addr constant [34 x i8] c"_gimp_drawable_preview_get_bounds\00", align 1
@__func__.gimp_drawable_preview_new = private unnamed_addr constant [26 x i8] c"gimp_drawable_preview_new\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@__func__.gimp_drawable_preview_get_drawable = private unnamed_addr constant [35 x i8] c"gimp_drawable_preview_get_drawable\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"GIMP_IS_DRAWABLE_PREVIEW (preview)\00", align 1
@__func__.gimp_drawable_preview_draw_region = private unnamed_addr constant [34 x i8] c"gimp_drawable_preview_draw_region\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"preview->drawable != NULL\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"region != NULL\00", align 1
@gimp_drawable_preview_parent_class = internal global i8* null, align 8
@GimpDrawablePreview_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"%s-drawable-preview-%d\00", align 1
@gimp_drawable_preview_counter = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"gimp-drawable-preview-data-name\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"gimpdrawablepreview.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_preview_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_preview_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_preview_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 960, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_preview_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawablePreview*)* @gimp_drawable_preview_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_preview_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_drawable_preview_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_scrolled_preview_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_preview_parent_class, align 8
  %1 = load i32, i32* @GimpDrawablePreview_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawablePreview_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawablePreviewClass*
  call void @gimp_drawable_preview_class_init(%struct._GimpDrawablePreviewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_init(%struct._GimpDrawablePreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._GimpDrawablePreview*, align 8
  store %struct._GimpDrawablePreview* %preview, %struct._GimpDrawablePreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call2 = call i32 @gimp_check_size() #6
  %call3 = call i32 @gimp_check_type() #6
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 %call2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %call3, i8* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define hidden void @_gimp_drawable_preview_area_draw_thumb(%struct._GimpPreviewArea* %area, %struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %bpp = alloca i32, align 4
  %size = alloca i32, align 4
  %nav_width = alloca i32, align 4
  %nav_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 100, i32* %size, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_drawable_preview_area_draw_thumb, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.62

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp12 = icmp ne %struct._GimpDrawable* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_drawable_preview_area_draw_thumb, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.62

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call17 = call i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable* %14, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %do.end.16
  %15 = load i32, i32* %x2, align 4
  %16 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %15, %16
  store i32 %sub, i32* %width.addr, align 4
  %17 = load i32, i32* %y2, align 4
  %18 = load i32, i32* %y1, align 4
  %sub20 = sub nsw i32 %17, %18
  store i32 %sub20, i32* %height.addr, align 4
  br label %if.end.25

if.else.21:                                       ; preds = %do.end.16
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call22 = call i32 @gimp_drawable_width(i32 %20)
  store i32 %call22, i32* %width.addr, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id23, align 4
  %call24 = call i32 @gimp_drawable_height(i32 %22)
  store i32 %call24, i32* %height.addr, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.then.19
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %height.addr, align 4
  %cmp26 = icmp sgt i32 %23, %24
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end.25
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %size, align 4
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %27 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %28 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %nav_width, align 4
  %29 = load i32, i32* %height.addr, align 4
  %30 = load i32, i32* %nav_width, align 4
  %mul = mul nsw i32 %29, %30
  %31 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %mul, %31
  store i32 %div, i32* %nav_height, align 4
  br label %if.end.37

if.else.29:                                       ; preds = %if.end.25
  %32 = load i32, i32* %height.addr, align 4
  %33 = load i32, i32* %size, align 4
  %cmp30 = icmp slt i32 %32, %33
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.else.29
  %34 = load i32, i32* %height.addr, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %if.else.29
  %35 = load i32, i32* %size, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %34, %cond.true.31 ], [ %35, %cond.false.32 ]
  store i32 %cond34, i32* %nav_height, align 4
  %36 = load i32, i32* %width.addr, align 4
  %37 = load i32, i32* %nav_height, align 4
  %mul35 = mul nsw i32 %36, %37
  %38 = load i32, i32* %height.addr, align 4
  %div36 = sdiv i32 %mul35, %38
  store i32 %div36, i32* %nav_width, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %cond.end.33, %cond.end
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call38 = call i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable* %39, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.45

if.then.40:                                       ; preds = %if.end.37
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id41 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id41, align 4
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub42 = sub nsw i32 %44, %45
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* %y1, align 4
  %sub43 = sub nsw i32 %46, %47
  %call44 = call i8* @gimp_drawable_get_sub_thumbnail_data(i32 %41, i32 %42, i32 %43, i32 %sub42, i32 %sub43, i32* %nav_width, i32* %nav_height, i32* %bpp)
  store i8* %call44, i8** %buffer, align 8
  br label %if.end.48

if.else.45:                                       ; preds = %if.end.37
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 0
  %49 = load i32, i32* %drawable_id46, align 4
  %call47 = call i8* @gimp_drawable_get_thumbnail_data(i32 %49, i32* %nav_width, i32* %nav_height, i32* %bpp)
  store i8* %call47, i8** %buffer, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.40
  %50 = load i8*, i8** %buffer, align 8
  %tobool49 = icmp ne i8* %50, null
  br i1 %tobool49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %if.end.48
  %51 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %52 = bitcast %struct._GimpPreviewArea* %51 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_widget_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call52)
  %53 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWidget*
  %54 = load i32, i32* %nav_width, align 4
  %55 = load i32, i32* %nav_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %53, i32 %54, i32 %55)
  %56 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %57 = bitcast %struct._GimpPreviewArea* %56 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_widget_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call54)
  %58 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %59 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %60 = bitcast %struct._GimpPreviewArea* %59 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call56)
  %61 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void @gtk_widget_realize(%struct._GtkWidget* %61)
  %62 = load i32, i32* %bpp, align 4
  switch i32 %62, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.58
    i32 3, label %sw.bb.59
    i32 4, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %if.then.50
  store i32 2, i32* %type, align 4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.50
  store i32 3, i32* %type, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.then.50
  store i32 0, i32* %type, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.then.50
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.50
  %63 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %63)
  br label %if.end.62

sw.epilog:                                        ; preds = %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb
  %64 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %65 = load i32, i32* %nav_width, align 4
  %66 = load i32, i32* %nav_height, align 4
  %67 = load i32, i32* %type, align 4
  %68 = load i8*, i8** %buffer, align 8
  %69 = load i32, i32* %bpp, align 4
  %70 = load i32, i32* %nav_width, align 4
  %mul61 = mul nsw i32 %69, %70
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %64, i32 0, i32 0, i32 %65, i32 %66, i32 %67, i8* %68, i32 %mul61)
  %71 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %71)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.9, %if.else.14, %sw.default, %sw.epilog, %if.end.48
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable* %drawable, i32* %xmin, i32* %ymin, i32* %xmax, i32* %ymax) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %xmin.addr = alloca i32*, align 8
  %ymin.addr = alloca i32*, align 8
  %xmax.addr = alloca i32*, align 8
  %ymax.addr = alloca i32*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %xmin, i32** %xmin.addr, align 8
  store i32* %ymin, i32** %ymin.addr, align 8
  store i32* %xmax, i32** %xmax.addr, align 8
  store i32* %ymax, i32** %ymax.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__._gimp_drawable_preview_get_bounds, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  store i32 %call, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_height(i32 %4)
  store i32 %call3, i32* %height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_mask_bounds(i32 %6, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call5, i32* %retval1, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_offsets(i32 %8, i32* %offset_x, i32* %offset_y)
  %9 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, 8
  %cmp8 = icmp sgt i32 %sub, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %10 = load i32, i32* %x1, align 4
  %sub9 = sub nsw i32 %10, 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ 0, %cond.false ]
  %11 = load i32, i32* %offset_x, align 4
  %sub10 = sub nsw i32 0, %11
  %cmp11 = icmp sgt i32 %cond, %sub10
  br i1 %cmp11, label %cond.true.12, label %cond.false.20

cond.true.12:                                     ; preds = %cond.end
  %12 = load i32, i32* %x1, align 4
  %sub13 = sub nsw i32 %12, 8
  %cmp14 = icmp sgt i32 %sub13, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.true.12
  %13 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %13, 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.true.12
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %sub16, %cond.true.15 ], [ 0, %cond.false.17 ]
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end
  %14 = load i32, i32* %offset_x, align 4
  %sub21 = sub nsw i32 0, %14
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.end.18
  %cond23 = phi i32 [ %cond19, %cond.end.18 ], [ %sub21, %cond.false.20 ]
  %15 = load i32*, i32** %xmin.addr, align 8
  store i32 %cond23, i32* %15, align 4
  %16 = load i32, i32* %y1, align 4
  %sub24 = sub nsw i32 %16, 8
  %cmp25 = icmp sgt i32 %sub24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.22
  %17 = load i32, i32* %y1, align 4
  %sub27 = sub nsw i32 %17, 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end.22
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi i32 [ %sub27, %cond.true.26 ], [ 0, %cond.false.28 ]
  %18 = load i32, i32* %offset_y, align 4
  %sub31 = sub nsw i32 0, %18
  %cmp32 = icmp sgt i32 %cond30, %sub31
  br i1 %cmp32, label %cond.true.33, label %cond.false.41

cond.true.33:                                     ; preds = %cond.end.29
  %19 = load i32, i32* %y1, align 4
  %sub34 = sub nsw i32 %19, 8
  %cmp35 = icmp sgt i32 %sub34, 0
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.true.33
  %20 = load i32, i32* %y1, align 4
  %sub37 = sub nsw i32 %20, 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.true.33
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i32 [ %sub37, %cond.true.36 ], [ 0, %cond.false.38 ]
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.end.29
  %21 = load i32, i32* %offset_y, align 4
  %sub42 = sub nsw i32 0, %21
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.end.39
  %cond44 = phi i32 [ %cond40, %cond.end.39 ], [ %sub42, %cond.false.41 ]
  %22 = load i32*, i32** %ymin.addr, align 8
  store i32 %cond44, i32* %22, align 4
  %23 = load i32, i32* %x2, align 4
  %add = add nsw i32 %23, 8
  %24 = load i32, i32* %width, align 4
  %cmp45 = icmp slt i32 %add, %24
  br i1 %cmp45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.end.43
  %25 = load i32, i32* %x2, align 4
  %add47 = add nsw i32 %25, 8
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.43
  %26 = load i32, i32* %width, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.46
  %cond50 = phi i32 [ %add47, %cond.true.46 ], [ %26, %cond.false.48 ]
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %offset_x, align 4
  %add51 = add nsw i32 %27, %28
  %cmp52 = icmp slt i32 %cond50, %add51
  br i1 %cmp52, label %cond.true.53, label %cond.false.61

cond.true.53:                                     ; preds = %cond.end.49
  %29 = load i32, i32* %x2, align 4
  %add54 = add nsw i32 %29, 8
  %30 = load i32, i32* %width, align 4
  %cmp55 = icmp slt i32 %add54, %30
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.true.53
  %31 = load i32, i32* %x2, align 4
  %add57 = add nsw i32 %31, 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.true.53
  %32 = load i32, i32* %width, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %add57, %cond.true.56 ], [ %32, %cond.false.58 ]
  br label %cond.end.63

cond.false.61:                                    ; preds = %cond.end.49
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %offset_x, align 4
  %add62 = add nsw i32 %33, %34
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.end.59
  %cond64 = phi i32 [ %cond60, %cond.end.59 ], [ %add62, %cond.false.61 ]
  %35 = load i32*, i32** %xmax.addr, align 8
  store i32 %cond64, i32* %35, align 4
  %36 = load i32, i32* %y2, align 4
  %add65 = add nsw i32 %36, 8
  %37 = load i32, i32* %height, align 4
  %cmp66 = icmp slt i32 %add65, %37
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.63
  %38 = load i32, i32* %y2, align 4
  %add68 = add nsw i32 %38, 8
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.63
  %39 = load i32, i32* %height, align 4
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.67
  %cond71 = phi i32 [ %add68, %cond.true.67 ], [ %39, %cond.false.69 ]
  %40 = load i32, i32* %height, align 4
  %41 = load i32, i32* %offset_y, align 4
  %add72 = add nsw i32 %40, %41
  %cmp73 = icmp slt i32 %cond71, %add72
  br i1 %cmp73, label %cond.true.74, label %cond.false.82

cond.true.74:                                     ; preds = %cond.end.70
  %42 = load i32, i32* %y2, align 4
  %add75 = add nsw i32 %42, 8
  %43 = load i32, i32* %height, align 4
  %cmp76 = icmp slt i32 %add75, %43
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.true.74
  %44 = load i32, i32* %y2, align 4
  %add78 = add nsw i32 %44, 8
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.true.74
  %45 = load i32, i32* %height, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %add78, %cond.true.77 ], [ %45, %cond.false.79 ]
  br label %cond.end.84

cond.false.82:                                    ; preds = %cond.end.70
  %46 = load i32, i32* %height, align 4
  %47 = load i32, i32* %offset_y, align 4
  %add83 = add nsw i32 %46, %47
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.end.80
  %cond85 = phi i32 [ %cond81, %cond.end.80 ], [ %add83, %cond.false.82 ]
  %48 = load i32*, i32** %ymax.addr, align 8
  store i32 %cond85, i32* %48, align 4
  %49 = load i32, i32* %retval1, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.84, %if.else
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i8* @gimp_drawable_get_sub_thumbnail_data(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_realize(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %drawable, i32* %toggle) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %toggle.addr = alloca i32*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %toggle, i32** %toggle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._GimpDrawable* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %preview) #3 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpDrawablePreview*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawablePreview* %preview, %struct._GimpDrawablePreview** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_preview_get_drawable, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %14, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %preview, %struct._GimpPixelRgn* %region) #3 {
entry:
  %preview.addr = alloca %struct._GimpDrawablePreview*, align 8
  %region.addr = alloca %struct._GimpPixelRgn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src = alloca %struct._GimpPixelRgn, align 8
  %iter = alloca i8*, align 8
  store %struct._GimpDrawablePreview* %preview, %struct._GimpDrawablePreview** %preview.addr, align 8
  store %struct._GimpPixelRgn* %region, %struct._GimpPixelRgn** %region.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreview* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_preview_draw_region, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.38

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp12 = icmp ne %struct._GimpDrawable* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_preview_draw_region, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.38

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %cmp18 = icmp ne %struct._GimpPixelRgn* %15, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_preview_draw_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.38

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %tobool23 = icmp ne i8* %17, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %do.end.22
  %18 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 4
  %20 = load i32, i32* %x, align 4
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %21, i32 0, i32 5
  %22 = load i32, i32* %y, align 4
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %23, i32 0, i32 6
  %24 = load i32, i32* %w, align 4
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 7
  %26 = load i32, i32* %h, align 4
  %27 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %data25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %27, i32 0, i32 0
  %28 = load i8*, i8** %data25, align 8
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 3
  %30 = load i32, i32* %rowstride, align 4
  call void @gimp_drawable_preview_draw_area(%struct._GimpDrawablePreview* %18, i32 %20, i32 %22, i32 %24, i32 %26, i8* %28, i32 %30)
  br label %if.end.38

if.else.26:                                       ; preds = %do.end.22
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %32 = bitcast %struct._GimpPixelRgn* %src to i8*
  %33 = bitcast %struct._GimpPixelRgn* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 48, i32 8, i1 false)
  %dirty = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 8
  %bf.load = load i8, i8* %dirty, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %dirty, align 8
  %call29 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src)
  store i8* %call29, i8** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.26
  %34 = load i8*, i8** %iter, align 8
  %cmp30 = icmp ne i8* %34, null
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %x31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 4
  %36 = load i32, i32* %x31, align 4
  %y32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 5
  %37 = load i32, i32* %y32, align 4
  %w33 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 6
  %38 = load i32, i32* %w33, align 4
  %h34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 7
  %39 = load i32, i32* %h34, align 4
  %data35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 0
  %40 = load i8*, i8** %data35, align 8
  %rowstride36 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src, i32 0, i32 3
  %41 = load i32, i32* %rowstride36, align 4
  call void @gimp_drawable_preview_draw_area(%struct._GimpDrawablePreview* %35, i32 %36, i32 %37, i32 %38, i32 %39, i8* %40, i32 %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i8*, i8** %iter, align 8
  %call37 = call i8* @gimp_pixel_rgns_process(i8* %42)
  store i8* %call37, i8** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %for.end, %if.then.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_draw_area(%struct._GimpDrawablePreview* %preview, i32 %x, i32 %y, i32 %width, i32 %height, i8* %buf, i32 %rowstride) #3 {
entry:
  %preview.addr = alloca %struct._GimpDrawablePreview*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %gimp_preview = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_id = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %mask_x = alloca i32, align 4
  %mask_y = alloca i32, align 4
  %mask_width = alloca i32, align 4
  %mask_height = alloca i32, align 4
  %draw_x = alloca i32, align 4
  %draw_y = alloca i32, align 4
  %draw_width = alloca i32, align 4
  %draw_height = alloca i32, align 4
  %selection = alloca %struct._GimpDrawable*, align 8
  %drawable_rgn = alloca %struct._GimpPixelRgn, align 8
  %selection_rgn = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %sel = alloca i8*, align 8
  store %struct._GimpDrawablePreview* %preview, %struct._GimpDrawablePreview** %preview.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %gimp_preview, align 8
  %3 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_item_get_image(i32 %6)
  store i32 %call3, i32* %image_id, align 4
  %7 = load i32, i32* %image_id, align 4
  %call4 = call i32 @gimp_selection_is_empty(i32 %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_area_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreviewArea*
  %12 = load i32, i32* %x.addr, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 8
  %14 = load i32, i32* %xoff, align 4
  %sub = sub nsw i32 %12, %14
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 10
  %16 = load i32, i32* %xmin, align 4
  %sub7 = sub nsw i32 %sub, %16
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %18, i32 0, i32 9
  %19 = load i32, i32* %yoff, align 4
  %sub8 = sub nsw i32 %17, %19
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 12
  %21 = load i32, i32* %ymin, align 4
  %sub9 = sub nsw i32 %sub8, %21
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_type(i32 %25)
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load i32, i32* %rowstride.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %11, i32 %sub7, i32 %sub9, i32 %22, i32 %23, i32 %call11, i8* %26, i32 %27)
  br label %if.end.52

if.else:                                          ; preds = %entry
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_offsets(i32 %29, i32* %offset_x, i32* %offset_y)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 0
  %31 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_mask_intersect(i32 %31, i32* %mask_x, i32* %mask_y, i32* %mask_width, i32* %mask_height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %32 = load i32, i32* %mask_x, align 4
  %33 = load i32, i32* %mask_y, align 4
  %34 = load i32, i32* %mask_width, align 4
  %35 = load i32, i32* %mask_height, align 4
  %36 = load i32, i32* %x.addr, align 4
  %37 = load i32, i32* %y.addr, align 4
  %38 = load i32, i32* %width.addr, align 4
  %39 = load i32, i32* %height.addr, align 4
  %call17 = call i32 @gimp_rectangle_intersect(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %draw_x, i32* %draw_y, i32* %draw_width, i32* %draw_height)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true
  %40 = load i32, i32* %image_id, align 4
  %call20 = call i32 @gimp_image_get_selection(i32 %40)
  %call21 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call20)
  store %struct._GimpDrawable* %call21, %struct._GimpDrawable** %selection, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = load i32, i32* %draw_x, align 4
  %43 = load i32, i32* %draw_y, align 4
  %44 = load i32, i32* %draw_width, align 4
  %45 = load i32, i32* %draw_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %drawable_rgn, %struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 0, i32 0)
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %selection, align 8
  %47 = load i32, i32* %draw_x, align 4
  %48 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %47, %48
  %49 = load i32, i32* %draw_y, align 4
  %50 = load i32, i32* %offset_y, align 4
  %add22 = add nsw i32 %49, %50
  %51 = load i32, i32* %draw_width, align 4
  %52 = load i32, i32* %draw_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %selection_rgn, %struct._GimpDrawable* %46, i32 %add, i32 %add22, i32 %51, i32 %52, i32 0, i32 0)
  %53 = load i32, i32* %draw_width, align 4
  %54 = load i32, i32* %draw_height, align 4
  %mul = mul nsw i32 %53, %54
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 3
  %56 = load i32, i32* %bpp, align 4
  %mul23 = mul i32 %mul, %56
  %conv = zext i32 %mul23 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call24, i8** %src, align 8
  %57 = load i32, i32* %draw_width, align 4
  %58 = load i32, i32* %draw_height, align 4
  %mul25 = mul nsw i32 %57, %58
  %conv26 = sext i32 %mul25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 1)
  store i8* %call27, i8** %sel, align 8
  %59 = load i8*, i8** %src, align 8
  %60 = load i32, i32* %draw_x, align 4
  %61 = load i32, i32* %draw_y, align 4
  %62 = load i32, i32* %draw_width, align 4
  %63 = load i32, i32* %draw_height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %drawable_rgn, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %64 = load i8*, i8** %sel, align 8
  %65 = load i32, i32* %draw_x, align 4
  %66 = load i32, i32* %offset_x, align 4
  %add28 = add nsw i32 %65, %66
  %67 = load i32, i32* %draw_y, align 4
  %68 = load i32, i32* %offset_y, align 4
  %add29 = add nsw i32 %67, %68
  %69 = load i32, i32* %draw_width, align 4
  %70 = load i32, i32* %draw_height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %selection_rgn, i8* %64, i32 %add28, i32 %add29, i32 %69, i32 %70)
  %71 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %area30 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %area30, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_preview_area_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call31)
  %74 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpPreviewArea*
  %75 = load i32, i32* %draw_x, align 4
  %76 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %xoff33 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %76, i32 0, i32 8
  %77 = load i32, i32* %xoff33, align 4
  %sub34 = sub nsw i32 %75, %77
  %78 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %xmin35 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %78, i32 0, i32 10
  %79 = load i32, i32* %xmin35, align 4
  %sub36 = sub nsw i32 %sub34, %79
  %80 = load i32, i32* %draw_y, align 4
  %81 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %yoff37 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %81, i32 0, i32 9
  %82 = load i32, i32* %yoff37, align 4
  %sub38 = sub nsw i32 %80, %82
  %83 = load %struct._GimpPreview*, %struct._GimpPreview** %gimp_preview, align 8
  %ymin39 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %83, i32 0, i32 12
  %84 = load i32, i32* %ymin39, align 4
  %sub40 = sub nsw i32 %sub38, %84
  %85 = load i32, i32* %draw_width, align 4
  %86 = load i32, i32* %draw_height, align 4
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id41 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %87, i32 0, i32 0
  %88 = load i32, i32* %drawable_id41, align 4
  %call42 = call i32 @gimp_drawable_type(i32 %88)
  %89 = load i8*, i8** %src, align 8
  %90 = load i32, i32* %draw_width, align 4
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp43 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %91, i32 0, i32 3
  %92 = load i32, i32* %bpp43, align 4
  %mul44 = mul i32 %90, %92
  %93 = load i8*, i8** %buf.addr, align 8
  %94 = load i32, i32* %draw_x, align 4
  %95 = load i32, i32* %x.addr, align 4
  %sub45 = sub nsw i32 %94, %95
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %96, i32 0, i32 3
  %97 = load i32, i32* %bpp46, align 4
  %mul47 = mul i32 %sub45, %97
  %idx.ext = zext i32 %mul47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %93, i64 %idx.ext
  %98 = load i32, i32* %draw_y, align 4
  %99 = load i32, i32* %y.addr, align 4
  %sub48 = sub nsw i32 %98, %99
  %100 = load i32, i32* %rowstride.addr, align 4
  %mul49 = mul nsw i32 %sub48, %100
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext50
  %101 = load i32, i32* %rowstride.addr, align 4
  %102 = load i8*, i8** %sel, align 8
  %103 = load i32, i32* %draw_width, align 4
  call void @gimp_preview_area_mask(%struct._GimpPreviewArea* %74, i32 %sub36, i32 %sub40, i32 %85, i32 %86, i32 %call42, i8* %89, i32 %mul44, i8* %add.ptr51, i32 %101, i8* %102, i32 %103)
  %104 = load i8*, i8** %sel, align 8
  call void @g_free(i8* %104)
  %105 = load i8*, i8** %src, align 8
  call void @g_free(i8* %105)
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %selection, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %106)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_class_init(%struct._GimpDrawablePreviewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawablePreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %preview_class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpDrawablePreviewClass* %klass, %struct._GimpDrawablePreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawablePreviewClass*, %struct._GimpDrawablePreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawablePreviewClass*, %struct._GimpDrawablePreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawablePreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDrawablePreviewClass*, %struct._GimpDrawablePreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDrawablePreviewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %8, %struct._GimpPreviewClass** %preview_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_drawable_preview_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_drawable_preview_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_drawable_preview_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_drawable_preview_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_drawable_preview_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %14 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %14, i32 0, i32 1
  store void (%struct._GimpPreview*)* @gimp_drawable_preview_draw_original, void (%struct._GimpPreview*)** %draw, align 8
  %15 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw_thumb = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %15, i32 0, i32 2
  store void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)* @gimp_drawable_preview_draw_thumb, void (%struct._GimpPreview*, %struct._GimpPreviewArea*, i32, i32)** %draw_thumb, align 8
  %16 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw_buffer = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %16, i32 0, i32 3
  store void (%struct._GimpPreview*, i8*, i32)* @gimp_drawable_preview_draw_buffer, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %data_name = alloca i8*, align 8
  %settings = alloca %struct.PreviewSettings, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_drawable_preview_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_drawable_preview_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i8* @g_get_prgname()
  %9 = load i32, i32* @gimp_drawable_preview_counter, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @gimp_drawable_preview_counter, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %call3, i32 %inc)
  store i8* %call4, i8** %data_name, align 8
  %10 = load i8*, i8** %data_name, align 8
  %11 = bitcast %struct.PreviewSettings* %settings to i8*
  %call5 = call i32 @gimp_procedural_db_get_data(i8* %10, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %update = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 2
  %15 = load i32, i32* %update, align 4
  call void @gimp_preview_set_update(%struct._GimpPreview* %14, i32 %15)
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_scrolled_preview_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpScrolledPreview*
  %x = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  call void @gimp_scrolled_preview_set_position(%struct._GimpScrolledPreview* %18, i32 %19, i32 %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %22 = load i8*, i8** %data_name, align 8
  call void @g_object_set_data_full(%struct._GObject* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* %22, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_dispose(%struct._GObject* %object) #3 {
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
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
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
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 8
  %8 = load i32, i32* %xoff, align 4
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 10
  %10 = load i32, i32* %xmin, align 4
  %add = add nsw i32 %8, %10
  %x = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 0
  store i32 %add, i32* %x, align 4
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 9
  %12 = load i32, i32* %yoff, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 12
  %14 = load i32, i32* %ymin, align 4
  %add4 = add nsw i32 %12, %14
  %y = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 1
  store i32 %add4, i32* %y, align 4
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %call5 = call i32 @gimp_preview_get_update(%struct._GimpPreview* %15)
  %update = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 2
  store i32 %call5, i32* %update, align 4
  %16 = load i8*, i8** %data_name, align 8
  %17 = bitcast %struct.PreviewSettings* %settings to i8*
  %call6 = call i32 @gimp_procedural_db_set_data(i8* %16, i8* %17, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i8*, i8** @gimp_drawable_preview_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 5
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpDrawablePreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  store %struct._GimpDrawablePreview* %2, %struct._GimpDrawablePreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview, align 8
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %5)
  %6 = bitcast %struct._GimpDrawable* %call2 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %6)
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
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpDrawablePreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  store %struct._GimpDrawablePreview* %2, %struct._GimpDrawablePreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %preview, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_pointer(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpDrawable*
  call void @gimp_drawable_preview_set_drawable(%struct._GimpDrawablePreview* %4, %struct._GimpDrawable* %6)
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
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 11
  %4 = load i32, i32* %xmax, align 4
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 10
  %6 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %4, %6
  store i32 %sub, i32* %width, align 4
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 13
  %8 = load i32, i32* %ymax, align 4
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 12
  %10 = load i32, i32* %ymin, align 4
  %sub2 = sub nsw i32 %8, %10
  store i32 %sub2, i32* %height, align 4
  %11 = load i8*, i8** @gimp_drawable_preview_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call3)
  %13 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 17
  %14 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GtkStyle*)* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i8*, i8** @gimp_drawable_preview_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call5)
  %17 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %style_set7 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 17
  %18 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set7, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %18(%struct._GtkWidget* %19, %struct._GtkStyle* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* %size, i8* null)
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %23 = bitcast %struct._GimpPreview* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %29 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %30 = load i32, i32* %height, align 4
  %31 = load i32, i32* %size, align 4
  %cmp10 = icmp slt i32 %30, %31
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %32 = load i32, i32* %height, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %33 = load i32, i32* %size, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %32, %cond.true.11 ], [ %33, %cond.false.12 ]
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %25, i32 %cond, i32 %cond14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_draw_original(%struct._GimpPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable_preview = alloca %struct._GimpDrawablePreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %buffer = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %rowstride = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  store %struct._GimpDrawablePreview* %2, %struct._GimpDrawablePreview** %drawable_preview, align 8
  %3 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %drawable_preview, align 8
  %drawable2 = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %6, i32 0, i32 14
  %7 = load i32, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp, align 4
  %mul = mul i32 %7, %9
  store i32 %mul, i32* %rowstride, align 4
  %10 = load i32, i32* %rowstride, align 4
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 15
  %12 = load i32, i32* %height, align 4
  %mul3 = mul i32 %10, %12
  %conv = zext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %buffer, align 8
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 8
  %14 = load i32, i32* %xoff, align 4
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %15, i32 0, i32 11
  %16 = load i32, i32* %xmax, align 4
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 10
  %18 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %16, %18
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width5 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %19, i32 0, i32 14
  %20 = load i32, i32* %width5, align 4
  %sub6 = sub nsw i32 %sub, %20
  %cmp = icmp sgt i32 %14, %sub6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmax8 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %21, i32 0, i32 11
  %22 = load i32, i32* %xmax8, align 4
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin9 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %23, i32 0, i32 10
  %24 = load i32, i32* %xmin9, align 4
  %sub10 = sub nsw i32 %22, %24
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width11 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %25, i32 0, i32 14
  %26 = load i32, i32* %width11, align 4
  %sub12 = sub nsw i32 %sub10, %26
  br label %cond.end.19

cond.false:                                       ; preds = %if.end
  %27 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff13 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %27, i32 0, i32 8
  %28 = load i32, i32* %xoff13, align 4
  %cmp14 = icmp slt i32 %28, 0
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %29 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff18 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %29, i32 0, i32 8
  %30 = load i32, i32* %xoff18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ 0, %cond.true.16 ], [ %30, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ %sub12, %cond.true ], [ %cond, %cond.end ]
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff21 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %31, i32 0, i32 8
  store i32 %cond20, i32* %xoff21, align 4
  %32 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %32, i32 0, i32 9
  %33 = load i32, i32* %yoff, align 4
  %34 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %34, i32 0, i32 13
  %35 = load i32, i32* %ymax, align 4
  %36 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %36, i32 0, i32 12
  %37 = load i32, i32* %ymin, align 4
  %sub22 = sub nsw i32 %35, %37
  %38 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height23 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %38, i32 0, i32 15
  %39 = load i32, i32* %height23, align 4
  %sub24 = sub nsw i32 %sub22, %39
  %cmp25 = icmp sgt i32 %33, %sub24
  br i1 %cmp25, label %cond.true.27, label %cond.false.33

cond.true.27:                                     ; preds = %cond.end.19
  %40 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymax28 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %40, i32 0, i32 13
  %41 = load i32, i32* %ymax28, align 4
  %42 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin29 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %42, i32 0, i32 12
  %43 = load i32, i32* %ymin29, align 4
  %sub30 = sub nsw i32 %41, %43
  %44 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height31 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %44, i32 0, i32 15
  %45 = load i32, i32* %height31, align 4
  %sub32 = sub nsw i32 %sub30, %45
  br label %cond.end.42

cond.false.33:                                    ; preds = %cond.end.19
  %46 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff34 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %46, i32 0, i32 9
  %47 = load i32, i32* %yoff34, align 4
  %cmp35 = icmp slt i32 %47, 0
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false.33
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.false.33
  %48 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff39 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %48, i32 0, i32 9
  %49 = load i32, i32* %yoff39, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.37
  %cond41 = phi i32 [ 0, %cond.true.37 ], [ %49, %cond.false.38 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true.27
  %cond43 = phi i32 [ %sub32, %cond.true.27 ], [ %cond41, %cond.end.40 ]
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff44 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %50, i32 0, i32 9
  store i32 %cond43, i32* %yoff44, align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %52 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff45 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %52, i32 0, i32 8
  %53 = load i32, i32* %xoff45, align 4
  %54 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin46 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %54, i32 0, i32 10
  %55 = load i32, i32* %xmin46, align 4
  %add = add nsw i32 %53, %55
  %56 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff47 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %56, i32 0, i32 9
  %57 = load i32, i32* %yoff47, align 4
  %58 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin48 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %58, i32 0, i32 12
  %59 = load i32, i32* %ymin48, align 4
  %add49 = add nsw i32 %57, %59
  %60 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width50 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %60, i32 0, i32 14
  %61 = load i32, i32* %width50, align 4
  %62 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height51 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %62, i32 0, i32 15
  %63 = load i32, i32* %height51, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %51, i32 %add, i32 %add49, i32 %61, i32 %63, i32 0, i32 0)
  %64 = load i8*, i8** %buffer, align 8
  %65 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff52 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %65, i32 0, i32 8
  %66 = load i32, i32* %xoff52, align 4
  %67 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin53 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %67, i32 0, i32 10
  %68 = load i32, i32* %xmin53, align 4
  %add54 = add nsw i32 %66, %68
  %69 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff55 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %69, i32 0, i32 9
  %70 = load i32, i32* %yoff55, align 4
  %71 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin56 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %71, i32 0, i32 12
  %72 = load i32, i32* %ymin56, align 4
  %add57 = add nsw i32 %70, %72
  %73 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width58 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %73, i32 0, i32 14
  %74 = load i32, i32* %width58, align 4
  %75 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height59 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %75, i32 0, i32 15
  %76 = load i32, i32* %height59, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPR, i8* %64, i32 %add54, i32 %add57, i32 %74, i32 %76)
  %77 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_preview_area_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call60)
  %80 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpPreviewArea*
  %81 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width62 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %81, i32 0, i32 14
  %82 = load i32, i32* %width62, align 4
  %83 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height63 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %83, i32 0, i32 15
  %84 = load i32, i32* %height63, align 4
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %85, i32 0, i32 0
  %86 = load i32, i32* %drawable_id, align 4
  %call64 = call i32 @gimp_drawable_type(i32 %86)
  %87 = load i8*, i8** %buffer, align 8
  %88 = load i32, i32* %rowstride, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %80, i32 0, i32 0, i32 %82, i32 %84, i32 %call64, i8* %87, i32 %88)
  %89 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %89)
  br label %return

return:                                           ; preds = %cond.end.42, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_draw_thumb(%struct._GimpPreview* %preview, %struct._GimpPreviewArea* %area, i32 %width, i32 %height) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %drawable_preview = alloca %struct._GimpDrawablePreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  store %struct._GimpDrawablePreview* %2, %struct._GimpDrawablePreview** %drawable_preview, align 8
  %3 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %drawable_preview, align 8
  %drawable2 = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  call void @_gimp_drawable_preview_area_draw_thumb(%struct._GimpPreviewArea* %6, %struct._GimpDrawable* %7, i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_preview_draw_buffer(%struct._GimpPreview* %preview, i8* %buffer, i32 %rowstride) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %buffer.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xmin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %3, i32 0, i32 10
  %4 = load i32, i32* %xmin, align 4
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %xoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 8
  %6 = load i32, i32* %xoff, align 4
  %add = add nsw i32 %4, %6
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %ymin = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 12
  %8 = load i32, i32* %ymin, align 4
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %yoff = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %9, i32 0, i32 9
  %10 = load i32, i32* %yoff, align 4
  %add2 = add nsw i32 %8, %10
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 14
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 15
  %14 = load i32, i32* %height, align 4
  %15 = load i8*, i8** %buffer.addr, align 8
  %16 = load i32, i32* %rowstride.addr, align 4
  call void @gimp_drawable_preview_draw_area(%struct._GimpDrawablePreview* %2, i32 %add, i32 %add2, i32 %12, i32 %14, i8* %15, i32 %16)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_get_prgname() #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @gimp_preview_set_update(%struct._GimpPreview*, i32) #1

declare void @gimp_scrolled_preview_set_position(%struct._GimpScrolledPreview*, i32, i32) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_preview_get_update(%struct._GimpPreview*) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

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
define internal void @gimp_drawable_preview_set_drawable(%struct._GimpDrawablePreview* %drawable_preview, %struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable_preview.addr = alloca %struct._GimpDrawablePreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %image = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  store %struct._GimpDrawablePreview* %drawable_preview, %struct._GimpDrawablePreview** %drawable_preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %drawable_preview.addr, align 8
  %1 = bitcast %struct._GimpDrawablePreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load %struct._GimpDrawablePreview*, %struct._GimpDrawablePreview** %drawable_preview.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %4, i32 0, i32 1
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable2, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call3 = call i32 @_gimp_drawable_preview_get_bounds(%struct._GimpDrawable* %5, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %y1, align 4
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %y2, align 4
  call void @gimp_preview_set_bounds(%struct._GimpPreview* %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_is_indexed(i32 %12)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_item_get_image(i32 %14)
  store i32 %call6, i32* %image, align 4
  %15 = load i32, i32* %image, align 4
  %call7 = call i8* @gimp_image_get_colormap(i32 %15, i32* %num_colors)
  store i8* %call7, i8** %cmap, align 8
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_area_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreviewArea*
  %20 = load i8*, i8** %cmap, align 8
  %21 = load i32, i32* %num_colors, align 4
  call void @gimp_preview_area_set_colormap(%struct._GimpPreviewArea* %19, i8* %20, i32 %21)
  %22 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare void @gimp_preview_set_bounds(%struct._GimpPreview*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare void @gimp_preview_area_set_colormap(%struct._GimpPreviewArea*, i8*, i32) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_check_size() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_check_type() #2

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare void @gimp_preview_area_mask(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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
