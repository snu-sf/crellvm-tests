; ModuleID = './libgimp/gimpaspectpreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpAspectPreviewClass = type { %struct._GimpPreviewClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpAspectPreview = type { %struct._GimpPreview, %struct._GimpDrawable* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.PreviewSettings = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_aspect_preview_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpAspectPreview\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_aspect_preview_new = private unnamed_addr constant [24 x i8] c"gimp_aspect_preview_new\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@gimp_aspect_preview_parent_class = internal global i8* null, align 8
@GimpAspectPreview_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%s-aspect-preview-%d\00", align 1
@gimp_aspect_preview_counter = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"gimp-aspect-preview-data-name\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"gimpaspectpreview.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@__func__.gimp_aspect_preview_draw = private unnamed_addr constant [25 x i8] c"gimp_aspect_preview_draw\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"GIMP_IS_ASPECT_PREVIEW (preview)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_aspect_preview_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_aspect_preview_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_aspect_preview_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_preview_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 928, void (i8*, i8*)* bitcast (void (i8*)* @gimp_aspect_preview_class_intern_init to void (i8*, i8*)*), i32 232, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpAspectPreview*)* @gimp_aspect_preview_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_aspect_preview_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_aspect_preview_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_aspect_preview_parent_class, align 8
  %1 = load i32, i32* @GimpAspectPreview_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpAspectPreview_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpAspectPreviewClass*
  call void @gimp_aspect_preview_class_init(%struct._GimpAspectPreviewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_init(%struct._GimpAspectPreview* %preview) #3 {
entry:
  %preview.addr = alloca %struct._GimpAspectPreview*, align 8
  store %struct._GimpAspectPreview* %preview, %struct._GimpAspectPreview** %preview.addr, align 8
  %0 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpAspectPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call2 = call i32 @gimp_check_size() #6
  %call3 = call i32 @gimp_check_type() #6
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 %call2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 %call3, i8* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable* %drawable, i32* %toggle) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_aspect_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_aspect_preview_get_type() #6
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

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_class_init(%struct._GimpAspectPreviewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpAspectPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %preview_class = alloca %struct._GimpPreviewClass*, align 8
  store %struct._GimpAspectPreviewClass* %klass, %struct._GimpAspectPreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpAspectPreviewClass*, %struct._GimpAspectPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpAspectPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpAspectPreviewClass*, %struct._GimpAspectPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpAspectPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpAspectPreviewClass*, %struct._GimpAspectPreviewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpAspectPreviewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpPreviewClass*
  store %struct._GimpPreviewClass* %8, %struct._GimpPreviewClass** %preview_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_aspect_preview_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_aspect_preview_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_aspect_preview_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_aspect_preview_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_aspect_preview_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %14 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %14, i32 0, i32 1
  store void (%struct._GimpPreview*)* @gimp_aspect_preview_draw, void (%struct._GimpPreview*)** %draw, align 8
  %15 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %draw_buffer = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %15, i32 0, i32 3
  store void (%struct._GimpPreview*, i8*, i32)* @gimp_aspect_preview_draw_buffer, void (%struct._GimpPreview*, i8*, i32)** %draw_buffer, align 8
  %16 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %transform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %16, i32 0, i32 6
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_aspect_preview_transform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %transform, align 8
  %17 = load %struct._GimpPreviewClass*, %struct._GimpPreviewClass** %preview_class, align 8
  %untransform = getelementptr inbounds %struct._GimpPreviewClass, %struct._GimpPreviewClass* %17, i32 0, i32 7
  store void (%struct._GimpPreview*, i32, i32, i32*, i32*)* @gimp_aspect_preview_untransform, void (%struct._GimpPreview*, i32, i32, i32*, i32*)** %untransform, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %data_name = alloca i8*, align 8
  %settings = alloca %struct.PreviewSettings, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_aspect_preview_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_aspect_preview_parent_class, align 8
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
  %9 = load i32, i32* @gimp_aspect_preview_counter, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @gimp_aspect_preview_counter, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %call3, i32 %9)
  store i8* %call4, i8** %data_name, align 8
  %10 = load i8*, i8** %data_name, align 8
  %11 = bitcast %struct.PreviewSettings* %settings to i8*
  %call5 = call i32 @gimp_procedural_db_get_data(i8* %10, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_preview_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPreview*
  %update = getelementptr inbounds %struct.PreviewSettings, %struct.PreviewSettings* %settings, i32 0, i32 0
  %15 = load i32, i32* %update, align 4
  call void @gimp_preview_set_update(%struct._GimpPreview* %14, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = load i8*, i8** %data_name, align 8
  call void @g_object_set_data_full(%struct._GObject* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %17, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_dispose(%struct._GObject* %object) #3 {
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
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
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
  %10 = load i8*, i8** @gimp_aspect_preview_parent_class, align 8
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
define internal void @gimp_aspect_preview_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpAspectPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_aspect_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAspectPreview*
  store %struct._GimpAspectPreview* %2, %struct._GimpAspectPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview, align 8
  %drawable = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preview = alloca %struct._GimpAspectPreview*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_aspect_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAspectPreview*
  store %struct._GimpAspectPreview* %2, %struct._GimpAspectPreview** %preview, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_pointer(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpDrawable*
  call void @gimp_aspect_preview_set_drawable(%struct._GimpAspectPreview* %4, %struct._GimpDrawable* %6)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_aspect_preview_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpAspectPreview*
  %drawable4 = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  store %struct._GimpDrawable* %6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i8*, i8** @gimp_aspect_preview_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call5)
  %9 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  %10 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GtkStyle*)* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** @gimp_aspect_preview_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call7)
  %13 = bitcast %struct._GTypeClass* %call8 to %struct._GtkWidgetClass*
  %style_set9 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 17
  %14 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set9, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %14(%struct._GtkWidget* %15, %struct._GtkStyle* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32* %size, i8* null)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load i32, i32* %width, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 2
  %21 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %19, %21
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 1
  %23 = load i32, i32* %width11, align 4
  %24 = load i32, i32* %size, align 4
  %cmp12 = icmp ult i32 %23, %24
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load i32, i32* %width13, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %27 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %28 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width14 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %28, i32 0, i32 14
  store i32 %cond, i32* %width14, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 2
  %30 = load i32, i32* %height15, align 4
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width16 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %31, i32 0, i32 14
  %32 = load i32, i32* %width16, align 4
  %mul = mul i32 %30, %32
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width17, align 4
  %div = udiv i32 %mul, %34
  %35 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height18 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %35, i32 0, i32 15
  store i32 %div, i32* %height18, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height19, align 4
  %38 = load i32, i32* %size, align 4
  %cmp20 = icmp ult i32 %37, %38
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.else
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 2
  %40 = load i32, i32* %height22, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.else
  %41 = load i32, i32* %size, align 4
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %40, %cond.true.21 ], [ %41, %cond.false.23 ]
  %42 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height26 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %42, i32 0, i32 15
  store i32 %cond25, i32* %height26, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width27, align 4
  %45 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height28 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %45, i32 0, i32 15
  %46 = load i32, i32* %height28, align 4
  %mul29 = mul i32 %44, %46
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 2
  %48 = load i32, i32* %height30, align 4
  %div31 = udiv i32 %mul29, %48
  %49 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width32 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %49, i32 0, i32 14
  store i32 %div31, i32* %width32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.24, %cond.end
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %50, i32 0, i32 2
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %52 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width34 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %52, i32 0, i32 14
  %53 = load i32, i32* %width34, align 4
  %54 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height35 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %54, i32 0, i32 15
  %55 = load i32, i32* %height35, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %51, i32 %53, i32 %55)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_draw(%struct._GimpPreview* %preview) #3 {
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
  %call = call i64 @gimp_aspect_preview_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_aspect_preview_draw, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_preview_area_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpPreviewArea*
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %17, i32 0, i32 14
  %18 = load i32, i32* %width, align 4
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %19, i32 0, i32 15
  %20 = load i32, i32* %height, align 4
  call void @gimp_preview_area_fill(%struct._GimpPreviewArea* %16, i32 0, i32 0, i32 %18, i32 %20, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_draw_buffer(%struct._GimpPreview* %preview, i8* %buffer, i32 %rowstride) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %buffer.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_id = alloca i32, align 4
  %sel = alloca i8*, align 8
  %src = alloca i8*, align 8
  %selection_id = alloca i32, align 4
  %width9 = alloca i32, align 4
  %height10 = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_aspect_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAspectPreview*
  %drawable2 = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_item_get_image(i32 %5)
  store i32 %call3, i32* %image_id, align 4
  %6 = load i32, i32* %image_id, align 4
  %call4 = call i32 @gimp_selection_is_empty(i32 %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_area_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreviewArea*
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 14
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 15
  %14 = load i32, i32* %height, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_type(i32 %16)
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load i32, i32* %rowstride.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %10, i32 0, i32 0, i32 %12, i32 %14, i32 %call8, i8* %17, i32 %18)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %image_id, align 4
  %call11 = call i32 @gimp_image_get_selection(i32 %19)
  store i32 %call11, i32* %selection_id, align 4
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width12 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %20, i32 0, i32 14
  %21 = load i32, i32* %width12, align 4
  store i32 %21, i32* %width9, align 4
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height13 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %22, i32 0, i32 15
  %23 = load i32, i32* %height13, align 4
  store i32 %23, i32* %height10, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id14, align 4
  %call15 = call i8* @gimp_drawable_get_thumbnail_data(i32 %25, i32* %width9, i32* %height10, i32* %bpp)
  store i8* %call15, i8** %src, align 8
  %26 = load i32, i32* %selection_id, align 4
  %call16 = call i8* @gimp_drawable_get_thumbnail_data(i32 %26, i32* %width9, i32* %height10, i32* %bpp)
  store i8* %call16, i8** %sel, align 8
  %27 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area17 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %27, i32 0, i32 2
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %area17, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_preview_area_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPreviewArea*
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width20 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %31, i32 0, i32 14
  %32 = load i32, i32* %width20, align 4
  %33 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height21 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %33, i32 0, i32 15
  %34 = load i32, i32* %height21, align 4
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id22, align 4
  %call23 = call i32 @gimp_drawable_type(i32 %36)
  %37 = load i8*, i8** %src, align 8
  %38 = load i32, i32* %width9, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 3
  %40 = load i32, i32* %bpp24, align 4
  %mul = mul i32 %38, %40
  %41 = load i8*, i8** %buffer.addr, align 8
  %42 = load i32, i32* %rowstride.addr, align 4
  %43 = load i8*, i8** %sel, align 8
  %44 = load i32, i32* %width9, align 4
  call void @gimp_preview_area_mask(%struct._GimpPreviewArea* %30, i32 0, i32 0, i32 %32, i32 %34, i32 %call23, i8* %37, i32 %mul, i8* %41, i32 %42, i8* %43, i32 %44)
  %45 = load i8*, i8** %sel, align 8
  call void @g_free(i8* %45)
  %46 = load i8*, i8** %src, align 8
  call void @g_free(i8* %46)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_transform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_aspect_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAspectPreview*
  %drawable2 = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32, i32* %src_x.addr, align 4
  %conv = sitofp i32 %4 to double
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 14
  %6 = load i32, i32* %width, align 4
  %conv3 = sitofp i32 %6 to double
  %mul = fmul double %conv, %conv3
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width4, align 4
  %conv5 = uitofp i32 %8 to double
  %div = fdiv double %mul, %conv5
  %conv6 = fptosi double %div to i32
  %9 = load i32*, i32** %dest_x.addr, align 8
  store i32 %conv6, i32* %9, align 4
  %10 = load i32, i32* %src_y.addr, align 4
  %conv7 = sitofp i32 %10 to double
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %11, i32 0, i32 15
  %12 = load i32, i32* %height, align 4
  %conv8 = sitofp i32 %12 to double
  %mul9 = fmul double %conv7, %conv8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height10, align 4
  %conv11 = uitofp i32 %14 to double
  %div12 = fdiv double %mul9, %conv11
  %conv13 = fptosi double %div12 to i32
  %15 = load i32*, i32** %dest_y.addr, align 8
  store i32 %conv13, i32* %15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_untransform(%struct._GimpPreview* %preview, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #3 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_aspect_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAspectPreview*
  %drawable2 = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32, i32* %src_x.addr, align 4
  %conv = sitofp i32 %4 to double
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width, align 4
  %conv3 = uitofp i32 %6 to double
  %mul = fmul double %conv, %conv3
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %width4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 14
  %8 = load i32, i32* %width4, align 4
  %conv5 = sitofp i32 %8 to double
  %div = fdiv double %mul, %conv5
  %conv6 = fptosi double %div to i32
  %9 = load i32*, i32** %dest_x.addr, align 8
  store i32 %conv6, i32* %9, align 4
  %10 = load i32, i32* %src_y.addr, align 4
  %conv7 = sitofp i32 %10 to double
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height, align 4
  %conv8 = uitofp i32 %12 to double
  %mul9 = fmul double %conv7, %conv8
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %height10 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %13, i32 0, i32 15
  %14 = load i32, i32* %height10, align 4
  %conv11 = sitofp i32 %14 to double
  %div12 = fdiv double %mul9, %conv11
  %conv13 = fptosi double %div12 to i32
  %15 = load i32*, i32** %dest_y.addr, align 8
  store i32 %conv13, i32* %15, align 4
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_get_prgname() #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @gimp_preview_set_update(%struct._GimpPreview*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @g_free(i8*) #1

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
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_aspect_preview_set_drawable(%struct._GimpAspectPreview* %preview, %struct._GimpDrawable* %drawable) #3 {
entry:
  %preview.addr = alloca %struct._GimpAspectPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpAspectPreview* %preview, %struct._GimpAspectPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview.addr, align 8
  %drawable1 = getelementptr inbounds %struct._GimpAspectPreview, %struct._GimpAspectPreview* %1, i32 0, i32 1
  store %struct._GimpDrawable* %0, %struct._GimpDrawable** %drawable1, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width2, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height3, align 4
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width4, align 4
  %cmp5 = icmp ult i32 %7, 512
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width6, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 512, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 2
  %11 = load i32, i32* %height7, align 4
  %12 = load i32, i32* %width, align 4
  %mul = mul i32 %11, %12
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width8, align 4
  %div = udiv i32 %mul, %14
  store i32 %div, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height9, align 4
  %cmp10 = icmp ult i32 %16, 512
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.else
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height12, align 4
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.else
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %18, %cond.true.11 ], [ 512, %cond.false.13 ]
  store i32 %cond15, i32* %height, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width16, align 4
  %21 = load i32, i32* %height, align 4
  %mul17 = mul i32 %20, %21
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 2
  %23 = load i32, i32* %height18, align 4
  %div19 = udiv i32 %mul17, %23
  store i32 %div19, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end
  %24 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview.addr, align 8
  %25 = bitcast %struct._GimpAspectPreview* %24 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPreview*
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  call void @gimp_preview_set_bounds(%struct._GimpPreview* %26, i32 0, i32 0, i32 %27, i32 %28)
  %29 = load i32, i32* %height, align 4
  %cmp21 = icmp sgt i32 %29, 0
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.end
  %30 = load %struct._GimpAspectPreview*, %struct._GimpAspectPreview** %preview.addr, align 8
  %31 = bitcast %struct._GimpAspectPreview* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_preview_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpPreview*
  %frame = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 1
  %36 = load i32, i32* %width25, align 4
  %conv = uitofp i32 %36 to double
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 2
  %38 = load i32, i32* %height26, align 4
  %conv27 = uitofp i32 %38 to double
  %div28 = fdiv double %conv, %conv27
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), double %div28, i8* null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.22, %if.end
  ret void
}

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare void @gimp_preview_set_bounds(%struct._GimpPreview*, i32, i32, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @gimp_preview_area_fill(%struct._GimpPreviewArea*, i32, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

declare void @gimp_preview_area_mask(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_check_size() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_check_type() #2

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
