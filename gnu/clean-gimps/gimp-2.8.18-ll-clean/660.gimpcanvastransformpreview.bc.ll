; ModuleID = './app/display/gimpcanvastransformpreview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasTransformPreviewClass = type { %struct._GimpCanvasItemClass }
%struct._GimpCanvasItemClass = type { %struct._GimpObjectClass, void (%struct._GimpCanvasItem*, %struct._cairo_region*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._cairo_region = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GimpDisplay = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GimpCanvasTransformPreview = type { %struct._GimpCanvasItem }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpCanvasTransformPreviewPrivate = type { %struct._GimpDrawable*, %struct._GimpMatrix3, double, double, double, double, i32, double }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._TileManager = type opaque

@gimp_canvas_transform_preview_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpCanvasTransformPreview\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_transform_preview_new = private unnamed_addr constant [34 x i8] c"gimp_canvas_transform_preview_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"transform != NULL\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"perspective\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@gimp_canvas_transform_preview_parent_class = internal global i8* null, align 8
@GimpCanvasTransformPreview_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"gimpcanvastransformpreview.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_canvas_transform_preview_draw_quad = private unnamed_addr constant [40 x i8] c"gimp_canvas_transform_preview_draw_quad\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"area != NULL\00", align 1
@__func__.gimp_canvas_transform_preview_draw_tri = private unnamed_addr constant [39 x i8] c"gimp_canvas_transform_preview_draw_tri\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"GIMP_IS_DRAWABLE (texture)\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"x != NULL && y != NULL && u != NULL && v != NULL\00", align 1
@__func__.gimp_canvas_transform_preview_trace_tri_edge = private unnamed_addr constant [45 x i8] c"gimp_canvas_transform_preview_trace_tri_edge\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@__func__.gimp_canvas_transform_preview_draw_tri_row_mask = private unnamed_addr constant [48 x i8] c"gimp_canvas_transform_preview_draw_tri_row_mask\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"GIMP_IS_CHANNEL (mask)\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"cairo_image_surface_get_format (area) == CAIRO_FORMAT_ARGB32\00", align 1
@__func__.gimp_canvas_transform_preview_draw_tri_row = private unnamed_addr constant [43 x i8] c"gimp_canvas_transform_preview_draw_tri_row\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_transform_preview_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_transform_preview_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_canvas_item_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_transform_preview_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasTransformPreview*)* @gimp_canvas_transform_preview_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_transform_preview_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_transform_preview_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasTransformPreview_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasTransformPreview_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasTransformPreviewClass*
  call void @gimp_canvas_transform_preview_class_init(%struct._GimpCanvasTransformPreviewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_init(%struct._GimpCanvasTransformPreview* %transform_preview) #3 {
entry:
  %transform_preview.addr = alloca %struct._GimpCanvasTransformPreview*, align 8
  store %struct._GimpCanvasTransformPreview* %transform_preview, %struct._GimpCanvasTransformPreview** %transform_preview.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_transform_preview_new(%struct._GimpDisplayShell* %shell, %struct._GimpDrawable* %drawable, %struct._GimpMatrix3* %transform, double %x1, double %y1, double %x2, double %y2, i32 %perspective, double %opacity) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %perspective.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 %perspective, i32* %perspective.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_canvas_transform_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_canvas_transform_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %cmp40 = icmp ne %struct._GimpMatrix3* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_canvas_transform_preview_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call i64 @gimp_canvas_transform_preview_get_type() #6
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %30 = load double, double* %x1.addr, align 8
  %31 = load double, double* %y1.addr, align 8
  %32 = load double, double* %x2.addr, align 8
  %33 = load double, double* %y2.addr, align 8
  %34 = load i32, i32* %perspective.addr, align 4
  %35 = load double, double* %opacity.addr, align 8
  %cmp46 = fcmp ogt double %35, 1.000000e+00
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.44
  br label %cond.end.50

cond.false:                                       ; preds = %do.end.44
  %36 = load double, double* %opacity.addr, align 8
  %cmp47 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false
  br label %cond.end

cond.false.49:                                    ; preds = %cond.false
  %37 = load double, double* %opacity.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.49, %cond.true.48
  %cond = phi double [ 0.000000e+00, %cond.true.48 ], [ %37, %cond.false.49 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true
  %cond51 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %call52 = call i8* (i64, i8*, ...) @g_object_new(i64 %call45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GimpDisplayShell* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._GimpDrawable* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._GimpMatrix3* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), double %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), double %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), double %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), double %cond51, i8* null)
  %38 = bitcast i8* %call52 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %38, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %cond.end.50, %if.else.42, %if.else.36, %if.else.9
  %39 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %39
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_class_init(%struct._GimpCanvasTransformPreviewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasTransformPreviewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasTransformPreviewClass* %klass, %struct._GimpCanvasTransformPreviewClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasTransformPreviewClass*, %struct._GimpCanvasTransformPreviewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasTransformPreviewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasTransformPreviewClass*, %struct._GimpCanvasTransformPreviewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasTransformPreviewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_transform_preview_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_transform_preview_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_transform_preview_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_transform_preview_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_drawable_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_matrix3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, %struct._GimpMatrix3* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call7)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call9)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 7, %struct._GParamSpec* %call10)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 8, %struct._GParamSpec* %call11)
  %18 = load %struct._GimpCanvasTransformPreviewClass*, %struct._GimpCanvasTransformPreviewClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpCanvasTransformPreviewClass* %18 to i8*
  call void @g_type_class_add_private(i8* %19, i64 128)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTransformPreviewPrivate*, align 8
  %transform = alloca %struct._GimpMatrix3*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_preview_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformPreviewPrivate*
  store %struct._GimpCanvasTransformPreviewPrivate* %2, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.15
    i32 8, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDrawable*
  %6 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %6, i32 0, i32 0
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_boxed(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %8, %struct._GimpMatrix3** %transform, align 8
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.3
  %10 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform5 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %12 = bitcast %struct._GimpMatrix3* %transform5 to i8*
  %13 = bitcast %struct._GimpMatrix3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 72, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %sw.bb.3
  %14 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform6 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %14, i32 0, i32 1
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %16, i32 0, i32 2
  store double %call8, double* %x1, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %18, i32 0, i32 3
  store double %call10, double* %y1, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %19)
  %20 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %20, i32 0, i32 4
  store double %call12, double* %x2, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %21)
  %22 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %22, i32 0, i32 5
  store double %call14, double* %y2, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %23)
  %24 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %perspective = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %24, i32 0, i32 6
  store i32 %call16, i32* %perspective, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call double @g_value_get_double(%struct._GValue* %25)
  %26 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %opacity = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %26, i32 0, i32 7
  store double %call18, double* %opacity, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %27, %struct._GObject** %_glib__object, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %28, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = load i32, i32* %property_id.addr, align 4
  store i32 %29, i32* %_glib__property_id, align 4
  %30 = load i32, i32* %_glib__property_id, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %call19 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %38 = bitcast %struct._GObject* %37 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type21, align 8
  %call22 = call i8* @g_type_name(i64 %40)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %30, i8* %32, i8* %call19, i8* %call22)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTransformPreviewPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_preview_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformPreviewPrivate*
  store %struct._GimpCanvasTransformPreviewPrivate* %2, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 7, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 8, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %9, i32 0, i32 1
  %10 = bitcast %struct._GimpMatrix3* %transform to i8*
  call void @g_value_set_boxed(%struct._GValue* %8, i8* %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %perspective = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %12, i32 0, i32 6
  %13 = load i32, i32* %perspective, align 4
  call void @g_value_set_boolean(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %15, i32 0, i32 2
  %16 = load double, double* %x1, align 8
  call void @g_value_set_double(%struct._GValue* %14, double %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %18, i32 0, i32 3
  %19 = load double, double* %y1, align 8
  call void @g_value_set_double(%struct._GValue* %17, double %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %21, i32 0, i32 4
  %22 = load double, double* %x2, align 8
  call void @g_value_set_double(%struct._GValue* %20, double %22)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %24, i32 0, i32 5
  %25 = load double, double* %y2, align 8
  call void @g_value_set_double(%struct._GValue* %23, double %25)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %27 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %opacity = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %27, i32 0, i32 7
  %28 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %26, double %28)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %32, i8* %34, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasTransformPreviewPrivate*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %mask_x1 = alloca i32, align 4
  %mask_y1 = alloca i32, align 4
  %mask_x2 = alloca i32, align 4
  %mask_y2 = alloca i32, align 4
  %mask_offx = alloca i32, align 4
  %mask_offy = alloca i32, align 4
  %columns = alloca i32, align 4
  %rows = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sub = alloca i32, align 4
  %du = alloca float, align 4
  %dv = alloca float, align 4
  %dx = alloca float, align 4
  %dy = alloca float, align 4
  %x = alloca [36 x [4 x i32]], align 16
  %y = alloca [36 x [4 x i32]], align 16
  %u = alloca [36 x [4 x float]], align 16
  %v = alloca [36 x [4 x float]], align 16
  %opacity = alloca i8, align 1
  %image = alloca %struct._GimpImage*, align 8
  %tx1 = alloca double, align 8
  %ty1 = alloca double, align 8
  %tx2 = alloca double, align 8
  %ty2 = alloca double, align 8
  %tx1106 = alloca double, align 8
  %ty1107 = alloca double, align 8
  %tx2108 = alloca double, align 8
  %ty2109 = alloca double, align 8
  %tx1171 = alloca double, align 8
  %ty1172 = alloca double, align 8
  %tx2173 = alloca double, align 8
  %ty2174 = alloca double, align 8
  %tx1271 = alloca double, align 8
  %ty1272 = alloca double, align 8
  %tx2273 = alloca double, align 8
  %ty2274 = alloca double, align 8
  %tx1308 = alloca double, align 8
  %ty1309 = alloca double, align 8
  %tx2310 = alloca double, align 8
  %ty2311 = alloca double, align 8
  %tx1442 = alloca double, align 8
  %ty1443 = alloca double, align 8
  %tx2444 = alloca double, align 8
  %ty2445 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_preview_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformPreviewPrivate*
  store %struct._GimpCanvasTransformPreviewPrivate* %2, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %3 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %opacity2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %3, i32 0, i32 7
  %4 = load double, double* %opacity2, align 8
  %mul = fmul double %4, 2.559990e+02
  %conv = fptoui double %mul to i8
  store i8 %conv, i8* %opacity, align 1
  %5 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call3 = call i32 @gimp_canvas_transform_preview_transform(%struct._GimpCanvasItem* %5, %struct._GimpDisplayShell* %6, %struct._cairo_rectangle_int* null)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.509

if.end:                                           ; preds = %entry
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask, align 8
  store i32 0, i32* %mask_offx, align 4
  store i32 0, i32* %mask_offy, align 4
  %7 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %10, i32* %mask_x1, i32* %mask_y1, i32* %mask_x2, i32* %mask_y2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable9 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable9, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %15)
  store %struct._GimpChannel* %call13, %struct._GimpChannel** %mask, align 8
  %16 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable14 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %16, i32 0, i32 0
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable14, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %mask_offx, i32* %mask_offy)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %perspective = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %20, i32 0, i32 6
  %21 = load i32, i32* %perspective, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.17
  store i32 6, i32* %columns, align 4
  store i32 6, i32* %rows, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end.17
  store i32 1, i32* %columns, align 4
  store i32 1, i32* %rows, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %22 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %22, i32 0, i32 4
  %23 = load double, double* %x2, align 8
  %24 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %24, i32 0, i32 2
  %25 = load double, double* %x1, align 8
  %sub21 = fsub double %23, %25
  %26 = load i32, i32* %columns, align 4
  %conv22 = sitofp i32 %26 to float
  %conv23 = fpext float %conv22 to double
  %div = fdiv double %sub21, %conv23
  %conv24 = fptrunc double %div to float
  store float %conv24, float* %dx, align 4
  %27 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %27, i32 0, i32 5
  %28 = load double, double* %y2, align 8
  %29 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %29, i32 0, i32 3
  %30 = load double, double* %y1, align 8
  %sub25 = fsub double %28, %30
  %31 = load i32, i32* %rows, align 4
  %conv26 = sitofp i32 %31 to float
  %conv27 = fpext float %conv26 to double
  %div28 = fdiv double %sub25, %conv27
  %conv29 = fptrunc double %div28 to float
  store float %conv29, float* %dy, align 4
  %32 = load i32, i32* %mask_x2, align 4
  %33 = load i32, i32* %mask_x1, align 4
  %sub30 = sub nsw i32 %32, %33
  %conv31 = sitofp i32 %sub30 to float
  %34 = load i32, i32* %columns, align 4
  %conv32 = sitofp i32 %34 to float
  %div33 = fdiv float %conv31, %conv32
  store float %div33, float* %du, align 4
  %35 = load i32, i32* %mask_y2, align 4
  %36 = load i32, i32* %mask_y1, align 4
  %sub34 = sub nsw i32 %35, %36
  %conv35 = sitofp i32 %sub34 to float
  %37 = load i32, i32* %rows, align 4
  %conv36 = sitofp i32 %37 to float
  %div37 = fdiv float %conv35, %conv36
  store float %div37, float* %dv, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %38 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %38, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x139 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %39, i32 0, i32 2
  %40 = load double, double* %x139, align 8
  %41 = load float, float* %dx, align 4
  %42 = load i32, i32* %j, align 4
  %and = and i32 %42, 1
  %add = add nsw i32 0, %and
  %conv40 = sitofp i32 %add to float
  %mul41 = fmul float %41, %conv40
  %conv42 = fpext float %mul41 to double
  %add43 = fadd double %40, %conv42
  store double %add43, double* %tx2, align 8
  %43 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y144 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %43, i32 0, i32 3
  %44 = load double, double* %y144, align 8
  %45 = load float, float* %dy, align 4
  %46 = load i32, i32* %j, align 4
  %shr = ashr i32 %46, 1
  %add45 = add nsw i32 0, %shr
  %conv46 = sitofp i32 %add45 to float
  %mul47 = fmul float %45, %conv46
  %conv48 = fpext float %mul47 to double
  %add49 = fadd double %44, %conv48
  store double %add49, double* %ty2, align 8
  %47 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %47, i32 0, i32 1
  %48 = load double, double* %tx2, align 8
  %49 = load double, double* %ty2, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %48, double %49, double* %tx1, double* %ty1)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %51 = load double, double* %tx1, align 8
  %52 = load double, double* %ty1, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %50, double %51, double %52, double* %tx2, double* %ty2)
  %53 = load double, double* %tx2, align 8
  %conv50 = fptosi double %53 to i32
  %54 = load i32, i32* %j, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 0
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %conv50, i32* %arrayidx51, align 4
  %55 = load double, double* %ty2, align 8
  %conv52 = fptosi double %55 to i32
  %56 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 0
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx54, i32 0, i64 %idxprom53
  store i32 %conv52, i32* %arrayidx55, align 4
  %57 = load i32, i32* %mask_x1, align 4
  %conv56 = sitofp i32 %57 to float
  %58 = load float, float* %du, align 4
  %59 = load i32, i32* %j, align 4
  %and57 = and i32 %59, 1
  %add58 = add nsw i32 0, %and57
  %conv59 = sitofp i32 %add58 to float
  %mul60 = fmul float %58, %conv59
  %add61 = fadd float %conv56, %mul60
  %60 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %60 to i64
  %arrayidx63 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx63, i32 0, i64 %idxprom62
  store float %add61, float* %arrayidx64, align 4
  %61 = load i32, i32* %mask_y1, align 4
  %conv65 = sitofp i32 %61 to float
  %62 = load float, float* %dv, align 4
  %63 = load i32, i32* %j, align 4
  %shr66 = ashr i32 %63, 1
  %add67 = add nsw i32 0, %shr66
  %conv68 = sitofp i32 %add67 to float
  %mul69 = fmul float %62, %conv68
  %add70 = fadd float %conv65, %mul69
  %64 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 0
  %arrayidx73 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx72, i32 0, i64 %idxprom71
  store float %add70, float* %arrayidx73, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %j, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.208, %for.end
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %columns, align 4
  %cmp75 = icmp slt i32 %66, %67
  br i1 %cmp75, label %for.body.77, label %for.end.210

for.body.77:                                      ; preds = %for.cond.74
  %68 = load i32, i32* %j, align 4
  %sub78 = sub nsw i32 %68, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx80, i32 0, i64 1
  %69 = load i32, i32* %arrayidx81, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx83, i32 0, i64 0
  store i32 %69, i32* %arrayidx84, align 4
  %71 = load i32, i32* %j, align 4
  %sub85 = sub nsw i32 %71, 1
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx87, i32 0, i64 1
  %72 = load i32, i32* %arrayidx88, align 4
  %73 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %73 to i64
  %arrayidx90 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx90, i32 0, i64 0
  store i32 %72, i32* %arrayidx91, align 4
  %74 = load i32, i32* %j, align 4
  %sub92 = sub nsw i32 %74, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx94, i32 0, i64 1
  %75 = load float, float* %arrayidx95, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %76 to i64
  %arrayidx97 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx97, i32 0, i64 0
  store float %75, float* %arrayidx98, align 4
  %77 = load i32, i32* %j, align 4
  %sub99 = sub nsw i32 %77, 1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx101, i32 0, i64 1
  %78 = load float, float* %arrayidx102, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %79 to i64
  %arrayidx104 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx104, i32 0, i64 0
  store float %78, float* %arrayidx105, align 4
  %80 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1110 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %80, i32 0, i32 2
  %81 = load double, double* %x1110, align 8
  %82 = load float, float* %dx, align 4
  %83 = load i32, i32* %j, align 4
  %add111 = add nsw i32 %83, 1
  %conv112 = sitofp i32 %add111 to float
  %mul113 = fmul float %82, %conv112
  %conv114 = fpext float %mul113 to double
  %add115 = fadd double %81, %conv114
  store double %add115, double* %tx2108, align 8
  %84 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1116 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %84, i32 0, i32 3
  %85 = load double, double* %y1116, align 8
  %86 = load float, float* %dy, align 4
  %mul117 = fmul float %86, 0.000000e+00
  %conv118 = fpext float %mul117 to double
  %add119 = fadd double %85, %conv118
  store double %add119, double* %ty2109, align 8
  %87 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform120 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %87, i32 0, i32 1
  %88 = load double, double* %tx2108, align 8
  %89 = load double, double* %ty2109, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform120, double %88, double %89, double* %tx1106, double* %ty1107)
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %91 = load double, double* %tx1106, align 8
  %92 = load double, double* %ty1107, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %90, double %91, double %92, double* %tx2108, double* %ty2109)
  %93 = load double, double* %tx2108, align 8
  %conv121 = fptosi double %93 to i32
  %94 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %94 to i64
  %arrayidx123 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx123, i32 0, i64 1
  store i32 %conv121, i32* %arrayidx124, align 4
  %95 = load double, double* %ty2109, align 8
  %conv125 = fptosi double %95 to i32
  %96 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %96 to i64
  %arrayidx127 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx127, i32 0, i64 1
  store i32 %conv125, i32* %arrayidx128, align 4
  %97 = load i32, i32* %mask_x1, align 4
  %conv129 = sitofp i32 %97 to float
  %98 = load float, float* %du, align 4
  %99 = load i32, i32* %j, align 4
  %add130 = add nsw i32 %99, 1
  %conv131 = sitofp i32 %add130 to float
  %mul132 = fmul float %98, %conv131
  %add133 = fadd float %conv129, %mul132
  %100 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %100 to i64
  %arrayidx135 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom134
  %arrayidx136 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx135, i32 0, i64 1
  store float %add133, float* %arrayidx136, align 4
  %101 = load i32, i32* %mask_y1, align 4
  %conv137 = sitofp i32 %101 to float
  %102 = load float, float* %dv, align 4
  %mul138 = fmul float %102, 0.000000e+00
  %add139 = fadd float %conv137, %mul138
  %103 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %103 to i64
  %arrayidx141 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx141, i32 0, i64 1
  store float %add139, float* %arrayidx142, align 4
  %104 = load i32, i32* %j, align 4
  %sub143 = sub nsw i32 %104, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx145, i32 0, i64 3
  %105 = load i32, i32* %arrayidx146, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %106 to i64
  %arrayidx148 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx148, i32 0, i64 2
  store i32 %105, i32* %arrayidx149, align 4
  %107 = load i32, i32* %j, align 4
  %sub150 = sub nsw i32 %107, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx152, i32 0, i64 3
  %108 = load i32, i32* %arrayidx153, align 4
  %109 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %109 to i64
  %arrayidx155 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx155, i32 0, i64 2
  store i32 %108, i32* %arrayidx156, align 4
  %110 = load i32, i32* %j, align 4
  %sub157 = sub nsw i32 %110, 1
  %idxprom158 = sext i32 %sub157 to i64
  %arrayidx159 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx159, i32 0, i64 3
  %111 = load float, float* %arrayidx160, align 4
  %112 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %112 to i64
  %arrayidx162 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx162, i32 0, i64 2
  store float %111, float* %arrayidx163, align 4
  %113 = load i32, i32* %j, align 4
  %sub164 = sub nsw i32 %113, 1
  %idxprom165 = sext i32 %sub164 to i64
  %arrayidx166 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx166, i32 0, i64 3
  %114 = load float, float* %arrayidx167, align 4
  %115 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %115 to i64
  %arrayidx169 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx169, i32 0, i64 2
  store float %114, float* %arrayidx170, align 4
  %116 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1175 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %116, i32 0, i32 2
  %117 = load double, double* %x1175, align 8
  %118 = load float, float* %dx, align 4
  %119 = load i32, i32* %j, align 4
  %add176 = add nsw i32 %119, 1
  %conv177 = sitofp i32 %add176 to float
  %mul178 = fmul float %118, %conv177
  %conv179 = fpext float %mul178 to double
  %add180 = fadd double %117, %conv179
  store double %add180, double* %tx2173, align 8
  %120 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1181 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %120, i32 0, i32 3
  %121 = load double, double* %y1181, align 8
  %122 = load float, float* %dy, align 4
  %mul182 = fmul float %122, 1.000000e+00
  %conv183 = fpext float %mul182 to double
  %add184 = fadd double %121, %conv183
  store double %add184, double* %ty2174, align 8
  %123 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform185 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %123, i32 0, i32 1
  %124 = load double, double* %tx2173, align 8
  %125 = load double, double* %ty2174, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform185, double %124, double %125, double* %tx1171, double* %ty1172)
  %126 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %127 = load double, double* %tx1171, align 8
  %128 = load double, double* %ty1172, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %126, double %127, double %128, double* %tx2173, double* %ty2174)
  %129 = load double, double* %tx2173, align 8
  %conv186 = fptosi double %129 to i32
  %130 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %130 to i64
  %arrayidx188 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom187
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx188, i32 0, i64 3
  store i32 %conv186, i32* %arrayidx189, align 4
  %131 = load double, double* %ty2174, align 8
  %conv190 = fptosi double %131 to i32
  %132 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %132 to i64
  %arrayidx192 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx192, i32 0, i64 3
  store i32 %conv190, i32* %arrayidx193, align 4
  %133 = load i32, i32* %mask_x1, align 4
  %conv194 = sitofp i32 %133 to float
  %134 = load float, float* %du, align 4
  %135 = load i32, i32* %j, align 4
  %add195 = add nsw i32 %135, 1
  %conv196 = sitofp i32 %add195 to float
  %mul197 = fmul float %134, %conv196
  %add198 = fadd float %conv194, %mul197
  %136 = load i32, i32* %j, align 4
  %idxprom199 = sext i32 %136 to i64
  %arrayidx200 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx200, i32 0, i64 3
  store float %add198, float* %arrayidx201, align 4
  %137 = load i32, i32* %mask_y1, align 4
  %conv202 = sitofp i32 %137 to float
  %138 = load float, float* %dv, align 4
  %mul203 = fmul float %138, 1.000000e+00
  %add204 = fadd float %conv202, %mul203
  %139 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %139 to i64
  %arrayidx206 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx206, i32 0, i64 3
  store float %add204, float* %arrayidx207, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.77
  %140 = load i32, i32* %j, align 4
  %inc209 = add nsw i32 %140, 1
  store i32 %inc209, i32* %j, align 4
  br label %for.cond.74

for.end.210:                                      ; preds = %for.cond.74
  store i32 1, i32* %j, align 4
  %141 = load i32, i32* %columns, align 4
  store i32 %141, i32* %sub, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.345, %for.end.210
  %142 = load i32, i32* %j, align 4
  %143 = load i32, i32* %rows, align 4
  %cmp212 = icmp slt i32 %142, %143
  br i1 %cmp212, label %for.body.214, label %for.end.348

for.body.214:                                     ; preds = %for.cond.211
  %144 = load i32, i32* %sub, align 4
  %145 = load i32, i32* %columns, align 4
  %sub215 = sub nsw i32 %144, %145
  %idxprom216 = sext i32 %sub215 to i64
  %arrayidx217 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx217, i32 0, i64 2
  %146 = load i32, i32* %arrayidx218, align 4
  %147 = load i32, i32* %sub, align 4
  %idxprom219 = sext i32 %147 to i64
  %arrayidx220 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom219
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx220, i32 0, i64 0
  store i32 %146, i32* %arrayidx221, align 4
  %148 = load i32, i32* %sub, align 4
  %149 = load i32, i32* %columns, align 4
  %sub222 = sub nsw i32 %148, %149
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx224, i32 0, i64 2
  %150 = load i32, i32* %arrayidx225, align 4
  %151 = load i32, i32* %sub, align 4
  %idxprom226 = sext i32 %151 to i64
  %arrayidx227 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom226
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx227, i32 0, i64 0
  store i32 %150, i32* %arrayidx228, align 4
  %152 = load i32, i32* %sub, align 4
  %153 = load i32, i32* %columns, align 4
  %sub229 = sub nsw i32 %152, %153
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom230
  %arrayidx232 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx231, i32 0, i64 2
  %154 = load float, float* %arrayidx232, align 4
  %155 = load i32, i32* %sub, align 4
  %idxprom233 = sext i32 %155 to i64
  %arrayidx234 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx234, i32 0, i64 0
  store float %154, float* %arrayidx235, align 4
  %156 = load i32, i32* %sub, align 4
  %157 = load i32, i32* %columns, align 4
  %sub236 = sub nsw i32 %156, %157
  %idxprom237 = sext i32 %sub236 to i64
  %arrayidx238 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom237
  %arrayidx239 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx238, i32 0, i64 2
  %158 = load float, float* %arrayidx239, align 4
  %159 = load i32, i32* %sub, align 4
  %idxprom240 = sext i32 %159 to i64
  %arrayidx241 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx241, i32 0, i64 0
  store float %158, float* %arrayidx242, align 4
  %160 = load i32, i32* %sub, align 4
  %161 = load i32, i32* %columns, align 4
  %sub243 = sub nsw i32 %160, %161
  %idxprom244 = sext i32 %sub243 to i64
  %arrayidx245 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx245, i32 0, i64 3
  %162 = load i32, i32* %arrayidx246, align 4
  %163 = load i32, i32* %sub, align 4
  %idxprom247 = sext i32 %163 to i64
  %arrayidx248 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom247
  %arrayidx249 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx248, i32 0, i64 1
  store i32 %162, i32* %arrayidx249, align 4
  %164 = load i32, i32* %sub, align 4
  %165 = load i32, i32* %columns, align 4
  %sub250 = sub nsw i32 %164, %165
  %idxprom251 = sext i32 %sub250 to i64
  %arrayidx252 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx252, i32 0, i64 3
  %166 = load i32, i32* %arrayidx253, align 4
  %167 = load i32, i32* %sub, align 4
  %idxprom254 = sext i32 %167 to i64
  %arrayidx255 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx255, i32 0, i64 1
  store i32 %166, i32* %arrayidx256, align 4
  %168 = load i32, i32* %sub, align 4
  %169 = load i32, i32* %columns, align 4
  %sub257 = sub nsw i32 %168, %169
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom258
  %arrayidx260 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx259, i32 0, i64 3
  %170 = load float, float* %arrayidx260, align 4
  %171 = load i32, i32* %sub, align 4
  %idxprom261 = sext i32 %171 to i64
  %arrayidx262 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx262, i32 0, i64 1
  store float %170, float* %arrayidx263, align 4
  %172 = load i32, i32* %sub, align 4
  %173 = load i32, i32* %columns, align 4
  %sub264 = sub nsw i32 %172, %173
  %idxprom265 = sext i32 %sub264 to i64
  %arrayidx266 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom265
  %arrayidx267 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx266, i32 0, i64 3
  %174 = load float, float* %arrayidx267, align 4
  %175 = load i32, i32* %sub, align 4
  %idxprom268 = sext i32 %175 to i64
  %arrayidx269 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx269, i32 0, i64 1
  store float %174, float* %arrayidx270, align 4
  %176 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1275 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %176, i32 0, i32 2
  %177 = load double, double* %x1275, align 8
  %178 = load float, float* %dx, align 4
  %mul276 = fmul float %178, 0.000000e+00
  %conv277 = fpext float %mul276 to double
  %add278 = fadd double %177, %conv277
  store double %add278, double* %tx2273, align 8
  %179 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1279 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %179, i32 0, i32 3
  %180 = load double, double* %y1279, align 8
  %181 = load float, float* %dy, align 4
  %182 = load i32, i32* %j, align 4
  %add280 = add nsw i32 %182, 1
  %conv281 = sitofp i32 %add280 to float
  %mul282 = fmul float %181, %conv281
  %conv283 = fpext float %mul282 to double
  %add284 = fadd double %180, %conv283
  store double %add284, double* %ty2274, align 8
  %183 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform285 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %183, i32 0, i32 1
  %184 = load double, double* %tx2273, align 8
  %185 = load double, double* %ty2274, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform285, double %184, double %185, double* %tx1271, double* %ty1272)
  %186 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %187 = load double, double* %tx1271, align 8
  %188 = load double, double* %ty1272, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %186, double %187, double %188, double* %tx2273, double* %ty2274)
  %189 = load double, double* %tx2273, align 8
  %conv286 = fptosi double %189 to i32
  %190 = load i32, i32* %sub, align 4
  %idxprom287 = sext i32 %190 to i64
  %arrayidx288 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom287
  %arrayidx289 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx288, i32 0, i64 2
  store i32 %conv286, i32* %arrayidx289, align 4
  %191 = load double, double* %ty2274, align 8
  %conv290 = fptosi double %191 to i32
  %192 = load i32, i32* %sub, align 4
  %idxprom291 = sext i32 %192 to i64
  %arrayidx292 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom291
  %arrayidx293 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx292, i32 0, i64 2
  store i32 %conv290, i32* %arrayidx293, align 4
  %193 = load i32, i32* %mask_x1, align 4
  %conv294 = sitofp i32 %193 to float
  %194 = load float, float* %du, align 4
  %mul295 = fmul float %194, 0.000000e+00
  %add296 = fadd float %conv294, %mul295
  %195 = load i32, i32* %sub, align 4
  %idxprom297 = sext i32 %195 to i64
  %arrayidx298 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom297
  %arrayidx299 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx298, i32 0, i64 2
  store float %add296, float* %arrayidx299, align 4
  %196 = load i32, i32* %mask_y1, align 4
  %conv300 = sitofp i32 %196 to float
  %197 = load float, float* %dv, align 4
  %198 = load i32, i32* %j, align 4
  %add301 = add nsw i32 %198, 1
  %conv302 = sitofp i32 %add301 to float
  %mul303 = fmul float %197, %conv302
  %add304 = fadd float %conv300, %mul303
  %199 = load i32, i32* %sub, align 4
  %idxprom305 = sext i32 %199 to i64
  %arrayidx306 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom305
  %arrayidx307 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx306, i32 0, i64 2
  store float %add304, float* %arrayidx307, align 4
  %200 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1312 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %200, i32 0, i32 2
  %201 = load double, double* %x1312, align 8
  %202 = load float, float* %dx, align 4
  %mul313 = fmul float %202, 1.000000e+00
  %conv314 = fpext float %mul313 to double
  %add315 = fadd double %201, %conv314
  store double %add315, double* %tx2310, align 8
  %203 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1316 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %203, i32 0, i32 3
  %204 = load double, double* %y1316, align 8
  %205 = load float, float* %dy, align 4
  %206 = load i32, i32* %j, align 4
  %add317 = add nsw i32 %206, 1
  %conv318 = sitofp i32 %add317 to float
  %mul319 = fmul float %205, %conv318
  %conv320 = fpext float %mul319 to double
  %add321 = fadd double %204, %conv320
  store double %add321, double* %ty2311, align 8
  %207 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform322 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %207, i32 0, i32 1
  %208 = load double, double* %tx2310, align 8
  %209 = load double, double* %ty2311, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform322, double %208, double %209, double* %tx1308, double* %ty1309)
  %210 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %211 = load double, double* %tx1308, align 8
  %212 = load double, double* %ty1309, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %210, double %211, double %212, double* %tx2310, double* %ty2311)
  %213 = load double, double* %tx2310, align 8
  %conv323 = fptosi double %213 to i32
  %214 = load i32, i32* %sub, align 4
  %idxprom324 = sext i32 %214 to i64
  %arrayidx325 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom324
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx325, i32 0, i64 3
  store i32 %conv323, i32* %arrayidx326, align 4
  %215 = load double, double* %ty2311, align 8
  %conv327 = fptosi double %215 to i32
  %216 = load i32, i32* %sub, align 4
  %idxprom328 = sext i32 %216 to i64
  %arrayidx329 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom328
  %arrayidx330 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx329, i32 0, i64 3
  store i32 %conv327, i32* %arrayidx330, align 4
  %217 = load i32, i32* %mask_x1, align 4
  %conv331 = sitofp i32 %217 to float
  %218 = load float, float* %du, align 4
  %mul332 = fmul float %218, 1.000000e+00
  %add333 = fadd float %conv331, %mul332
  %219 = load i32, i32* %sub, align 4
  %idxprom334 = sext i32 %219 to i64
  %arrayidx335 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom334
  %arrayidx336 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx335, i32 0, i64 3
  store float %add333, float* %arrayidx336, align 4
  %220 = load i32, i32* %mask_y1, align 4
  %conv337 = sitofp i32 %220 to float
  %221 = load float, float* %dv, align 4
  %222 = load i32, i32* %j, align 4
  %add338 = add nsw i32 %222, 1
  %conv339 = sitofp i32 %add338 to float
  %mul340 = fmul float %221, %conv339
  %add341 = fadd float %conv337, %mul340
  %223 = load i32, i32* %sub, align 4
  %idxprom342 = sext i32 %223 to i64
  %arrayidx343 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom342
  %arrayidx344 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx343, i32 0, i64 3
  store float %add341, float* %arrayidx344, align 4
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.body.214
  %224 = load i32, i32* %j, align 4
  %inc346 = add nsw i32 %224, 1
  store i32 %inc346, i32* %j, align 4
  %225 = load i32, i32* %columns, align 4
  %226 = load i32, i32* %sub, align 4
  %add347 = add nsw i32 %226, %225
  store i32 %add347, i32* %sub, align 4
  br label %for.cond.211

for.end.348:                                      ; preds = %for.cond.211
  store i32 1, i32* %j, align 4
  %227 = load i32, i32* %columns, align 4
  store i32 %227, i32* %sub, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.487, %for.end.348
  %228 = load i32, i32* %j, align 4
  %229 = load i32, i32* %rows, align 4
  %cmp350 = icmp slt i32 %228, %229
  br i1 %cmp350, label %for.body.352, label %for.end.489

for.body.352:                                     ; preds = %for.cond.349
  %230 = load i32, i32* %sub, align 4
  %inc353 = add nsw i32 %230, 1
  store i32 %inc353, i32* %sub, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.483, %for.body.352
  %231 = load i32, i32* %k, align 4
  %232 = load i32, i32* %columns, align 4
  %cmp355 = icmp slt i32 %231, %232
  br i1 %cmp355, label %for.body.357, label %for.end.486

for.body.357:                                     ; preds = %for.cond.354
  %233 = load i32, i32* %sub, align 4
  %sub358 = sub nsw i32 %233, 1
  %idxprom359 = sext i32 %sub358 to i64
  %arrayidx360 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom359
  %arrayidx361 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx360, i32 0, i64 1
  %234 = load i32, i32* %arrayidx361, align 4
  %235 = load i32, i32* %sub, align 4
  %idxprom362 = sext i32 %235 to i64
  %arrayidx363 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom362
  %arrayidx364 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx363, i32 0, i64 0
  store i32 %234, i32* %arrayidx364, align 4
  %236 = load i32, i32* %sub, align 4
  %sub365 = sub nsw i32 %236, 1
  %idxprom366 = sext i32 %sub365 to i64
  %arrayidx367 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom366
  %arrayidx368 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx367, i32 0, i64 1
  %237 = load i32, i32* %arrayidx368, align 4
  %238 = load i32, i32* %sub, align 4
  %idxprom369 = sext i32 %238 to i64
  %arrayidx370 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom369
  %arrayidx371 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx370, i32 0, i64 0
  store i32 %237, i32* %arrayidx371, align 4
  %239 = load i32, i32* %sub, align 4
  %sub372 = sub nsw i32 %239, 1
  %idxprom373 = sext i32 %sub372 to i64
  %arrayidx374 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom373
  %arrayidx375 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx374, i32 0, i64 1
  %240 = load float, float* %arrayidx375, align 4
  %241 = load i32, i32* %sub, align 4
  %idxprom376 = sext i32 %241 to i64
  %arrayidx377 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom376
  %arrayidx378 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx377, i32 0, i64 0
  store float %240, float* %arrayidx378, align 4
  %242 = load i32, i32* %sub, align 4
  %sub379 = sub nsw i32 %242, 1
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom380
  %arrayidx382 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx381, i32 0, i64 1
  %243 = load float, float* %arrayidx382, align 4
  %244 = load i32, i32* %sub, align 4
  %idxprom383 = sext i32 %244 to i64
  %arrayidx384 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom383
  %arrayidx385 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx384, i32 0, i64 0
  store float %243, float* %arrayidx385, align 4
  %245 = load i32, i32* %sub, align 4
  %246 = load i32, i32* %columns, align 4
  %sub386 = sub nsw i32 %245, %246
  %idxprom387 = sext i32 %sub386 to i64
  %arrayidx388 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom387
  %arrayidx389 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx388, i32 0, i64 3
  %247 = load i32, i32* %arrayidx389, align 4
  %248 = load i32, i32* %sub, align 4
  %idxprom390 = sext i32 %248 to i64
  %arrayidx391 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom390
  %arrayidx392 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx391, i32 0, i64 1
  store i32 %247, i32* %arrayidx392, align 4
  %249 = load i32, i32* %sub, align 4
  %250 = load i32, i32* %columns, align 4
  %sub393 = sub nsw i32 %249, %250
  %idxprom394 = sext i32 %sub393 to i64
  %arrayidx395 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom394
  %arrayidx396 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx395, i32 0, i64 3
  %251 = load i32, i32* %arrayidx396, align 4
  %252 = load i32, i32* %sub, align 4
  %idxprom397 = sext i32 %252 to i64
  %arrayidx398 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom397
  %arrayidx399 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx398, i32 0, i64 1
  store i32 %251, i32* %arrayidx399, align 4
  %253 = load i32, i32* %sub, align 4
  %254 = load i32, i32* %columns, align 4
  %sub400 = sub nsw i32 %253, %254
  %idxprom401 = sext i32 %sub400 to i64
  %arrayidx402 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom401
  %arrayidx403 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx402, i32 0, i64 3
  %255 = load float, float* %arrayidx403, align 4
  %256 = load i32, i32* %sub, align 4
  %idxprom404 = sext i32 %256 to i64
  %arrayidx405 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom404
  %arrayidx406 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx405, i32 0, i64 1
  store float %255, float* %arrayidx406, align 4
  %257 = load i32, i32* %sub, align 4
  %258 = load i32, i32* %columns, align 4
  %sub407 = sub nsw i32 %257, %258
  %idxprom408 = sext i32 %sub407 to i64
  %arrayidx409 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom408
  %arrayidx410 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx409, i32 0, i64 3
  %259 = load float, float* %arrayidx410, align 4
  %260 = load i32, i32* %sub, align 4
  %idxprom411 = sext i32 %260 to i64
  %arrayidx412 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx412, i32 0, i64 1
  store float %259, float* %arrayidx413, align 4
  %261 = load i32, i32* %sub, align 4
  %sub414 = sub nsw i32 %261, 1
  %idxprom415 = sext i32 %sub414 to i64
  %arrayidx416 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom415
  %arrayidx417 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx416, i32 0, i64 3
  %262 = load i32, i32* %arrayidx417, align 4
  %263 = load i32, i32* %sub, align 4
  %idxprom418 = sext i32 %263 to i64
  %arrayidx419 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom418
  %arrayidx420 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx419, i32 0, i64 2
  store i32 %262, i32* %arrayidx420, align 4
  %264 = load i32, i32* %sub, align 4
  %sub421 = sub nsw i32 %264, 1
  %idxprom422 = sext i32 %sub421 to i64
  %arrayidx423 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom422
  %arrayidx424 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx423, i32 0, i64 3
  %265 = load i32, i32* %arrayidx424, align 4
  %266 = load i32, i32* %sub, align 4
  %idxprom425 = sext i32 %266 to i64
  %arrayidx426 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom425
  %arrayidx427 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx426, i32 0, i64 2
  store i32 %265, i32* %arrayidx427, align 4
  %267 = load i32, i32* %sub, align 4
  %sub428 = sub nsw i32 %267, 1
  %idxprom429 = sext i32 %sub428 to i64
  %arrayidx430 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom429
  %arrayidx431 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx430, i32 0, i64 3
  %268 = load float, float* %arrayidx431, align 4
  %269 = load i32, i32* %sub, align 4
  %idxprom432 = sext i32 %269 to i64
  %arrayidx433 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom432
  %arrayidx434 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx433, i32 0, i64 2
  store float %268, float* %arrayidx434, align 4
  %270 = load i32, i32* %sub, align 4
  %sub435 = sub nsw i32 %270, 1
  %idxprom436 = sext i32 %sub435 to i64
  %arrayidx437 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom436
  %arrayidx438 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx437, i32 0, i64 3
  %271 = load float, float* %arrayidx438, align 4
  %272 = load i32, i32* %sub, align 4
  %idxprom439 = sext i32 %272 to i64
  %arrayidx440 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom439
  %arrayidx441 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx440, i32 0, i64 2
  store float %271, float* %arrayidx441, align 4
  %273 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1446 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %273, i32 0, i32 2
  %274 = load double, double* %x1446, align 8
  %275 = load float, float* %dx, align 4
  %276 = load i32, i32* %k, align 4
  %add447 = add nsw i32 %276, 1
  %conv448 = sitofp i32 %add447 to float
  %mul449 = fmul float %275, %conv448
  %conv450 = fpext float %mul449 to double
  %add451 = fadd double %274, %conv450
  store double %add451, double* %tx2444, align 8
  %277 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1452 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %277, i32 0, i32 3
  %278 = load double, double* %y1452, align 8
  %279 = load float, float* %dy, align 4
  %280 = load i32, i32* %j, align 4
  %add453 = add nsw i32 %280, 1
  %conv454 = sitofp i32 %add453 to float
  %mul455 = fmul float %279, %conv454
  %conv456 = fpext float %mul455 to double
  %add457 = fadd double %278, %conv456
  store double %add457, double* %ty2445, align 8
  %281 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform458 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %281, i32 0, i32 1
  %282 = load double, double* %tx2444, align 8
  %283 = load double, double* %ty2445, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform458, double %282, double %283, double* %tx1442, double* %ty1443)
  %284 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %285 = load double, double* %tx1442, align 8
  %286 = load double, double* %ty1443, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %284, double %285, double %286, double* %tx2444, double* %ty2445)
  %287 = load double, double* %tx2444, align 8
  %conv459 = fptosi double %287 to i32
  %288 = load i32, i32* %sub, align 4
  %idxprom460 = sext i32 %288 to i64
  %arrayidx461 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom460
  %arrayidx462 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx461, i32 0, i64 3
  store i32 %conv459, i32* %arrayidx462, align 4
  %289 = load double, double* %ty2445, align 8
  %conv463 = fptosi double %289 to i32
  %290 = load i32, i32* %sub, align 4
  %idxprom464 = sext i32 %290 to i64
  %arrayidx465 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom464
  %arrayidx466 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx465, i32 0, i64 3
  store i32 %conv463, i32* %arrayidx466, align 4
  %291 = load i32, i32* %mask_x1, align 4
  %conv467 = sitofp i32 %291 to float
  %292 = load float, float* %du, align 4
  %293 = load i32, i32* %k, align 4
  %add468 = add nsw i32 %293, 1
  %conv469 = sitofp i32 %add468 to float
  %mul470 = fmul float %292, %conv469
  %add471 = fadd float %conv467, %mul470
  %294 = load i32, i32* %sub, align 4
  %idxprom472 = sext i32 %294 to i64
  %arrayidx473 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom472
  %arrayidx474 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx473, i32 0, i64 3
  store float %add471, float* %arrayidx474, align 4
  %295 = load i32, i32* %mask_y1, align 4
  %conv475 = sitofp i32 %295 to float
  %296 = load float, float* %dv, align 4
  %297 = load i32, i32* %j, align 4
  %add476 = add nsw i32 %297, 1
  %conv477 = sitofp i32 %add476 to float
  %mul478 = fmul float %296, %conv477
  %add479 = fadd float %conv475, %mul478
  %298 = load i32, i32* %sub, align 4
  %idxprom480 = sext i32 %298 to i64
  %arrayidx481 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom480
  %arrayidx482 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx481, i32 0, i64 3
  store float %add479, float* %arrayidx482, align 4
  br label %for.inc.483

for.inc.483:                                      ; preds = %for.body.357
  %299 = load i32, i32* %k, align 4
  %inc484 = add nsw i32 %299, 1
  store i32 %inc484, i32* %k, align 4
  %300 = load i32, i32* %sub, align 4
  %inc485 = add nsw i32 %300, 1
  store i32 %inc485, i32* %sub, align 4
  br label %for.cond.354

for.end.486:                                      ; preds = %for.cond.354
  br label %for.inc.487

for.inc.487:                                      ; preds = %for.end.486
  %301 = load i32, i32* %j, align 4
  %inc488 = add nsw i32 %301, 1
  store i32 %inc488, i32* %j, align 4
  br label %for.cond.349

for.end.489:                                      ; preds = %for.cond.349
  %302 = load i32, i32* %columns, align 4
  %303 = load i32, i32* %rows, align 4
  %mul490 = mul nsw i32 %302, %303
  store i32 %mul490, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.507, %for.end.489
  %304 = load i32, i32* %j, align 4
  %305 = load i32, i32* %k, align 4
  %cmp492 = icmp slt i32 %304, %305
  br i1 %cmp492, label %for.body.494, label %for.end.509

for.body.494:                                     ; preds = %for.cond.491
  %306 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %drawable495 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %306, i32 0, i32 0
  %307 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable495, align 8
  %308 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %309 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %310 = load i32, i32* %mask_offx, align 4
  %311 = load i32, i32* %mask_offy, align 4
  %312 = load i32, i32* %j, align 4
  %idxprom496 = sext i32 %312 to i64
  %arrayidx497 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %x, i32 0, i64 %idxprom496
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx497, i32 0, i32 0
  %313 = load i32, i32* %j, align 4
  %idxprom498 = sext i32 %313 to i64
  %arrayidx499 = getelementptr inbounds [36 x [4 x i32]], [36 x [4 x i32]]* %y, i32 0, i64 %idxprom498
  %arraydecay500 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx499, i32 0, i32 0
  %314 = load i32, i32* %j, align 4
  %idxprom501 = sext i32 %314 to i64
  %arrayidx502 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %u, i32 0, i64 %idxprom501
  %arraydecay503 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx502, i32 0, i32 0
  %315 = load i32, i32* %j, align 4
  %idxprom504 = sext i32 %315 to i64
  %arrayidx505 = getelementptr inbounds [36 x [4 x float]], [36 x [4 x float]]* %v, i32 0, i64 %idxprom504
  %arraydecay506 = getelementptr inbounds [4 x float], [4 x float]* %arrayidx505, i32 0, i32 0
  %316 = load i8, i8* %opacity, align 1
  call void @gimp_canvas_transform_preview_draw_quad(%struct._GimpDrawable* %307, %struct._cairo* %308, %struct._GimpChannel* %309, i32 %310, i32 %311, i32* %arraydecay, i32* %arraydecay500, float* %arraydecay503, float* %arraydecay506, i8 zeroext %316)
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.body.494
  %317 = load i32, i32* %j, align 4
  %inc508 = add nsw i32 %317, 1
  store i32 %inc508, i32* %j, align 4
  br label %for.cond.491

for.end.509:                                      ; preds = %if.then, %for.cond.491
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_transform_preview_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call i32 @gimp_canvas_transform_preview_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, %struct._cairo_rectangle_int* %rectangle)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call1, %struct._cairo_region** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %2
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_matrix3(i8*, i8*, i8*, %struct._GimpMatrix3*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_transform_preview_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo_rectangle_int* %extents) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %extents.addr = alloca %struct._cairo_rectangle_int*, align 8
  %private = alloca %struct._GimpCanvasTransformPreviewPrivate*, align 8
  %tx1 = alloca double, align 8
  %ty1 = alloca double, align 8
  %tx2 = alloca double, align 8
  %ty2 = alloca double, align 8
  %tx3 = alloca double, align 8
  %ty3 = alloca double, align 8
  %tx4 = alloca double, align 8
  %ty4 = alloca double, align 8
  %dx1 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dy2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dy3 = alloca double, align 8
  %dx4 = alloca double, align 8
  %dy4 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo_rectangle_int* %extents, %struct._cairo_rectangle_int** %extents.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_preview_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformPreviewPrivate*
  store %struct._GimpCanvasTransformPreviewPrivate* %2, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %3 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %4, i32 0, i32 2
  %5 = load double, double* %x1, align 8
  %6 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %6, i32 0, i32 3
  %7 = load double, double* %y1, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %5, double %7, double* %tx1, double* %ty1)
  %8 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %8, i32 0, i32 1
  %9 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %9, i32 0, i32 4
  %10 = load double, double* %x2, align 8
  %11 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y13 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %11, i32 0, i32 3
  %12 = load double, double* %y13, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform2, double %10, double %12, double* %tx2, double* %ty2)
  %13 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform4 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x15 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %14, i32 0, i32 2
  %15 = load double, double* %x15, align 8
  %16 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %16, i32 0, i32 5
  %17 = load double, double* %y2, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform4, double %15, double %17, double* %tx3, double* %ty3)
  %18 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %transform6 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %18, i32 0, i32 1
  %19 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %x27 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %19, i32 0, i32 4
  %20 = load double, double* %x27, align 8
  %21 = load %struct._GimpCanvasTransformPreviewPrivate*, %struct._GimpCanvasTransformPreviewPrivate** %private, align 8
  %y28 = getelementptr inbounds %struct._GimpCanvasTransformPreviewPrivate, %struct._GimpCanvasTransformPreviewPrivate* %21, i32 0, i32 5
  %22 = load double, double* %y28, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform6, double %20, double %22, double* %tx4, double* %ty4)
  %23 = load double, double* %tx1, align 8
  %24 = load double, double* %ty1, align 8
  %25 = load double, double* %tx2, align 8
  %26 = load double, double* %ty2, align 8
  %27 = load double, double* %tx3, align 8
  %28 = load double, double* %ty3, align 8
  %29 = load double, double* %tx4, align 8
  %30 = load double, double* %ty4, align 8
  %call9 = call i32 @gimp_transform_polygon_is_convex(double %23, double %24, double %25, double %26, double %27, double %28, double %29, double %30)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %31 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %tobool10 = icmp ne %struct._cairo_rectangle_int* %31, null
  br i1 %tobool10, label %if.then.11, label %if.end.134

if.then.11:                                       ; preds = %if.end
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %33 = load double, double* %tx1, align 8
  %34 = load double, double* %ty1, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %32, double %33, double %34, double* %dx1, double* %dy1)
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = load double, double* %tx2, align 8
  %37 = load double, double* %ty2, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %35, double %36, double %37, double* %dx2, double* %dy2)
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %39 = load double, double* %tx3, align 8
  %40 = load double, double* %ty3, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %38, double %39, double %40, double* %dx3, double* %dy3)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load double, double* %tx4, align 8
  %43 = load double, double* %ty4, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %41, double %42, double %43, double* %dx4, double* %dy4)
  %44 = load double, double* %dx1, align 8
  %45 = load double, double* %dx2, align 8
  %cmp = fcmp olt double %44, %45
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %46 = load double, double* %dx1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %47 = load double, double* %dx2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %46, %cond.true ], [ %47, %cond.false ]
  %48 = load double, double* %dx3, align 8
  %49 = load double, double* %dx4, align 8
  %cmp12 = fcmp olt double %48, %49
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %50 = load double, double* %dx3, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %51 = load double, double* %dx4, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi double [ %50, %cond.true.13 ], [ %51, %cond.false.14 ]
  %cmp17 = fcmp olt double %cond, %cond16
  br i1 %cmp17, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %cond.end.15
  %52 = load double, double* %dx1, align 8
  %53 = load double, double* %dx2, align 8
  %cmp19 = fcmp olt double %52, %53
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.true.18
  %54 = load double, double* %dx1, align 8
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.true.18
  %55 = load double, double* %dx2, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi double [ %54, %cond.true.20 ], [ %55, %cond.false.21 ]
  br label %cond.end.30

cond.false.24:                                    ; preds = %cond.end.15
  %56 = load double, double* %dx3, align 8
  %57 = load double, double* %dx4, align 8
  %cmp25 = fcmp olt double %56, %57
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.24
  %58 = load double, double* %dx3, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.false.24
  %59 = load double, double* %dx4, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi double [ %58, %cond.true.26 ], [ %59, %cond.false.27 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.end.22
  %cond31 = phi double [ %cond23, %cond.end.22 ], [ %cond29, %cond.end.28 ]
  %call32 = call double @floor(double %cond31) #6
  %conv = fptosi double %call32 to i32
  %60 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %60, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %61 = load double, double* %dy1, align 8
  %62 = load double, double* %dy2, align 8
  %cmp33 = fcmp olt double %61, %62
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.30
  %63 = load double, double* %dy1, align 8
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.30
  %64 = load double, double* %dy2, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi double [ %63, %cond.true.35 ], [ %64, %cond.false.36 ]
  %65 = load double, double* %dy3, align 8
  %66 = load double, double* %dy4, align 8
  %cmp39 = fcmp olt double %65, %66
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.37
  %67 = load double, double* %dy3, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.37
  %68 = load double, double* %dy4, align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi double [ %67, %cond.true.41 ], [ %68, %cond.false.42 ]
  %cmp45 = fcmp olt double %cond38, %cond44
  br i1 %cmp45, label %cond.true.47, label %cond.false.54

cond.true.47:                                     ; preds = %cond.end.43
  %69 = load double, double* %dy1, align 8
  %70 = load double, double* %dy2, align 8
  %cmp48 = fcmp olt double %69, %70
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.true.47
  %71 = load double, double* %dy1, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.true.47
  %72 = load double, double* %dy2, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi double [ %71, %cond.true.50 ], [ %72, %cond.false.51 ]
  br label %cond.end.61

cond.false.54:                                    ; preds = %cond.end.43
  %73 = load double, double* %dy3, align 8
  %74 = load double, double* %dy4, align 8
  %cmp55 = fcmp olt double %73, %74
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  %75 = load double, double* %dy3, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.54
  %76 = load double, double* %dy4, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi double [ %75, %cond.true.57 ], [ %76, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.end.52
  %cond62 = phi double [ %cond53, %cond.end.52 ], [ %cond60, %cond.end.59 ]
  %call63 = call double @floor(double %cond62) #6
  %conv64 = fptosi double %call63 to i32
  %77 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %77, i32 0, i32 1
  store i32 %conv64, i32* %y, align 4
  %78 = load double, double* %dx1, align 8
  %79 = load double, double* %dx2, align 8
  %cmp65 = fcmp ogt double %78, %79
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.61
  %80 = load double, double* %dx1, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.61
  %81 = load double, double* %dx2, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi double [ %80, %cond.true.67 ], [ %81, %cond.false.68 ]
  %82 = load double, double* %dx3, align 8
  %83 = load double, double* %dx4, align 8
  %cmp71 = fcmp ogt double %82, %83
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end.69
  %84 = load double, double* %dx3, align 8
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.69
  %85 = load double, double* %dx4, align 8
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi double [ %84, %cond.true.73 ], [ %85, %cond.false.74 ]
  %cmp77 = fcmp ogt double %cond70, %cond76
  br i1 %cmp77, label %cond.true.79, label %cond.false.86

cond.true.79:                                     ; preds = %cond.end.75
  %86 = load double, double* %dx1, align 8
  %87 = load double, double* %dx2, align 8
  %cmp80 = fcmp ogt double %86, %87
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.true.79
  %88 = load double, double* %dx1, align 8
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.true.79
  %89 = load double, double* %dx2, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi double [ %88, %cond.true.82 ], [ %89, %cond.false.83 ]
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.end.75
  %90 = load double, double* %dx3, align 8
  %91 = load double, double* %dx4, align 8
  %cmp87 = fcmp ogt double %90, %91
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false.86
  %92 = load double, double* %dx3, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.false.86
  %93 = load double, double* %dx4, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi double [ %92, %cond.true.89 ], [ %93, %cond.false.90 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.end.84
  %cond94 = phi double [ %cond85, %cond.end.84 ], [ %cond92, %cond.end.91 ]
  %call95 = call double @ceil(double %cond94) #6
  %conv96 = fptosi double %call95 to i32
  %94 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %94, i32 0, i32 2
  store i32 %conv96, i32* %width, align 4
  %95 = load double, double* %dy1, align 8
  %96 = load double, double* %dy2, align 8
  %cmp97 = fcmp ogt double %95, %96
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.end.93
  %97 = load double, double* %dy1, align 8
  br label %cond.end.101

cond.false.100:                                   ; preds = %cond.end.93
  %98 = load double, double* %dy2, align 8
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi double [ %97, %cond.true.99 ], [ %98, %cond.false.100 ]
  %99 = load double, double* %dy3, align 8
  %100 = load double, double* %dy4, align 8
  %cmp103 = fcmp ogt double %99, %100
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.end.101
  %101 = load double, double* %dy3, align 8
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.101
  %102 = load double, double* %dy4, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi double [ %101, %cond.true.105 ], [ %102, %cond.false.106 ]
  %cmp109 = fcmp ogt double %cond102, %cond108
  br i1 %cmp109, label %cond.true.111, label %cond.false.118

cond.true.111:                                    ; preds = %cond.end.107
  %103 = load double, double* %dy1, align 8
  %104 = load double, double* %dy2, align 8
  %cmp112 = fcmp ogt double %103, %104
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.true.111
  %105 = load double, double* %dy1, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %cond.true.111
  %106 = load double, double* %dy2, align 8
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi double [ %105, %cond.true.114 ], [ %106, %cond.false.115 ]
  br label %cond.end.125

cond.false.118:                                   ; preds = %cond.end.107
  %107 = load double, double* %dy3, align 8
  %108 = load double, double* %dy4, align 8
  %cmp119 = fcmp ogt double %107, %108
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.false.118
  %109 = load double, double* %dy3, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.false.118
  %110 = load double, double* %dy4, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi double [ %109, %cond.true.121 ], [ %110, %cond.false.122 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %cond.end.116
  %cond126 = phi double [ %cond117, %cond.end.116 ], [ %cond124, %cond.end.123 ]
  %call127 = call double @ceil(double %cond126) #6
  %conv128 = fptosi double %call127 to i32
  %111 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %111, i32 0, i32 3
  store i32 %conv128, i32* %height, align 4
  %112 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %x129 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %112, i32 0, i32 0
  %113 = load i32, i32* %x129, align 4
  %114 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %width130 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %114, i32 0, i32 2
  %115 = load i32, i32* %width130, align 4
  %sub = sub nsw i32 %115, %113
  store i32 %sub, i32* %width130, align 4
  %116 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %y131 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %116, i32 0, i32 1
  %117 = load i32, i32* %y131, align 4
  %118 = load %struct._cairo_rectangle_int*, %struct._cairo_rectangle_int** %extents.addr, align 8
  %height132 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %118, i32 0, i32 3
  %119 = load i32, i32* %height132, align 4
  %sub133 = sub nsw i32 %119, %117
  store i32 %sub133, i32* %height132, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.125, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_draw_quad(%struct._GimpDrawable* %texture, %struct._cairo* %cr, %struct._GimpChannel* %mask, i32 %mask_offx, i32 %mask_offy, i32* %x, i32* %y, float* %u, float* %v, i8 zeroext %opacity) #3 {
entry:
  %texture.addr = alloca %struct._GimpDrawable*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %mask_offx.addr = alloca i32, align 4
  %mask_offy.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %u.addr = alloca float*, align 8
  %v.addr = alloca float*, align 8
  %opacity.addr = alloca i8, align 1
  %x2 = alloca [3 x i32], align 4
  %y2 = alloca [3 x i32], align 4
  %u2 = alloca [3 x float], align 4
  %v2 = alloca [3 x float], align 4
  %minx = alloca i32, align 4
  %maxx = alloca i32, align 4
  %miny = alloca i32, align 4
  %maxy = alloca i32, align 4
  %clip_x1 = alloca double, align 8
  %clip_y1 = alloca double, align 8
  %clip_x2 = alloca double, align 8
  %clip_y2 = alloca double, align 8
  %c = alloca i32, align 4
  %area = alloca %struct._cairo_surface*, align 8
  store %struct._GimpDrawable* %texture, %struct._GimpDrawable** %texture.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %mask_offx, i32* %mask_offx.addr, align 4
  store i32 %mask_offy, i32* %mask_offy.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store float* %u, float** %u.addr, align 8
  store float* %v, float** %v.addr, align 8
  store i8 %opacity, i8* %opacity.addr, align 1
  %0 = load i32*, i32** %x.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 3
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %x2, i32 0, i64 0
  store i32 %1, i32* %arrayidx1, align 4
  %2 = load i32*, i32** %y.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3
  %3 = load i32, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %y2, i32 0, i64 0
  store i32 %3, i32* %arrayidx3, align 4
  %4 = load float*, float** %u.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %4, i64 3
  %5 = load float, float* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x float], [3 x float]* %u2, i32 0, i64 0
  store float %5, float* %arrayidx5, align 4
  %6 = load float*, float** %v.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %6, i64 3
  %7 = load float, float* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [3 x float], [3 x float]* %v2, i32 0, i64 0
  store float %7, float* %arrayidx7, align 4
  %8 = load i32*, i32** %x.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %x2, i32 0, i64 1
  store i32 %9, i32* %arrayidx9, align 4
  %10 = load i32*, i32** %y.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %10, i64 2
  %11 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %y2, i32 0, i64 1
  store i32 %11, i32* %arrayidx11, align 4
  %12 = load float*, float** %u.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x float], [3 x float]* %u2, i32 0, i64 1
  store float %13, float* %arrayidx13, align 4
  %14 = load float*, float** %v.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %14, i64 2
  %15 = load float, float* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [3 x float], [3 x float]* %v2, i32 0, i64 1
  store float %15, float* %arrayidx15, align 4
  %16 = load i32*, i32** %x.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %arrayidx16, align 4
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %x2, i32 0, i64 2
  store i32 %17, i32* %arrayidx17, align 4
  %18 = load i32*, i32** %y.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %y2, i32 0, i64 2
  store i32 %19, i32* %arrayidx19, align 4
  %20 = load float*, float** %u.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [3 x float], [3 x float]* %u2, i32 0, i64 2
  store float %21, float* %arrayidx21, align 4
  %22 = load float*, float** %v.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %22, i64 1
  %23 = load float, float* %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %v2, i32 0, i64 2
  store float %23, float* %arrayidx23, align 4
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip_extents(%struct._cairo* %24, double* %clip_x1, double* %clip_y1, double* %clip_x2, double* %clip_y2)
  %25 = load i32*, i32** %x.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx24, align 4
  store i32 %26, i32* %maxx, align 4
  store i32 %26, i32* %minx, align 4
  %27 = load i32*, i32** %y.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx25, align 4
  store i32 %28, i32* %maxy, align 4
  store i32 %28, i32* %miny, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %29, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %c, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom
  %32 = load i32, i32* %arrayidx26, align 4
  %33 = load i32, i32* %minx, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %34 = load i32, i32* %c, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load i32*, i32** %x.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 %idxprom28
  %36 = load i32, i32* %arrayidx29, align 4
  store i32 %36, i32* %minx, align 4
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %37 = load i32, i32* %c, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load i32*, i32** %x.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %38, i64 %idxprom30
  %39 = load i32, i32* %arrayidx31, align 4
  %40 = load i32, i32* %maxx, align 4
  %cmp32 = icmp sgt i32 %39, %40
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.else
  %41 = load i32, i32* %c, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load i32*, i32** %x.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 %idxprom34
  %43 = load i32, i32* %arrayidx35, align 4
  store i32 %43, i32* %maxx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then
  %44 = load i32, i32* %c, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load i32*, i32** %y.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %45, i64 %idxprom37
  %46 = load i32, i32* %arrayidx38, align 4
  %47 = load i32, i32* %miny, align 4
  %cmp39 = icmp slt i32 %46, %47
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.36
  %48 = load i32, i32* %c, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load i32*, i32** %y.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %49, i64 %idxprom41
  %50 = load i32, i32* %arrayidx42, align 4
  store i32 %50, i32* %miny, align 4
  br label %if.end.51

if.else.43:                                       ; preds = %if.end.36
  %51 = load i32, i32* %c, align 4
  %idxprom44 = sext i32 %51 to i64
  %52 = load i32*, i32** %y.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %52, i64 %idxprom44
  %53 = load i32, i32* %arrayidx45, align 4
  %54 = load i32, i32* %maxy, align 4
  %cmp46 = icmp sgt i32 %53, %54
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.else.43
  %55 = load i32, i32* %c, align 4
  %idxprom48 = sext i32 %55 to i64
  %56 = load i32*, i32** %y.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %56, i64 %idxprom48
  %57 = load i32, i32* %arrayidx49, align 4
  store i32 %57, i32* %maxy, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.else.43
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %58 = load i32, i32* %c, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %minx, align 4
  %conv = sitofp i32 %59 to double
  %60 = load double, double* %clip_x1, align 8
  %cmp52 = fcmp olt double %conv, %60
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end
  %61 = load double, double* %clip_x1, align 8
  %conv55 = fptosi double %61 to i32
  store i32 %conv55, i32* %minx, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end
  %62 = load i32, i32* %miny, align 4
  %conv57 = sitofp i32 %62 to double
  %63 = load double, double* %clip_y1, align 8
  %cmp58 = fcmp olt double %conv57, %63
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %64 = load double, double* %clip_y1, align 8
  %conv61 = fptosi double %64 to i32
  store i32 %conv61, i32* %miny, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %65 = load i32, i32* %maxx, align 4
  %conv63 = sitofp i32 %65 to double
  %66 = load double, double* %clip_x2, align 8
  %cmp64 = fcmp ogt double %conv63, %66
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.62
  %67 = load double, double* %clip_x2, align 8
  %conv67 = fptosi double %67 to i32
  store i32 %conv67, i32* %maxx, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.62
  %68 = load i32, i32* %maxy, align 4
  %conv69 = sitofp i32 %68 to double
  %69 = load double, double* %clip_y2, align 8
  %cmp70 = fcmp ogt double %conv69, %69
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.68
  %70 = load double, double* %clip_y2, align 8
  %conv73 = fptosi double %70 to i32
  store i32 %conv73, i32* %maxy, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.68
  %71 = load i32, i32* %minx, align 4
  %72 = load i32, i32* %maxx, align 4
  %cmp75 = icmp sle i32 %71, %72
  br i1 %cmp75, label %land.lhs.true, label %if.end.90

land.lhs.true:                                    ; preds = %if.end.74
  %73 = load i32, i32* %miny, align 4
  %74 = load i32, i32* %maxy, align 4
  %cmp77 = icmp sle i32 %73, %74
  br i1 %cmp77, label %if.then.79, label %if.end.90

if.then.79:                                       ; preds = %land.lhs.true
  %75 = load i32, i32* %maxx, align 4
  %76 = load i32, i32* %minx, align 4
  %sub = sub nsw i32 %75, %76
  %add = add nsw i32 %sub, 1
  %77 = load i32, i32* %maxy, align 4
  %78 = load i32, i32* %miny, align 4
  %sub80 = sub nsw i32 %77, %78
  %add81 = add nsw i32 %sub80, 1
  %call = call %struct._cairo_surface* @cairo_image_surface_create(i32 0, i32 %add, i32 %add81)
  store %struct._cairo_surface* %call, %struct._cairo_surface** %area, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.79
  %79 = load %struct._cairo_surface*, %struct._cairo_surface** %area, align 8
  %cmp82 = icmp ne %struct._cairo_surface* %79, null
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body
  br label %if.end.86

if.else.85:                                       ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_canvas_transform_preview_draw_quad, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.90

if.end.86:                                        ; preds = %if.then.84
  br label %do.end

do.end:                                           ; preds = %if.end.86
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %81 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %82 = load %struct._cairo_surface*, %struct._cairo_surface** %area, align 8
  %83 = load i32, i32* %minx, align 4
  %84 = load i32, i32* %miny, align 4
  %85 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %86 = load i32, i32* %mask_offx.addr, align 4
  %87 = load i32, i32* %mask_offy.addr, align 4
  %88 = load i32*, i32** %x.addr, align 8
  %89 = load i32*, i32** %y.addr, align 8
  %90 = load float*, float** %u.addr, align 8
  %91 = load float*, float** %v.addr, align 8
  %92 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri(%struct._GimpDrawable* %80, %struct._cairo* %81, %struct._cairo_surface* %82, i32 %83, i32 %84, %struct._GimpChannel* %85, i32 %86, i32 %87, i32* %88, i32* %89, float* %90, float* %91, i8 zeroext %92)
  %93 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %94 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %95 = load %struct._cairo_surface*, %struct._cairo_surface** %area, align 8
  %96 = load i32, i32* %minx, align 4
  %97 = load i32, i32* %miny, align 4
  %98 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %99 = load i32, i32* %mask_offx.addr, align 4
  %100 = load i32, i32* %mask_offy.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %x2, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [3 x i32], [3 x i32]* %y2, i32 0, i32 0
  %arraydecay88 = getelementptr inbounds [3 x float], [3 x float]* %u2, i32 0, i32 0
  %arraydecay89 = getelementptr inbounds [3 x float], [3 x float]* %v2, i32 0, i32 0
  %101 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri(%struct._GimpDrawable* %93, %struct._cairo* %94, %struct._cairo_surface* %95, i32 %96, i32 %97, %struct._GimpChannel* %98, i32 %99, i32 %100, i32* %arraydecay, i32* %arraydecay87, float* %arraydecay88, float* %arraydecay89, i8 zeroext %101)
  %102 = load %struct._cairo_surface*, %struct._cairo_surface** %area, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %102)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.85, %do.end, %land.lhs.true, %if.end.74
  ret void
}

declare i32 @gimp_transform_polygon_is_convex(double, double, double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare void @cairo_clip_extents(%struct._cairo*, double*, double*, double*, double*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_draw_tri(%struct._GimpDrawable* %texture, %struct._cairo* %cr, %struct._cairo_surface* %area, i32 %area_offx, i32 %area_offy, %struct._GimpChannel* %mask, i32 %mask_offx, i32 %mask_offy, i32* %x, i32* %y, float* %u, float* %v, i8 zeroext %opacity) #3 {
entry:
  %texture.addr = alloca %struct._GimpDrawable*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %area.addr = alloca %struct._cairo_surface*, align 8
  %area_offx.addr = alloca i32, align 4
  %area_offy.addr = alloca i32, align 4
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %mask_offx.addr = alloca i32, align 4
  %mask_offy.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %u.addr = alloca float*, align 8
  %v.addr = alloca float*, align 8
  %opacity.addr = alloca i8, align 1
  %clip_x1 = alloca double, align 8
  %clip_y1 = alloca double, align 8
  %clip_x2 = alloca double, align 8
  %clip_y2 = alloca double, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ry = alloca i32, align 4
  %l_edge = alloca i32*, align 8
  %r_edge = alloca i32*, align 8
  %left = alloca i32*, align 8
  %right = alloca i32*, align 8
  %dul = alloca float, align 4
  %dvl = alloca float, align 4
  %dur = alloca float, align 4
  %dvr = alloca float, align 4
  %u_l = alloca float, align 4
  %v_l = alloca float, align 4
  %u_r = alloca float, align 4
  %v_r = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %ftmp = alloca float, align 4
  store %struct._GimpDrawable* %texture, %struct._GimpDrawable** %texture.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._cairo_surface* %area, %struct._cairo_surface** %area.addr, align 8
  store i32 %area_offx, i32* %area_offx.addr, align 4
  store i32 %area_offy, i32* %area_offy.addr, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %mask_offx, i32* %mask_offx.addr, align 4
  store i32 %mask_offy, i32* %mask_offy.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store float* %u, float** %u.addr, align 8
  store float* %v, float** %v.addr, align 8
  store i8 %opacity, i8* %opacity.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %cmp12 = icmp ne %struct._cairo_surface* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %x.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.26

land.lhs.true.19:                                 ; preds = %do.body.17
  %15 = load i32*, i32** %y.addr, align 8
  %cmp20 = icmp ne i32* %15, null
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.26

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %16 = load float*, float** %u.addr, align 8
  %cmp22 = icmp ne float* %16, null
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.26

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %17 = load float*, float** %v.addr, align 8
  %cmp24 = icmp ne float* %17, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.23
  br label %if.end.27

if.else.26:                                       ; preds = %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip_extents(%struct._cairo* %18, double* %clip_x1, double* %clip_y1, double* %clip_x2, double* %clip_y2)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %do.end.28
  %19 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %19, 2
  br i1 %cmp29, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %add = add nsw i32 %20, 1
  store i32 %add, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %21, 3
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %22 = load i32, i32* %k, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32*, i32** %y.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i32*, i32** %y.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %26, i64 %idxprom33
  %27 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp slt i32 %24, %27
  br i1 %cmp35, label %if.then.36, label %if.end.72

if.then.36:                                       ; preds = %for.body.32
  %28 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load i32*, i32** %y.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %29, i64 %idxprom40
  %30 = load i32, i32* %arrayidx41, align 4
  store i32 %30, i32* %tmp38, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load i32*, i32** %y.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %32, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load i32*, i32** %y.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %35, i64 %idxprom44
  store i32 %33, i32* %arrayidx45, align 4
  %36 = load i32, i32* %tmp38, align 4
  %37 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i32*, i32** %y.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %38, i64 %idxprom46
  store i32 %36, i32* %arrayidx47, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i32*, i32** %x.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %40, i64 %idxprom48
  %41 = load i32, i32* %arrayidx49, align 4
  store i32 %41, i32* %tmp38, align 4
  %42 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load i32*, i32** %x.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %43, i64 %idxprom50
  %44 = load i32, i32* %arrayidx51, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %45 to i64
  %46 = load i32*, i32** %x.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %46, i64 %idxprom52
  store i32 %44, i32* %arrayidx53, align 4
  %47 = load i32, i32* %tmp38, align 4
  %48 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load i32*, i32** %x.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %49, i64 %idxprom54
  store i32 %47, i32* %arrayidx55, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %50 to i64
  %51 = load float*, float** %u.addr, align 8
  %arrayidx57 = getelementptr inbounds float, float* %51, i64 %idxprom56
  %52 = load float, float* %arrayidx57, align 4
  store float %52, float* %ftmp, align 4
  %53 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %53 to i64
  %54 = load float*, float** %u.addr, align 8
  %arrayidx59 = getelementptr inbounds float, float* %54, i64 %idxprom58
  %55 = load float, float* %arrayidx59, align 4
  %56 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %56 to i64
  %57 = load float*, float** %u.addr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %57, i64 %idxprom60
  store float %55, float* %arrayidx61, align 4
  %58 = load float, float* %ftmp, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load float*, float** %u.addr, align 8
  %arrayidx63 = getelementptr inbounds float, float* %60, i64 %idxprom62
  store float %58, float* %arrayidx63, align 4
  %61 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load float*, float** %v.addr, align 8
  %arrayidx65 = getelementptr inbounds float, float* %62, i64 %idxprom64
  %63 = load float, float* %arrayidx65, align 4
  store float %63, float* %ftmp, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %64 to i64
  %65 = load float*, float** %v.addr, align 8
  %arrayidx67 = getelementptr inbounds float, float* %65, i64 %idxprom66
  %66 = load float, float* %arrayidx67, align 4
  %67 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %67 to i64
  %68 = load float*, float** %v.addr, align 8
  %arrayidx69 = getelementptr inbounds float, float* %68, i64 %idxprom68
  store float %66, float* %arrayidx69, align 4
  %69 = load float, float* %ftmp, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load float*, float** %v.addr, align 8
  %arrayidx71 = getelementptr inbounds float, float* %71, i64 %idxprom70
  store float %69, float* %arrayidx71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.36, %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %72 = load i32, i32* %k, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end
  %73 = load i32, i32* %j, align 4
  %inc74 = add nsw i32 %73, 1
  store i32 %inc74, i32* %j, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %74 = load i32*, i32** %y.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %74, i64 2
  %75 = load i32, i32* %arrayidx76, align 4
  %76 = load i32*, i32** %y.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp eq i32 %75, %77
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end.75
  br label %return

if.end.80:                                        ; preds = %for.end.75
  %78 = load i32*, i32** %y.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %78, i64 2
  %79 = load i32, i32* %arrayidx81, align 4
  %80 = load i32*, i32** %y.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx82, align 4
  %sub = sub nsw i32 %79, %81
  %conv = sext i32 %sub to i64
  %call83 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %82 = bitcast i8* %call83 to i32*
  store i32* %82, i32** %l_edge, align 8
  %83 = load i32*, i32** %y.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %83, i64 2
  %84 = load i32, i32* %arrayidx84, align 4
  %85 = load i32*, i32** %y.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %85, i64 0
  %86 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %84, %86
  %conv87 = sext i32 %sub86 to i64
  %call88 = call noalias i8* @g_malloc_n(i64 %conv87, i64 4)
  %87 = bitcast i8* %call88 to i32*
  store i32* %87, i32** %r_edge, align 8
  %88 = load i32*, i32** %l_edge, align 8
  %89 = load i32*, i32** %x.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx89, align 4
  %91 = load i32*, i32** %y.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %91, i64 0
  %92 = load i32, i32* %arrayidx90, align 4
  %93 = load i32*, i32** %x.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %93, i64 2
  %94 = load i32, i32* %arrayidx91, align 4
  %95 = load i32*, i32** %y.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %95, i64 2
  %96 = load i32, i32* %arrayidx92, align 4
  call void @gimp_canvas_transform_preview_trace_tri_edge(i32* %88, i32 %90, i32 %92, i32 %94, i32 %96)
  %97 = load i32*, i32** %l_edge, align 8
  store i32* %97, i32** %left, align 8
  %98 = load float*, float** %u.addr, align 8
  %arrayidx93 = getelementptr inbounds float, float* %98, i64 2
  %99 = load float, float* %arrayidx93, align 4
  %100 = load float*, float** %u.addr, align 8
  %arrayidx94 = getelementptr inbounds float, float* %100, i64 0
  %101 = load float, float* %arrayidx94, align 4
  %sub95 = fsub float %99, %101
  %102 = load i32*, i32** %y.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %102, i64 2
  %103 = load i32, i32* %arrayidx96, align 4
  %104 = load i32*, i32** %y.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %104, i64 0
  %105 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %103, %105
  %conv99 = sitofp i32 %sub98 to float
  %div = fdiv float %sub95, %conv99
  store float %div, float* %dul, align 4
  %106 = load float*, float** %v.addr, align 8
  %arrayidx100 = getelementptr inbounds float, float* %106, i64 2
  %107 = load float, float* %arrayidx100, align 4
  %108 = load float*, float** %v.addr, align 8
  %arrayidx101 = getelementptr inbounds float, float* %108, i64 0
  %109 = load float, float* %arrayidx101, align 4
  %sub102 = fsub float %107, %109
  %110 = load i32*, i32** %y.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %110, i64 2
  %111 = load i32, i32* %arrayidx103, align 4
  %112 = load i32*, i32** %y.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %111, %113
  %conv106 = sitofp i32 %sub105 to float
  %div107 = fdiv float %sub102, %conv106
  store float %div107, float* %dvl, align 4
  %114 = load float*, float** %u.addr, align 8
  %arrayidx108 = getelementptr inbounds float, float* %114, i64 0
  %115 = load float, float* %arrayidx108, align 4
  store float %115, float* %u_l, align 4
  %116 = load float*, float** %v.addr, align 8
  %arrayidx109 = getelementptr inbounds float, float* %116, i64 0
  %117 = load float, float* %arrayidx109, align 4
  store float %117, float* %v_l, align 4
  %118 = load i32*, i32** %y.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %118, i64 0
  %119 = load i32, i32* %arrayidx110, align 4
  %120 = load i32*, i32** %y.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %120, i64 1
  %121 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp ne i32 %119, %121
  br i1 %cmp112, label %if.then.114, label %if.end.188

if.then.114:                                      ; preds = %if.end.80
  %122 = load i32*, i32** %r_edge, align 8
  %123 = load i32*, i32** %x.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %123, i64 0
  %124 = load i32, i32* %arrayidx115, align 4
  %125 = load i32*, i32** %y.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx116, align 4
  %127 = load i32*, i32** %x.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %127, i64 1
  %128 = load i32, i32* %arrayidx117, align 4
  %129 = load i32*, i32** %y.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %129, i64 1
  %130 = load i32, i32* %arrayidx118, align 4
  call void @gimp_canvas_transform_preview_trace_tri_edge(i32* %122, i32 %124, i32 %126, i32 %128, i32 %130)
  %131 = load i32*, i32** %r_edge, align 8
  store i32* %131, i32** %right, align 8
  %132 = load float*, float** %u.addr, align 8
  %arrayidx119 = getelementptr inbounds float, float* %132, i64 1
  %133 = load float, float* %arrayidx119, align 4
  %134 = load float*, float** %u.addr, align 8
  %arrayidx120 = getelementptr inbounds float, float* %134, i64 0
  %135 = load float, float* %arrayidx120, align 4
  %sub121 = fsub float %133, %135
  %136 = load i32*, i32** %y.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %136, i64 1
  %137 = load i32, i32* %arrayidx122, align 4
  %138 = load i32*, i32** %y.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %138, i64 0
  %139 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub nsw i32 %137, %139
  %conv125 = sitofp i32 %sub124 to float
  %div126 = fdiv float %sub121, %conv125
  store float %div126, float* %dur, align 4
  %140 = load float*, float** %v.addr, align 8
  %arrayidx127 = getelementptr inbounds float, float* %140, i64 1
  %141 = load float, float* %arrayidx127, align 4
  %142 = load float*, float** %v.addr, align 8
  %arrayidx128 = getelementptr inbounds float, float* %142, i64 0
  %143 = load float, float* %arrayidx128, align 4
  %sub129 = fsub float %141, %143
  %144 = load i32*, i32** %y.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %144, i64 1
  %145 = load i32, i32* %arrayidx130, align 4
  %146 = load i32*, i32** %y.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %146, i64 0
  %147 = load i32, i32* %arrayidx131, align 4
  %sub132 = sub nsw i32 %145, %147
  %conv133 = sitofp i32 %sub132 to float
  %div134 = fdiv float %sub129, %conv133
  store float %div134, float* %dvr, align 4
  %148 = load float*, float** %u.addr, align 8
  %arrayidx135 = getelementptr inbounds float, float* %148, i64 0
  %149 = load float, float* %arrayidx135, align 4
  store float %149, float* %u_r, align 4
  %150 = load float*, float** %v.addr, align 8
  %arrayidx136 = getelementptr inbounds float, float* %150, i64 0
  %151 = load float, float* %arrayidx136, align 4
  store float %151, float* %v_r, align 4
  %152 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %tobool137 = icmp ne %struct._GimpChannel* %152, null
  br i1 %tobool137, label %if.then.138, label %if.else.162

if.then.138:                                      ; preds = %if.then.114
  %153 = load i32*, i32** %y.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %153, i64 0
  %154 = load i32, i32* %arrayidx139, align 4
  store i32 %154, i32* %ry, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.159, %if.then.138
  %155 = load i32, i32* %ry, align 4
  %156 = load i32*, i32** %y.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %156, i64 1
  %157 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp slt i32 %155, %157
  br i1 %cmp142, label %for.body.144, label %for.end.161

for.body.144:                                     ; preds = %for.cond.140
  %158 = load i32, i32* %ry, align 4
  %conv145 = sitofp i32 %158 to double
  %159 = load double, double* %clip_y1, align 8
  %cmp146 = fcmp oge double %conv145, %159
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.153

land.lhs.true.148:                                ; preds = %for.body.144
  %160 = load i32, i32* %ry, align 4
  %conv149 = sitofp i32 %160 to double
  %161 = load double, double* %clip_y2, align 8
  %cmp150 = fcmp olt double %conv149, %161
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %land.lhs.true.148
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %163 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %164 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %165 = load i32, i32* %area_offx.addr, align 4
  %166 = load i32, i32* %area_offy.addr, align 4
  %167 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %168 = load i32, i32* %mask_offx.addr, align 4
  %169 = load i32, i32* %mask_offy.addr, align 4
  %170 = load i32*, i32** %left, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load float, float* %u_l, align 4
  %173 = load float, float* %v_l, align 4
  %174 = load i32*, i32** %right, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load float, float* %u_r, align 4
  %177 = load float, float* %v_r, align 4
  %178 = load i32, i32* %ry, align 4
  %179 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri_row_mask(%struct._GimpDrawable* %162, %struct._cairo* %163, %struct._cairo_surface* %164, i32 %165, i32 %166, %struct._GimpChannel* %167, i32 %168, i32 %169, i32 %171, float %172, float %173, i32 %175, float %176, float %177, i32 %178, i8 zeroext %179)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %land.lhs.true.148, %for.body.144
  %180 = load i32*, i32** %left, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr, i32** %left, align 8
  %181 = load i32*, i32** %right, align 8
  %incdec.ptr154 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %incdec.ptr154, i32** %right, align 8
  %182 = load float, float* %dul, align 4
  %183 = load float, float* %u_l, align 4
  %add155 = fadd float %183, %182
  store float %add155, float* %u_l, align 4
  %184 = load float, float* %dvl, align 4
  %185 = load float, float* %v_l, align 4
  %add156 = fadd float %185, %184
  store float %add156, float* %v_l, align 4
  %186 = load float, float* %dur, align 4
  %187 = load float, float* %u_r, align 4
  %add157 = fadd float %187, %186
  store float %add157, float* %u_r, align 4
  %188 = load float, float* %dvr, align 4
  %189 = load float, float* %v_r, align 4
  %add158 = fadd float %189, %188
  store float %add158, float* %v_r, align 4
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.153
  %190 = load i32, i32* %ry, align 4
  %inc160 = add nsw i32 %190, 1
  store i32 %inc160, i32* %ry, align 4
  br label %for.cond.140

for.end.161:                                      ; preds = %for.cond.140
  br label %if.end.187

if.else.162:                                      ; preds = %if.then.114
  %191 = load i32*, i32** %y.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %191, i64 0
  %192 = load i32, i32* %arrayidx163, align 4
  store i32 %192, i32* %ry, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.184, %if.else.162
  %193 = load i32, i32* %ry, align 4
  %194 = load i32*, i32** %y.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %194, i64 1
  %195 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp slt i32 %193, %195
  br i1 %cmp166, label %for.body.168, label %for.end.186

for.body.168:                                     ; preds = %for.cond.164
  %196 = load i32, i32* %ry, align 4
  %conv169 = sitofp i32 %196 to double
  %197 = load double, double* %clip_y1, align 8
  %cmp170 = fcmp oge double %conv169, %197
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.177

land.lhs.true.172:                                ; preds = %for.body.168
  %198 = load i32, i32* %ry, align 4
  %conv173 = sitofp i32 %198 to double
  %199 = load double, double* %clip_y2, align 8
  %cmp174 = fcmp olt double %conv173, %199
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %land.lhs.true.172
  %200 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %201 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %202 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %203 = load i32, i32* %area_offx.addr, align 4
  %204 = load i32, i32* %area_offy.addr, align 4
  %205 = load i32*, i32** %left, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load float, float* %u_l, align 4
  %208 = load float, float* %v_l, align 4
  %209 = load i32*, i32** %right, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load float, float* %u_r, align 4
  %212 = load float, float* %v_r, align 4
  %213 = load i32, i32* %ry, align 4
  %214 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri_row(%struct._GimpDrawable* %200, %struct._cairo* %201, %struct._cairo_surface* %202, i32 %203, i32 %204, i32 %206, float %207, float %208, i32 %210, float %211, float %212, i32 %213, i8 zeroext %214)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %land.lhs.true.172, %for.body.168
  %215 = load i32*, i32** %left, align 8
  %incdec.ptr178 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %incdec.ptr178, i32** %left, align 8
  %216 = load i32*, i32** %right, align 8
  %incdec.ptr179 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %incdec.ptr179, i32** %right, align 8
  %217 = load float, float* %dul, align 4
  %218 = load float, float* %u_l, align 4
  %add180 = fadd float %218, %217
  store float %add180, float* %u_l, align 4
  %219 = load float, float* %dvl, align 4
  %220 = load float, float* %v_l, align 4
  %add181 = fadd float %220, %219
  store float %add181, float* %v_l, align 4
  %221 = load float, float* %dur, align 4
  %222 = load float, float* %u_r, align 4
  %add182 = fadd float %222, %221
  store float %add182, float* %u_r, align 4
  %223 = load float, float* %dvr, align 4
  %224 = load float, float* %v_r, align 4
  %add183 = fadd float %224, %223
  store float %add183, float* %v_r, align 4
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.177
  %225 = load i32, i32* %ry, align 4
  %inc185 = add nsw i32 %225, 1
  store i32 %inc185, i32* %ry, align 4
  br label %for.cond.164

for.end.186:                                      ; preds = %for.cond.164
  br label %if.end.187

if.end.187:                                       ; preds = %for.end.186, %for.end.161
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.80
  %226 = load i32*, i32** %y.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %226, i64 1
  %227 = load i32, i32* %arrayidx189, align 4
  %228 = load i32*, i32** %y.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %228, i64 2
  %229 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp ne i32 %227, %229
  br i1 %cmp191, label %if.then.193, label %if.end.268

if.then.193:                                      ; preds = %if.end.188
  %230 = load i32*, i32** %r_edge, align 8
  %231 = load i32*, i32** %x.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %231, i64 1
  %232 = load i32, i32* %arrayidx194, align 4
  %233 = load i32*, i32** %y.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %233, i64 1
  %234 = load i32, i32* %arrayidx195, align 4
  %235 = load i32*, i32** %x.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %235, i64 2
  %236 = load i32, i32* %arrayidx196, align 4
  %237 = load i32*, i32** %y.addr, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %237, i64 2
  %238 = load i32, i32* %arrayidx197, align 4
  call void @gimp_canvas_transform_preview_trace_tri_edge(i32* %230, i32 %232, i32 %234, i32 %236, i32 %238)
  %239 = load i32*, i32** %r_edge, align 8
  store i32* %239, i32** %right, align 8
  %240 = load float*, float** %u.addr, align 8
  %arrayidx198 = getelementptr inbounds float, float* %240, i64 2
  %241 = load float, float* %arrayidx198, align 4
  %242 = load float*, float** %u.addr, align 8
  %arrayidx199 = getelementptr inbounds float, float* %242, i64 1
  %243 = load float, float* %arrayidx199, align 4
  %sub200 = fsub float %241, %243
  %244 = load i32*, i32** %y.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %244, i64 2
  %245 = load i32, i32* %arrayidx201, align 4
  %246 = load i32*, i32** %y.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %246, i64 1
  %247 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %245, %247
  %conv204 = sitofp i32 %sub203 to float
  %div205 = fdiv float %sub200, %conv204
  store float %div205, float* %dur, align 4
  %248 = load float*, float** %v.addr, align 8
  %arrayidx206 = getelementptr inbounds float, float* %248, i64 2
  %249 = load float, float* %arrayidx206, align 4
  %250 = load float*, float** %v.addr, align 8
  %arrayidx207 = getelementptr inbounds float, float* %250, i64 1
  %251 = load float, float* %arrayidx207, align 4
  %sub208 = fsub float %249, %251
  %252 = load i32*, i32** %y.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %252, i64 2
  %253 = load i32, i32* %arrayidx209, align 4
  %254 = load i32*, i32** %y.addr, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %254, i64 1
  %255 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %253, %255
  %conv212 = sitofp i32 %sub211 to float
  %div213 = fdiv float %sub208, %conv212
  store float %div213, float* %dvr, align 4
  %256 = load float*, float** %u.addr, align 8
  %arrayidx214 = getelementptr inbounds float, float* %256, i64 1
  %257 = load float, float* %arrayidx214, align 4
  store float %257, float* %u_r, align 4
  %258 = load float*, float** %v.addr, align 8
  %arrayidx215 = getelementptr inbounds float, float* %258, i64 1
  %259 = load float, float* %arrayidx215, align 4
  store float %259, float* %v_r, align 4
  %260 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %tobool216 = icmp ne %struct._GimpChannel* %260, null
  br i1 %tobool216, label %if.then.217, label %if.else.242

if.then.217:                                      ; preds = %if.then.193
  %261 = load i32*, i32** %y.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %261, i64 1
  %262 = load i32, i32* %arrayidx218, align 4
  store i32 %262, i32* %ry, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.239, %if.then.217
  %263 = load i32, i32* %ry, align 4
  %264 = load i32*, i32** %y.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %264, i64 2
  %265 = load i32, i32* %arrayidx220, align 4
  %cmp221 = icmp slt i32 %263, %265
  br i1 %cmp221, label %for.body.223, label %for.end.241

for.body.223:                                     ; preds = %for.cond.219
  %266 = load i32, i32* %ry, align 4
  %conv224 = sitofp i32 %266 to double
  %267 = load double, double* %clip_y1, align 8
  %cmp225 = fcmp oge double %conv224, %267
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.232

land.lhs.true.227:                                ; preds = %for.body.223
  %268 = load i32, i32* %ry, align 4
  %conv228 = sitofp i32 %268 to double
  %269 = load double, double* %clip_y2, align 8
  %cmp229 = fcmp olt double %conv228, %269
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %land.lhs.true.227
  %270 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %271 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %272 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %273 = load i32, i32* %area_offx.addr, align 4
  %274 = load i32, i32* %area_offy.addr, align 4
  %275 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %276 = load i32, i32* %mask_offx.addr, align 4
  %277 = load i32, i32* %mask_offy.addr, align 4
  %278 = load i32*, i32** %left, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load float, float* %u_l, align 4
  %281 = load float, float* %v_l, align 4
  %282 = load i32*, i32** %right, align 8
  %283 = load i32, i32* %282, align 4
  %284 = load float, float* %u_r, align 4
  %285 = load float, float* %v_r, align 4
  %286 = load i32, i32* %ry, align 4
  %287 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri_row_mask(%struct._GimpDrawable* %270, %struct._cairo* %271, %struct._cairo_surface* %272, i32 %273, i32 %274, %struct._GimpChannel* %275, i32 %276, i32 %277, i32 %279, float %280, float %281, i32 %283, float %284, float %285, i32 %286, i8 zeroext %287)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %land.lhs.true.227, %for.body.223
  %288 = load i32*, i32** %left, align 8
  %incdec.ptr233 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %incdec.ptr233, i32** %left, align 8
  %289 = load i32*, i32** %right, align 8
  %incdec.ptr234 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %incdec.ptr234, i32** %right, align 8
  %290 = load float, float* %dul, align 4
  %291 = load float, float* %u_l, align 4
  %add235 = fadd float %291, %290
  store float %add235, float* %u_l, align 4
  %292 = load float, float* %dvl, align 4
  %293 = load float, float* %v_l, align 4
  %add236 = fadd float %293, %292
  store float %add236, float* %v_l, align 4
  %294 = load float, float* %dur, align 4
  %295 = load float, float* %u_r, align 4
  %add237 = fadd float %295, %294
  store float %add237, float* %u_r, align 4
  %296 = load float, float* %dvr, align 4
  %297 = load float, float* %v_r, align 4
  %add238 = fadd float %297, %296
  store float %add238, float* %v_r, align 4
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.232
  %298 = load i32, i32* %ry, align 4
  %inc240 = add nsw i32 %298, 1
  store i32 %inc240, i32* %ry, align 4
  br label %for.cond.219

for.end.241:                                      ; preds = %for.cond.219
  br label %if.end.267

if.else.242:                                      ; preds = %if.then.193
  %299 = load i32*, i32** %y.addr, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %299, i64 1
  %300 = load i32, i32* %arrayidx243, align 4
  store i32 %300, i32* %ry, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.264, %if.else.242
  %301 = load i32, i32* %ry, align 4
  %302 = load i32*, i32** %y.addr, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %302, i64 2
  %303 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp slt i32 %301, %303
  br i1 %cmp246, label %for.body.248, label %for.end.266

for.body.248:                                     ; preds = %for.cond.244
  %304 = load i32, i32* %ry, align 4
  %conv249 = sitofp i32 %304 to double
  %305 = load double, double* %clip_y1, align 8
  %cmp250 = fcmp oge double %conv249, %305
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.257

land.lhs.true.252:                                ; preds = %for.body.248
  %306 = load i32, i32* %ry, align 4
  %conv253 = sitofp i32 %306 to double
  %307 = load double, double* %clip_y2, align 8
  %cmp254 = fcmp olt double %conv253, %307
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %land.lhs.true.252
  %308 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %309 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %310 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %311 = load i32, i32* %area_offx.addr, align 4
  %312 = load i32, i32* %area_offy.addr, align 4
  %313 = load i32*, i32** %left, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load float, float* %u_l, align 4
  %316 = load float, float* %v_l, align 4
  %317 = load i32*, i32** %right, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load float, float* %u_r, align 4
  %320 = load float, float* %v_r, align 4
  %321 = load i32, i32* %ry, align 4
  %322 = load i8, i8* %opacity.addr, align 1
  call void @gimp_canvas_transform_preview_draw_tri_row(%struct._GimpDrawable* %308, %struct._cairo* %309, %struct._cairo_surface* %310, i32 %311, i32 %312, i32 %314, float %315, float %316, i32 %318, float %319, float %320, i32 %321, i8 zeroext %322)
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %land.lhs.true.252, %for.body.248
  %323 = load i32*, i32** %left, align 8
  %incdec.ptr258 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %incdec.ptr258, i32** %left, align 8
  %324 = load i32*, i32** %right, align 8
  %incdec.ptr259 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %incdec.ptr259, i32** %right, align 8
  %325 = load float, float* %dul, align 4
  %326 = load float, float* %u_l, align 4
  %add260 = fadd float %326, %325
  store float %add260, float* %u_l, align 4
  %327 = load float, float* %dvl, align 4
  %328 = load float, float* %v_l, align 4
  %add261 = fadd float %328, %327
  store float %add261, float* %v_l, align 4
  %329 = load float, float* %dur, align 4
  %330 = load float, float* %u_r, align 4
  %add262 = fadd float %330, %329
  store float %add262, float* %u_r, align 4
  %331 = load float, float* %dvr, align 4
  %332 = load float, float* %v_r, align 4
  %add263 = fadd float %332, %331
  store float %add263, float* %v_r, align 4
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.257
  %333 = load i32, i32* %ry, align 4
  %inc265 = add nsw i32 %333, 1
  store i32 %inc265, i32* %ry, align 4
  br label %for.cond.244

for.end.266:                                      ; preds = %for.cond.244
  br label %if.end.267

if.end.267:                                       ; preds = %for.end.266, %for.end.241
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.end.188
  %334 = load i32*, i32** %l_edge, align 8
  %335 = bitcast i32* %334 to i8*
  call void @g_free(i8* %335)
  %336 = load i32*, i32** %r_edge, align 8
  %337 = bitcast i32* %336 to i8*
  call void @g_free(i8* %337)
  br label %return

return:                                           ; preds = %if.end.268, %if.then.79, %if.else.26, %if.else.14, %if.else.9
  ret void
}

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_trace_tri_edge(i32* %dest, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #3 {
entry:
  %dest.addr = alloca i32*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %b = alloca i32, align 4
  %dptr = alloca i32*, align 8
  %errorterm = alloca i32, align 4
  store i32* %dest, i32** %dest.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %dx, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %dy, align 4
  %4 = load i32, i32* %dy, align 4
  store i32 %4, i32* %b, align 4
  %5 = load i32*, i32** %dest.addr, align 8
  store i32* %5, i32** %dptr, align 8
  %6 = load i32, i32* %dy, align 4
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.26

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i32*, i32** %dest.addr, align 8
  %cmp2 = icmp ne i32* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.gimp_canvas_transform_preview_trace_tri_edge, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.26

if.end.4:                                         ; preds = %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %8 = load i32, i32* %dx, align 4
  %cmp5 = icmp sge i32 %8, 0
  br i1 %cmp5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %do.end
  store i32 0, i32* %errorterm, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.6
  %9 = load i32, i32* %b, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %b, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end.11

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %x1.addr, align 4
  %11 = load i32*, i32** %dptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %dptr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %dx, align 4
  %13 = load i32, i32* %errorterm, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %errorterm, align 4
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %while.body
  %14 = load i32, i32* %errorterm, align 4
  %15 = load i32, i32* %dy, align 4
  %cmp8 = icmp sgt i32 %14, %15
  br i1 %cmp8, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.cond.7
  %16 = load i32, i32* %x1.addr, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x1.addr, align 4
  %17 = load i32, i32* %dy, align 4
  %18 = load i32, i32* %errorterm, align 4
  %sub10 = sub nsw i32 %18, %17
  store i32 %sub10, i32* %errorterm, align 4
  br label %while.cond.7

while.end:                                        ; preds = %while.cond.7
  br label %while.cond

while.end.11:                                     ; preds = %while.cond
  br label %if.end.26

if.else.12:                                       ; preds = %do.end
  %19 = load i32, i32* %dy, align 4
  store i32 %19, i32* %errorterm, align 4
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.end.22, %if.else.12
  %20 = load i32, i32* %b, align 4
  %dec14 = add nsw i32 %20, -1
  store i32 %dec14, i32* %b, align 4
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %while.body.16, label %while.end.25

while.body.16:                                    ; preds = %while.cond.13
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.19, %while.body.16
  %21 = load i32, i32* %errorterm, align 4
  %22 = load i32, i32* %dy, align 4
  %cmp18 = icmp sgt i32 %21, %22
  br i1 %cmp18, label %while.body.19, label %while.end.22

while.body.19:                                    ; preds = %while.cond.17
  %23 = load i32, i32* %x1.addr, align 4
  %dec20 = add nsw i32 %23, -1
  store i32 %dec20, i32* %x1.addr, align 4
  %24 = load i32, i32* %dy, align 4
  %25 = load i32, i32* %errorterm, align 4
  %sub21 = sub nsw i32 %25, %24
  store i32 %sub21, i32* %errorterm, align 4
  br label %while.cond.17

while.end.22:                                     ; preds = %while.cond.17
  %26 = load i32, i32* %dx, align 4
  %27 = load i32, i32* %errorterm, align 4
  %sub23 = sub nsw i32 %27, %26
  store i32 %sub23, i32* %errorterm, align 4
  %28 = load i32, i32* %x1.addr, align 4
  %29 = load i32*, i32** %dptr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr24, i32** %dptr, align 8
  store i32 %28, i32* %29, align 4
  br label %while.cond.13

while.end.25:                                     ; preds = %while.cond.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.then, %if.else, %while.end.25, %while.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_draw_tri_row_mask(%struct._GimpDrawable* %texture, %struct._cairo* %cr, %struct._cairo_surface* %area, i32 %area_offx, i32 %area_offy, %struct._GimpChannel* %mask, i32 %mask_offx, i32 %mask_offy, i32 %x1, float %u1, float %v1, i32 %x2, float %u2, float %v2, i32 %y, i8 zeroext %opacity) #3 {
entry:
  %texture.addr = alloca %struct._GimpDrawable*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %area.addr = alloca %struct._cairo_surface*, align 8
  %area_offx.addr = alloca i32, align 4
  %area_offy.addr = alloca i32, align 4
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %mask_offx.addr = alloca i32, align 4
  %mask_offy.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %u1.addr = alloca float, align 4
  %v1.addr = alloca float, align 4
  %x2.addr = alloca i32, align 4
  %u2.addr = alloca float, align 4
  %v2.addr = alloca float, align 4
  %y.addr = alloca i32, align 4
  %opacity.addr = alloca i8, align 1
  %tiles = alloca %struct._TileManager*, align 8
  %masktiles = alloca %struct._TileManager*, align 8
  %pptr = alloca i8*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %mu = alloca float, align 4
  %mv = alloca float, align 4
  %du = alloca float, align 4
  %dv = alloca float, align 4
  %dx = alloca i32, align 4
  %pixel = alloca [4 x i8], align 1
  %maskval = alloca i8, align 1
  %cmap = alloca i8*, align 8
  %offset = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %ftmp = alloca float, align 4
  %tmp123 = alloca i64, align 8
  %alpha = alloca i8, align 1
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  %tmp197 = alloca i64, align 8
  %alpha199 = alloca i8, align 1
  %tr227 = alloca i32, align 4
  %tg236 = alloca i32, align 4
  %tb245 = alloca i32, align 4
  %tmp282 = alloca i64, align 8
  %alpha284 = alloca i8, align 1
  %tr301 = alloca i32, align 4
  %tg308 = alloca i32, align 4
  %tb315 = alloca i32, align 4
  %tmp350 = alloca i64, align 8
  %alpha352 = alloca i8, align 1
  %tr372 = alloca i32, align 4
  %tg379 = alloca i32, align 4
  %tb386 = alloca i32, align 4
  %tmp421 = alloca i64, align 8
  %alpha423 = alloca i8, align 1
  %tr440 = alloca i32, align 4
  %tg447 = alloca i32, align 4
  %tb454 = alloca i32, align 4
  %tmp489 = alloca i64, align 8
  %alpha491 = alloca i8, align 1
  %tr511 = alloca i32, align 4
  %tg518 = alloca i32, align 4
  %tb525 = alloca i32, align 4
  store %struct._GimpDrawable* %texture, %struct._GimpDrawable** %texture.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._cairo_surface* %area, %struct._cairo_surface** %area.addr, align 8
  store i32 %area_offx, i32* %area_offx.addr, align 4
  store i32 %area_offy, i32* %area_offy.addr, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %mask_offx, i32* %mask_offx.addr, align 4
  store i32 %mask_offy, i32* %mask_offy.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store float %u1, float* %u1.addr, align 4
  store float %v1, float* %v1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store float %u2, float* %u2.addr, align 4
  store float %v2, float* %v2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8 %opacity, i8* %opacity.addr, align 1
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %3 = bitcast %struct._GimpDrawable* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.1
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row_mask, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %16 = bitcast %struct._GimpChannel* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_channel_get_type() #6
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %do.body.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %do.body.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %cmp43 = icmp ne %struct._cairo_surface* %28, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.42
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call49 = call i32 @cairo_image_surface_get_format(%struct._cairo_surface* %29)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row_mask, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %30 = load i32, i32* %x1.addr, align 4
  %31 = load i32, i32* %x2.addr, align 4
  %cmp55 = icmp sgt i32 %30, %31
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %do.end.54
  %32 = load i32, i32* %x2.addr, align 4
  store i32 %32, i32* %tmp58, align 4
  %33 = load i32, i32* %x1.addr, align 4
  store i32 %33, i32* %x2.addr, align 4
  %34 = load i32, i32* %tmp58, align 4
  store i32 %34, i32* %x1.addr, align 4
  %35 = load float, float* %u2.addr, align 4
  store float %35, float* %ftmp, align 4
  %36 = load float, float* %u1.addr, align 4
  store float %36, float* %u2.addr, align 4
  %37 = load float, float* %ftmp, align 4
  store float %37, float* %u1.addr, align 4
  %38 = load float, float* %v2.addr, align 4
  store float %38, float* %ftmp, align 4
  %39 = load float, float* %v1.addr, align 4
  store float %39, float* %v2.addr, align 4
  %40 = load float, float* %ftmp, align 4
  store float %40, float* %v1.addr, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %do.end.54
  %41 = load float, float* %u1.addr, align 4
  store float %41, float* %u, align 4
  %42 = load float, float* %v1.addr, align 4
  store float %42, float* %v, align 4
  %43 = load float, float* %u2.addr, align 4
  %44 = load float, float* %u1.addr, align 4
  %sub = fsub float %43, %44
  %45 = load i32, i32* %x2.addr, align 4
  %46 = load i32, i32* %x1.addr, align 4
  %sub61 = sub nsw i32 %45, %46
  %conv = sitofp i32 %sub61 to float
  %div = fdiv float %sub, %conv
  store float %div, float* %du, align 4
  %47 = load float, float* %v2.addr, align 4
  %48 = load float, float* %v1.addr, align 4
  %sub62 = fsub float %47, %48
  %49 = load i32, i32* %x2.addr, align 4
  %50 = load i32, i32* %x1.addr, align 4
  %sub63 = sub nsw i32 %49, %50
  %conv64 = sitofp i32 %sub63 to float
  %div65 = fdiv float %sub62, %conv64
  store float %div65, float* %dv, align 4
  %51 = load i32, i32* %x1.addr, align 4
  %52 = load i32, i32* %area_offx.addr, align 4
  %cmp66 = icmp slt i32 %51, %52
  br i1 %cmp66, label %if.then.68, label %if.else.75

if.then.68:                                       ; preds = %if.end.60
  %53 = load float, float* %du, align 4
  %54 = load i32, i32* %area_offx.addr, align 4
  %55 = load i32, i32* %x1.addr, align 4
  %sub69 = sub nsw i32 %54, %55
  %conv70 = sitofp i32 %sub69 to float
  %mul = fmul float %53, %conv70
  %56 = load float, float* %u, align 4
  %add = fadd float %56, %mul
  store float %add, float* %u, align 4
  %57 = load float, float* %dv, align 4
  %58 = load i32, i32* %area_offx.addr, align 4
  %59 = load i32, i32* %x1.addr, align 4
  %sub71 = sub nsw i32 %58, %59
  %conv72 = sitofp i32 %sub71 to float
  %mul73 = fmul float %57, %conv72
  %60 = load float, float* %v, align 4
  %add74 = fadd float %60, %mul73
  store float %add74, float* %v, align 4
  %61 = load i32, i32* %area_offx.addr, align 4
  store i32 %61, i32* %x1.addr, align 4
  br label %if.end.83

if.else.75:                                       ; preds = %if.end.60
  %62 = load i32, i32* %x1.addr, align 4
  %63 = load i32, i32* %area_offx.addr, align 4
  %64 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call76 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %64)
  %add77 = add nsw i32 %63, %call76
  %sub78 = sub nsw i32 %add77, 1
  %cmp79 = icmp sgt i32 %62, %sub78
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.75
  br label %return

if.end.82:                                        ; preds = %if.else.75
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.68
  %65 = load i32, i32* %x2.addr, align 4
  %66 = load i32, i32* %area_offx.addr, align 4
  %cmp84 = icmp slt i32 %65, %66
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.83
  br label %return

if.else.87:                                       ; preds = %if.end.83
  %67 = load i32, i32* %x2.addr, align 4
  %68 = load i32, i32* %area_offx.addr, align 4
  %69 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call88 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %69)
  %add89 = add nsw i32 %68, %call88
  %sub90 = sub nsw i32 %add89, 1
  %cmp91 = icmp sgt i32 %67, %sub90
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %if.else.87
  %70 = load i32, i32* %area_offx.addr, align 4
  %71 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call94 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %71)
  %add95 = add nsw i32 %70, %call94
  %sub96 = sub nsw i32 %add95, 1
  store i32 %sub96, i32* %x2.addr, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %if.else.87
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  %72 = load i32, i32* %x2.addr, align 4
  %73 = load i32, i32* %x1.addr, align 4
  %sub99 = sub nsw i32 %72, %73
  store i32 %sub99, i32* %dx, align 4
  %74 = load i32, i32* %dx, align 4
  %tobool100 = icmp ne i32 %74, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.end.98
  br label %return

if.end.102:                                       ; preds = %if.end.98
  %75 = load float, float* %u, align 4
  %76 = load i32, i32* %mask_offx.addr, align 4
  %conv103 = sitofp i32 %76 to float
  %add104 = fadd float %75, %conv103
  store float %add104, float* %mu, align 4
  %77 = load float, float* %v, align 4
  %78 = load i32, i32* %mask_offy.addr, align 4
  %conv105 = sitofp i32 %78 to float
  %add106 = fadd float %77, %conv105
  store float %add106, float* %mv, align 4
  %79 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %79)
  %80 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call107 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %80)
  %81 = load i32, i32* %y.addr, align 4
  %82 = load i32, i32* %area_offy.addr, align 4
  %sub108 = sub nsw i32 %81, %82
  %83 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call109 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %83)
  %mul110 = mul nsw i32 %sub108, %call109
  %idx.ext = sext i32 %mul110 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call107, i64 %idx.ext
  %84 = load i32, i32* %x1.addr, align 4
  %85 = load i32, i32* %area_offx.addr, align 4
  %sub111 = sub nsw i32 %84, %85
  %mul112 = mul nsw i32 %sub111, 4
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext113
  store i8* %add.ptr114, i8** %pptr, align 8
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call115 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %86)
  store %struct._TileManager* %call115, %struct._TileManager** %tiles, align 8
  %87 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %88 = bitcast %struct._GimpChannel* %87 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_drawable_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call116)
  %89 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpDrawable*
  %call118 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %89)
  store %struct._TileManager* %call118, %struct._TileManager** %masktiles, align 8
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call119 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %90)
  switch i32 %call119, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.190
    i32 2, label %sw.bb.276
    i32 3, label %sw.bb.344
    i32 0, label %sw.bb.415
    i32 1, label %sw.bb.483
  ]

sw.bb:                                            ; preds = %if.end.102
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call120 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %91)
  store i8* %call120, i8** %cmap, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.184, %sw.bb
  %92 = load i32, i32* %dx, align 4
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %dx, align 4
  %tobool121 = icmp ne i32 %92, 0
  br i1 %tobool121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %93 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %94 = load float, float* %u, align 4
  %conv125 = fptosi float %94 to i32
  %95 = load float, float* %v, align 4
  %conv126 = fptosi float %95 to i32
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %93, i32 %conv125, i32 %conv126, i8* %arraydecay)
  %96 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %97 = load float, float* %mu, align 4
  %conv127 = fptosi float %97 to i32
  %98 = load float, float* %mv, align 4
  %conv128 = fptosi float %98 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %96, i32 %conv127, i32 %conv128, i8* %maskval)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %99 = load i8, i8* %arrayidx, align 1
  %conv129 = zext i8 %99 to i32
  %arrayidx130 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %100 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %100 to i32
  %add132 = add nsw i32 %conv129, %conv131
  %arrayidx133 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %101 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %101 to i32
  %add135 = add nsw i32 %add132, %conv134
  store i32 %add135, i32* %offset, align 4
  %102 = load i8, i8* %opacity.addr, align 1
  %conv136 = zext i8 %102 to i32
  %103 = load i8, i8* %maskval, align 1
  %conv137 = zext i8 %103 to i32
  %mul138 = mul nsw i32 %conv136, %conv137
  %add139 = add nsw i32 %mul138, 128
  %conv140 = sext i32 %add139 to i64
  store i64 %conv140, i64* %tmp123, align 8
  %104 = load i64, i64* %tmp123, align 8
  %shr = lshr i64 %104, 8
  %105 = load i64, i64* %tmp123, align 8
  %add141 = add i64 %shr, %105
  %shr142 = lshr i64 %add141, 8
  %conv143 = trunc i64 %shr142 to i8
  store i8 %conv143, i8* %alpha, align 1
  br label %do.body.144

do.body.144:                                      ; preds = %while.body
  %106 = load i8, i8* %alpha, align 1
  %conv146 = zext i8 %106 to i32
  %107 = load i32, i32* %offset, align 4
  %add147 = add nsw i32 %107, 0
  %idxprom = sext i32 %add147 to i64
  %108 = load i8*, i8** %cmap, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %108, i64 %idxprom
  %109 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %109 to i32
  %mul150 = mul nsw i32 %conv146, %conv149
  %add151 = add nsw i32 %mul150, 128
  store i32 %add151, i32* %tr, align 4
  %110 = load i8, i8* %alpha, align 1
  %conv153 = zext i8 %110 to i32
  %111 = load i32, i32* %offset, align 4
  %add154 = add nsw i32 %111, 1
  %idxprom155 = sext i32 %add154 to i64
  %112 = load i8*, i8** %cmap, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %112, i64 %idxprom155
  %113 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %113 to i32
  %mul158 = mul nsw i32 %conv153, %conv157
  %add159 = add nsw i32 %mul158, 128
  store i32 %add159, i32* %tg, align 4
  %114 = load i8, i8* %alpha, align 1
  %conv161 = zext i8 %114 to i32
  %115 = load i32, i32* %offset, align 4
  %add162 = add nsw i32 %115, 2
  %idxprom163 = sext i32 %add162 to i64
  %116 = load i8*, i8** %cmap, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %116, i64 %idxprom163
  %117 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %117 to i32
  %mul166 = mul nsw i32 %conv161, %conv165
  %add167 = add nsw i32 %mul166, 128
  store i32 %add167, i32* %tb, align 4
  %118 = load i32, i32* %tb, align 4
  %shr168 = lshr i32 %118, 8
  %119 = load i32, i32* %tb, align 4
  %add169 = add i32 %shr168, %119
  %shr170 = lshr i32 %add169, 8
  %conv171 = trunc i32 %shr170 to i8
  %120 = load i8*, i8** %pptr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %conv171, i8* %arrayidx172, align 1
  %121 = load i32, i32* %tg, align 4
  %shr173 = lshr i32 %121, 8
  %122 = load i32, i32* %tg, align 4
  %add174 = add i32 %shr173, %122
  %shr175 = lshr i32 %add174, 8
  %conv176 = trunc i32 %shr175 to i8
  %123 = load i8*, i8** %pptr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 %conv176, i8* %arrayidx177, align 1
  %124 = load i32, i32* %tr, align 4
  %shr178 = lshr i32 %124, 8
  %125 = load i32, i32* %tr, align 4
  %add179 = add i32 %shr178, %125
  %shr180 = lshr i32 %add179, 8
  %conv181 = trunc i32 %shr180 to i8
  %126 = load i8*, i8** %pptr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %126, i64 2
  store i8 %conv181, i8* %arrayidx182, align 1
  %127 = load i8, i8* %alpha, align 1
  %128 = load i8*, i8** %pptr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %128, i64 3
  store i8 %127, i8* %arrayidx183, align 1
  br label %do.end.184

do.end.184:                                       ; preds = %do.body.144
  %129 = load i8*, i8** %pptr, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %129, i64 4
  store i8* %add.ptr185, i8** %pptr, align 8
  %130 = load float, float* %du, align 4
  %131 = load float, float* %u, align 4
  %add186 = fadd float %131, %130
  store float %add186, float* %u, align 4
  %132 = load float, float* %dv, align 4
  %133 = load float, float* %v, align 4
  %add187 = fadd float %133, %132
  store float %add187, float* %v, align 4
  %134 = load float, float* %du, align 4
  %135 = load float, float* %mu, align 4
  %add188 = fadd float %135, %134
  store float %add188, float* %mu, align 4
  %136 = load float, float* %dv, align 4
  %137 = load float, float* %mv, align 4
  %add189 = fadd float %137, %136
  store float %add189, float* %mv, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.190:                                        ; preds = %if.end.102
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call191 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %138)
  store i8* %call191, i8** %cmap, align 8
  br label %while.cond.192

while.cond.192:                                   ; preds = %do.end.269, %sw.bb.190
  %139 = load i32, i32* %dx, align 4
  %dec193 = add nsw i32 %139, -1
  store i32 %dec193, i32* %dx, align 4
  %tobool194 = icmp ne i32 %139, 0
  br i1 %tobool194, label %while.body.195, label %while.end.275

while.body.195:                                   ; preds = %while.cond.192
  %140 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %141 = load float, float* %u, align 4
  %conv200 = fptosi float %141 to i32
  %142 = load float, float* %v, align 4
  %conv201 = fptosi float %142 to i32
  %arraydecay202 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %140, i32 %conv200, i32 %conv201, i8* %arraydecay202)
  %143 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %144 = load float, float* %mu, align 4
  %conv203 = fptosi float %144 to i32
  %145 = load float, float* %mv, align 4
  %conv204 = fptosi float %145 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %143, i32 %conv203, i32 %conv204, i8* %maskval)
  %arrayidx205 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %146 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %146 to i32
  %arrayidx207 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %147 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %147 to i32
  %add209 = add nsw i32 %conv206, %conv208
  %arrayidx210 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %148 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %148 to i32
  %add212 = add nsw i32 %add209, %conv211
  store i32 %add212, i32* %offset, align 4
  %149 = load i8, i8* %opacity.addr, align 1
  %conv213 = zext i8 %149 to i32
  %150 = load i8, i8* %maskval, align 1
  %conv214 = zext i8 %150 to i32
  %mul215 = mul nsw i32 %conv213, %conv214
  %arrayidx216 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %151 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %151 to i32
  %mul218 = mul nsw i32 %mul215, %conv217
  %add219 = add nsw i32 %mul218, 32603
  %conv220 = sext i32 %add219 to i64
  store i64 %conv220, i64* %tmp197, align 8
  %152 = load i64, i64* %tmp197, align 8
  %shr221 = lshr i64 %152, 7
  %153 = load i64, i64* %tmp197, align 8
  %add222 = add i64 %shr221, %153
  %shr223 = lshr i64 %add222, 16
  %conv224 = trunc i64 %shr223 to i8
  store i8 %conv224, i8* %alpha199, align 1
  br label %do.body.225

do.body.225:                                      ; preds = %while.body.195
  %154 = load i8, i8* %alpha199, align 1
  %conv228 = zext i8 %154 to i32
  %155 = load i32, i32* %offset, align 4
  %add229 = add nsw i32 %155, 0
  %idxprom230 = sext i32 %add229 to i64
  %156 = load i8*, i8** %cmap, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %156, i64 %idxprom230
  %157 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %157 to i32
  %mul233 = mul nsw i32 %conv228, %conv232
  %add234 = add nsw i32 %mul233, 128
  store i32 %add234, i32* %tr227, align 4
  %158 = load i8, i8* %alpha199, align 1
  %conv237 = zext i8 %158 to i32
  %159 = load i32, i32* %offset, align 4
  %add238 = add nsw i32 %159, 1
  %idxprom239 = sext i32 %add238 to i64
  %160 = load i8*, i8** %cmap, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %160, i64 %idxprom239
  %161 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %161 to i32
  %mul242 = mul nsw i32 %conv237, %conv241
  %add243 = add nsw i32 %mul242, 128
  store i32 %add243, i32* %tg236, align 4
  %162 = load i8, i8* %alpha199, align 1
  %conv246 = zext i8 %162 to i32
  %163 = load i32, i32* %offset, align 4
  %add247 = add nsw i32 %163, 2
  %idxprom248 = sext i32 %add247 to i64
  %164 = load i8*, i8** %cmap, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %164, i64 %idxprom248
  %165 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %165 to i32
  %mul251 = mul nsw i32 %conv246, %conv250
  %add252 = add nsw i32 %mul251, 128
  store i32 %add252, i32* %tb245, align 4
  %166 = load i32, i32* %tb245, align 4
  %shr253 = lshr i32 %166, 8
  %167 = load i32, i32* %tb245, align 4
  %add254 = add i32 %shr253, %167
  %shr255 = lshr i32 %add254, 8
  %conv256 = trunc i32 %shr255 to i8
  %168 = load i8*, i8** %pptr, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 %conv256, i8* %arrayidx257, align 1
  %169 = load i32, i32* %tg236, align 4
  %shr258 = lshr i32 %169, 8
  %170 = load i32, i32* %tg236, align 4
  %add259 = add i32 %shr258, %170
  %shr260 = lshr i32 %add259, 8
  %conv261 = trunc i32 %shr260 to i8
  %171 = load i8*, i8** %pptr, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %conv261, i8* %arrayidx262, align 1
  %172 = load i32, i32* %tr227, align 4
  %shr263 = lshr i32 %172, 8
  %173 = load i32, i32* %tr227, align 4
  %add264 = add i32 %shr263, %173
  %shr265 = lshr i32 %add264, 8
  %conv266 = trunc i32 %shr265 to i8
  %174 = load i8*, i8** %pptr, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %174, i64 2
  store i8 %conv266, i8* %arrayidx267, align 1
  %175 = load i8, i8* %alpha199, align 1
  %176 = load i8*, i8** %pptr, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %176, i64 3
  store i8 %175, i8* %arrayidx268, align 1
  br label %do.end.269

do.end.269:                                       ; preds = %do.body.225
  %177 = load i8*, i8** %pptr, align 8
  %add.ptr270 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %add.ptr270, i8** %pptr, align 8
  %178 = load float, float* %du, align 4
  %179 = load float, float* %u, align 4
  %add271 = fadd float %179, %178
  store float %add271, float* %u, align 4
  %180 = load float, float* %dv, align 4
  %181 = load float, float* %v, align 4
  %add272 = fadd float %181, %180
  store float %add272, float* %v, align 4
  %182 = load float, float* %du, align 4
  %183 = load float, float* %mu, align 4
  %add273 = fadd float %183, %182
  store float %add273, float* %mu, align 4
  %184 = load float, float* %dv, align 4
  %185 = load float, float* %mv, align 4
  %add274 = fadd float %185, %184
  store float %add274, float* %mv, align 4
  br label %while.cond.192

while.end.275:                                    ; preds = %while.cond.192
  br label %sw.epilog

sw.bb.276:                                        ; preds = %if.end.102
  br label %while.cond.277

while.cond.277:                                   ; preds = %do.end.337, %sw.bb.276
  %186 = load i32, i32* %dx, align 4
  %dec278 = add nsw i32 %186, -1
  store i32 %dec278, i32* %dx, align 4
  %tobool279 = icmp ne i32 %186, 0
  br i1 %tobool279, label %while.body.280, label %while.end.343

while.body.280:                                   ; preds = %while.cond.277
  %187 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %188 = load float, float* %u, align 4
  %conv285 = fptosi float %188 to i32
  %189 = load float, float* %v, align 4
  %conv286 = fptosi float %189 to i32
  %arraydecay287 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %187, i32 %conv285, i32 %conv286, i8* %arraydecay287)
  %190 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %191 = load float, float* %mu, align 4
  %conv288 = fptosi float %191 to i32
  %192 = load float, float* %mv, align 4
  %conv289 = fptosi float %192 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %190, i32 %conv288, i32 %conv289, i8* %maskval)
  %193 = load i8, i8* %opacity.addr, align 1
  %conv290 = zext i8 %193 to i32
  %194 = load i8, i8* %maskval, align 1
  %conv291 = zext i8 %194 to i32
  %mul292 = mul nsw i32 %conv290, %conv291
  %add293 = add nsw i32 %mul292, 128
  %conv294 = sext i32 %add293 to i64
  store i64 %conv294, i64* %tmp282, align 8
  %195 = load i64, i64* %tmp282, align 8
  %shr295 = lshr i64 %195, 8
  %196 = load i64, i64* %tmp282, align 8
  %add296 = add i64 %shr295, %196
  %shr297 = lshr i64 %add296, 8
  %conv298 = trunc i64 %shr297 to i8
  store i8 %conv298, i8* %alpha284, align 1
  br label %do.body.299

do.body.299:                                      ; preds = %while.body.280
  %197 = load i8, i8* %alpha284, align 1
  %conv302 = zext i8 %197 to i32
  %arrayidx303 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %198 = load i8, i8* %arrayidx303, align 1
  %conv304 = zext i8 %198 to i32
  %mul305 = mul nsw i32 %conv302, %conv304
  %add306 = add nsw i32 %mul305, 128
  store i32 %add306, i32* %tr301, align 4
  %199 = load i8, i8* %alpha284, align 1
  %conv309 = zext i8 %199 to i32
  %arrayidx310 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %200 = load i8, i8* %arrayidx310, align 1
  %conv311 = zext i8 %200 to i32
  %mul312 = mul nsw i32 %conv309, %conv311
  %add313 = add nsw i32 %mul312, 128
  store i32 %add313, i32* %tg308, align 4
  %201 = load i8, i8* %alpha284, align 1
  %conv316 = zext i8 %201 to i32
  %arrayidx317 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %202 = load i8, i8* %arrayidx317, align 1
  %conv318 = zext i8 %202 to i32
  %mul319 = mul nsw i32 %conv316, %conv318
  %add320 = add nsw i32 %mul319, 128
  store i32 %add320, i32* %tb315, align 4
  %203 = load i32, i32* %tb315, align 4
  %shr321 = lshr i32 %203, 8
  %204 = load i32, i32* %tb315, align 4
  %add322 = add i32 %shr321, %204
  %shr323 = lshr i32 %add322, 8
  %conv324 = trunc i32 %shr323 to i8
  %205 = load i8*, i8** %pptr, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %205, i64 0
  store i8 %conv324, i8* %arrayidx325, align 1
  %206 = load i32, i32* %tg308, align 4
  %shr326 = lshr i32 %206, 8
  %207 = load i32, i32* %tg308, align 4
  %add327 = add i32 %shr326, %207
  %shr328 = lshr i32 %add327, 8
  %conv329 = trunc i32 %shr328 to i8
  %208 = load i8*, i8** %pptr, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %208, i64 1
  store i8 %conv329, i8* %arrayidx330, align 1
  %209 = load i32, i32* %tr301, align 4
  %shr331 = lshr i32 %209, 8
  %210 = load i32, i32* %tr301, align 4
  %add332 = add i32 %shr331, %210
  %shr333 = lshr i32 %add332, 8
  %conv334 = trunc i32 %shr333 to i8
  %211 = load i8*, i8** %pptr, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %211, i64 2
  store i8 %conv334, i8* %arrayidx335, align 1
  %212 = load i8, i8* %alpha284, align 1
  %213 = load i8*, i8** %pptr, align 8
  %arrayidx336 = getelementptr inbounds i8, i8* %213, i64 3
  store i8 %212, i8* %arrayidx336, align 1
  br label %do.end.337

do.end.337:                                       ; preds = %do.body.299
  %214 = load i8*, i8** %pptr, align 8
  %add.ptr338 = getelementptr inbounds i8, i8* %214, i64 4
  store i8* %add.ptr338, i8** %pptr, align 8
  %215 = load float, float* %du, align 4
  %216 = load float, float* %u, align 4
  %add339 = fadd float %216, %215
  store float %add339, float* %u, align 4
  %217 = load float, float* %dv, align 4
  %218 = load float, float* %v, align 4
  %add340 = fadd float %218, %217
  store float %add340, float* %v, align 4
  %219 = load float, float* %du, align 4
  %220 = load float, float* %mu, align 4
  %add341 = fadd float %220, %219
  store float %add341, float* %mu, align 4
  %221 = load float, float* %dv, align 4
  %222 = load float, float* %mv, align 4
  %add342 = fadd float %222, %221
  store float %add342, float* %mv, align 4
  br label %while.cond.277

while.end.343:                                    ; preds = %while.cond.277
  br label %sw.epilog

sw.bb.344:                                        ; preds = %if.end.102
  br label %while.cond.345

while.cond.345:                                   ; preds = %do.end.408, %sw.bb.344
  %223 = load i32, i32* %dx, align 4
  %dec346 = add nsw i32 %223, -1
  store i32 %dec346, i32* %dx, align 4
  %tobool347 = icmp ne i32 %223, 0
  br i1 %tobool347, label %while.body.348, label %while.end.414

while.body.348:                                   ; preds = %while.cond.345
  %224 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %225 = load float, float* %u, align 4
  %conv353 = fptosi float %225 to i32
  %226 = load float, float* %v, align 4
  %conv354 = fptosi float %226 to i32
  %arraydecay355 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %224, i32 %conv353, i32 %conv354, i8* %arraydecay355)
  %227 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %228 = load float, float* %mu, align 4
  %conv356 = fptosi float %228 to i32
  %229 = load float, float* %mv, align 4
  %conv357 = fptosi float %229 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %227, i32 %conv356, i32 %conv357, i8* %maskval)
  %230 = load i8, i8* %opacity.addr, align 1
  %conv358 = zext i8 %230 to i32
  %231 = load i8, i8* %maskval, align 1
  %conv359 = zext i8 %231 to i32
  %mul360 = mul nsw i32 %conv358, %conv359
  %arrayidx361 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %232 = load i8, i8* %arrayidx361, align 1
  %conv362 = zext i8 %232 to i32
  %mul363 = mul nsw i32 %mul360, %conv362
  %add364 = add nsw i32 %mul363, 32603
  %conv365 = sext i32 %add364 to i64
  store i64 %conv365, i64* %tmp350, align 8
  %233 = load i64, i64* %tmp350, align 8
  %shr366 = lshr i64 %233, 7
  %234 = load i64, i64* %tmp350, align 8
  %add367 = add i64 %shr366, %234
  %shr368 = lshr i64 %add367, 16
  %conv369 = trunc i64 %shr368 to i8
  store i8 %conv369, i8* %alpha352, align 1
  br label %do.body.370

do.body.370:                                      ; preds = %while.body.348
  %235 = load i8, i8* %alpha352, align 1
  %conv373 = zext i8 %235 to i32
  %arrayidx374 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %236 = load i8, i8* %arrayidx374, align 1
  %conv375 = zext i8 %236 to i32
  %mul376 = mul nsw i32 %conv373, %conv375
  %add377 = add nsw i32 %mul376, 128
  store i32 %add377, i32* %tr372, align 4
  %237 = load i8, i8* %alpha352, align 1
  %conv380 = zext i8 %237 to i32
  %arrayidx381 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %238 = load i8, i8* %arrayidx381, align 1
  %conv382 = zext i8 %238 to i32
  %mul383 = mul nsw i32 %conv380, %conv382
  %add384 = add nsw i32 %mul383, 128
  store i32 %add384, i32* %tg379, align 4
  %239 = load i8, i8* %alpha352, align 1
  %conv387 = zext i8 %239 to i32
  %arrayidx388 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %240 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %240 to i32
  %mul390 = mul nsw i32 %conv387, %conv389
  %add391 = add nsw i32 %mul390, 128
  store i32 %add391, i32* %tb386, align 4
  %241 = load i32, i32* %tb386, align 4
  %shr392 = lshr i32 %241, 8
  %242 = load i32, i32* %tb386, align 4
  %add393 = add i32 %shr392, %242
  %shr394 = lshr i32 %add393, 8
  %conv395 = trunc i32 %shr394 to i8
  %243 = load i8*, i8** %pptr, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %243, i64 0
  store i8 %conv395, i8* %arrayidx396, align 1
  %244 = load i32, i32* %tg379, align 4
  %shr397 = lshr i32 %244, 8
  %245 = load i32, i32* %tg379, align 4
  %add398 = add i32 %shr397, %245
  %shr399 = lshr i32 %add398, 8
  %conv400 = trunc i32 %shr399 to i8
  %246 = load i8*, i8** %pptr, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %246, i64 1
  store i8 %conv400, i8* %arrayidx401, align 1
  %247 = load i32, i32* %tr372, align 4
  %shr402 = lshr i32 %247, 8
  %248 = load i32, i32* %tr372, align 4
  %add403 = add i32 %shr402, %248
  %shr404 = lshr i32 %add403, 8
  %conv405 = trunc i32 %shr404 to i8
  %249 = load i8*, i8** %pptr, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %249, i64 2
  store i8 %conv405, i8* %arrayidx406, align 1
  %250 = load i8, i8* %alpha352, align 1
  %251 = load i8*, i8** %pptr, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %251, i64 3
  store i8 %250, i8* %arrayidx407, align 1
  br label %do.end.408

do.end.408:                                       ; preds = %do.body.370
  %252 = load i8*, i8** %pptr, align 8
  %add.ptr409 = getelementptr inbounds i8, i8* %252, i64 4
  store i8* %add.ptr409, i8** %pptr, align 8
  %253 = load float, float* %du, align 4
  %254 = load float, float* %u, align 4
  %add410 = fadd float %254, %253
  store float %add410, float* %u, align 4
  %255 = load float, float* %dv, align 4
  %256 = load float, float* %v, align 4
  %add411 = fadd float %256, %255
  store float %add411, float* %v, align 4
  %257 = load float, float* %du, align 4
  %258 = load float, float* %mu, align 4
  %add412 = fadd float %258, %257
  store float %add412, float* %mu, align 4
  %259 = load float, float* %dv, align 4
  %260 = load float, float* %mv, align 4
  %add413 = fadd float %260, %259
  store float %add413, float* %mv, align 4
  br label %while.cond.345

while.end.414:                                    ; preds = %while.cond.345
  br label %sw.epilog

sw.bb.415:                                        ; preds = %if.end.102
  br label %while.cond.416

while.cond.416:                                   ; preds = %do.end.476, %sw.bb.415
  %261 = load i32, i32* %dx, align 4
  %dec417 = add nsw i32 %261, -1
  store i32 %dec417, i32* %dx, align 4
  %tobool418 = icmp ne i32 %261, 0
  br i1 %tobool418, label %while.body.419, label %while.end.482

while.body.419:                                   ; preds = %while.cond.416
  %262 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %263 = load float, float* %u, align 4
  %conv424 = fptosi float %263 to i32
  %264 = load float, float* %v, align 4
  %conv425 = fptosi float %264 to i32
  %arraydecay426 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %262, i32 %conv424, i32 %conv425, i8* %arraydecay426)
  %265 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %266 = load float, float* %mu, align 4
  %conv427 = fptosi float %266 to i32
  %267 = load float, float* %mv, align 4
  %conv428 = fptosi float %267 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %265, i32 %conv427, i32 %conv428, i8* %maskval)
  %268 = load i8, i8* %opacity.addr, align 1
  %conv429 = zext i8 %268 to i32
  %269 = load i8, i8* %maskval, align 1
  %conv430 = zext i8 %269 to i32
  %mul431 = mul nsw i32 %conv429, %conv430
  %add432 = add nsw i32 %mul431, 128
  %conv433 = sext i32 %add432 to i64
  store i64 %conv433, i64* %tmp421, align 8
  %270 = load i64, i64* %tmp421, align 8
  %shr434 = lshr i64 %270, 8
  %271 = load i64, i64* %tmp421, align 8
  %add435 = add i64 %shr434, %271
  %shr436 = lshr i64 %add435, 8
  %conv437 = trunc i64 %shr436 to i8
  store i8 %conv437, i8* %alpha423, align 1
  br label %do.body.438

do.body.438:                                      ; preds = %while.body.419
  %272 = load i8, i8* %alpha423, align 1
  %conv441 = zext i8 %272 to i32
  %arrayidx442 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %273 = load i8, i8* %arrayidx442, align 1
  %conv443 = zext i8 %273 to i32
  %mul444 = mul nsw i32 %conv441, %conv443
  %add445 = add nsw i32 %mul444, 128
  store i32 %add445, i32* %tr440, align 4
  %274 = load i8, i8* %alpha423, align 1
  %conv448 = zext i8 %274 to i32
  %arrayidx449 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %275 = load i8, i8* %arrayidx449, align 1
  %conv450 = zext i8 %275 to i32
  %mul451 = mul nsw i32 %conv448, %conv450
  %add452 = add nsw i32 %mul451, 128
  store i32 %add452, i32* %tg447, align 4
  %276 = load i8, i8* %alpha423, align 1
  %conv455 = zext i8 %276 to i32
  %arrayidx456 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %277 = load i8, i8* %arrayidx456, align 1
  %conv457 = zext i8 %277 to i32
  %mul458 = mul nsw i32 %conv455, %conv457
  %add459 = add nsw i32 %mul458, 128
  store i32 %add459, i32* %tb454, align 4
  %278 = load i32, i32* %tb454, align 4
  %shr460 = lshr i32 %278, 8
  %279 = load i32, i32* %tb454, align 4
  %add461 = add i32 %shr460, %279
  %shr462 = lshr i32 %add461, 8
  %conv463 = trunc i32 %shr462 to i8
  %280 = load i8*, i8** %pptr, align 8
  %arrayidx464 = getelementptr inbounds i8, i8* %280, i64 0
  store i8 %conv463, i8* %arrayidx464, align 1
  %281 = load i32, i32* %tg447, align 4
  %shr465 = lshr i32 %281, 8
  %282 = load i32, i32* %tg447, align 4
  %add466 = add i32 %shr465, %282
  %shr467 = lshr i32 %add466, 8
  %conv468 = trunc i32 %shr467 to i8
  %283 = load i8*, i8** %pptr, align 8
  %arrayidx469 = getelementptr inbounds i8, i8* %283, i64 1
  store i8 %conv468, i8* %arrayidx469, align 1
  %284 = load i32, i32* %tr440, align 4
  %shr470 = lshr i32 %284, 8
  %285 = load i32, i32* %tr440, align 4
  %add471 = add i32 %shr470, %285
  %shr472 = lshr i32 %add471, 8
  %conv473 = trunc i32 %shr472 to i8
  %286 = load i8*, i8** %pptr, align 8
  %arrayidx474 = getelementptr inbounds i8, i8* %286, i64 2
  store i8 %conv473, i8* %arrayidx474, align 1
  %287 = load i8, i8* %alpha423, align 1
  %288 = load i8*, i8** %pptr, align 8
  %arrayidx475 = getelementptr inbounds i8, i8* %288, i64 3
  store i8 %287, i8* %arrayidx475, align 1
  br label %do.end.476

do.end.476:                                       ; preds = %do.body.438
  %289 = load i8*, i8** %pptr, align 8
  %add.ptr477 = getelementptr inbounds i8, i8* %289, i64 4
  store i8* %add.ptr477, i8** %pptr, align 8
  %290 = load float, float* %du, align 4
  %291 = load float, float* %u, align 4
  %add478 = fadd float %291, %290
  store float %add478, float* %u, align 4
  %292 = load float, float* %dv, align 4
  %293 = load float, float* %v, align 4
  %add479 = fadd float %293, %292
  store float %add479, float* %v, align 4
  %294 = load float, float* %du, align 4
  %295 = load float, float* %mu, align 4
  %add480 = fadd float %295, %294
  store float %add480, float* %mu, align 4
  %296 = load float, float* %dv, align 4
  %297 = load float, float* %mv, align 4
  %add481 = fadd float %297, %296
  store float %add481, float* %mv, align 4
  br label %while.cond.416

while.end.482:                                    ; preds = %while.cond.416
  br label %sw.epilog

sw.bb.483:                                        ; preds = %if.end.102
  br label %while.cond.484

while.cond.484:                                   ; preds = %do.end.547, %sw.bb.483
  %298 = load i32, i32* %dx, align 4
  %dec485 = add nsw i32 %298, -1
  store i32 %dec485, i32* %dx, align 4
  %tobool486 = icmp ne i32 %298, 0
  br i1 %tobool486, label %while.body.487, label %while.end.553

while.body.487:                                   ; preds = %while.cond.484
  %299 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %300 = load float, float* %u, align 4
  %conv492 = fptosi float %300 to i32
  %301 = load float, float* %v, align 4
  %conv493 = fptosi float %301 to i32
  %arraydecay494 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %299, i32 %conv492, i32 %conv493, i8* %arraydecay494)
  %302 = load %struct._TileManager*, %struct._TileManager** %masktiles, align 8
  %303 = load float, float* %mu, align 4
  %conv495 = fptosi float %303 to i32
  %304 = load float, float* %mv, align 4
  %conv496 = fptosi float %304 to i32
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %302, i32 %conv495, i32 %conv496, i8* %maskval)
  %305 = load i8, i8* %opacity.addr, align 1
  %conv497 = zext i8 %305 to i32
  %306 = load i8, i8* %maskval, align 1
  %conv498 = zext i8 %306 to i32
  %mul499 = mul nsw i32 %conv497, %conv498
  %arrayidx500 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %307 = load i8, i8* %arrayidx500, align 1
  %conv501 = zext i8 %307 to i32
  %mul502 = mul nsw i32 %mul499, %conv501
  %add503 = add nsw i32 %mul502, 32603
  %conv504 = sext i32 %add503 to i64
  store i64 %conv504, i64* %tmp489, align 8
  %308 = load i64, i64* %tmp489, align 8
  %shr505 = lshr i64 %308, 7
  %309 = load i64, i64* %tmp489, align 8
  %add506 = add i64 %shr505, %309
  %shr507 = lshr i64 %add506, 16
  %conv508 = trunc i64 %shr507 to i8
  store i8 %conv508, i8* %alpha491, align 1
  br label %do.body.509

do.body.509:                                      ; preds = %while.body.487
  %310 = load i8, i8* %alpha491, align 1
  %conv512 = zext i8 %310 to i32
  %arrayidx513 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %311 = load i8, i8* %arrayidx513, align 1
  %conv514 = zext i8 %311 to i32
  %mul515 = mul nsw i32 %conv512, %conv514
  %add516 = add nsw i32 %mul515, 128
  store i32 %add516, i32* %tr511, align 4
  %312 = load i8, i8* %alpha491, align 1
  %conv519 = zext i8 %312 to i32
  %arrayidx520 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %313 = load i8, i8* %arrayidx520, align 1
  %conv521 = zext i8 %313 to i32
  %mul522 = mul nsw i32 %conv519, %conv521
  %add523 = add nsw i32 %mul522, 128
  store i32 %add523, i32* %tg518, align 4
  %314 = load i8, i8* %alpha491, align 1
  %conv526 = zext i8 %314 to i32
  %arrayidx527 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %315 = load i8, i8* %arrayidx527, align 1
  %conv528 = zext i8 %315 to i32
  %mul529 = mul nsw i32 %conv526, %conv528
  %add530 = add nsw i32 %mul529, 128
  store i32 %add530, i32* %tb525, align 4
  %316 = load i32, i32* %tb525, align 4
  %shr531 = lshr i32 %316, 8
  %317 = load i32, i32* %tb525, align 4
  %add532 = add i32 %shr531, %317
  %shr533 = lshr i32 %add532, 8
  %conv534 = trunc i32 %shr533 to i8
  %318 = load i8*, i8** %pptr, align 8
  %arrayidx535 = getelementptr inbounds i8, i8* %318, i64 0
  store i8 %conv534, i8* %arrayidx535, align 1
  %319 = load i32, i32* %tg518, align 4
  %shr536 = lshr i32 %319, 8
  %320 = load i32, i32* %tg518, align 4
  %add537 = add i32 %shr536, %320
  %shr538 = lshr i32 %add537, 8
  %conv539 = trunc i32 %shr538 to i8
  %321 = load i8*, i8** %pptr, align 8
  %arrayidx540 = getelementptr inbounds i8, i8* %321, i64 1
  store i8 %conv539, i8* %arrayidx540, align 1
  %322 = load i32, i32* %tr511, align 4
  %shr541 = lshr i32 %322, 8
  %323 = load i32, i32* %tr511, align 4
  %add542 = add i32 %shr541, %323
  %shr543 = lshr i32 %add542, 8
  %conv544 = trunc i32 %shr543 to i8
  %324 = load i8*, i8** %pptr, align 8
  %arrayidx545 = getelementptr inbounds i8, i8* %324, i64 2
  store i8 %conv544, i8* %arrayidx545, align 1
  %325 = load i8, i8* %alpha491, align 1
  %326 = load i8*, i8** %pptr, align 8
  %arrayidx546 = getelementptr inbounds i8, i8* %326, i64 3
  store i8 %325, i8* %arrayidx546, align 1
  br label %do.end.547

do.end.547:                                       ; preds = %do.body.509
  %327 = load i8*, i8** %pptr, align 8
  %add.ptr548 = getelementptr inbounds i8, i8* %327, i64 4
  store i8* %add.ptr548, i8** %pptr, align 8
  %328 = load float, float* %du, align 4
  %329 = load float, float* %u, align 4
  %add549 = fadd float %329, %328
  store float %add549, float* %u, align 4
  %330 = load float, float* %dv, align 4
  %331 = load float, float* %v, align 4
  %add550 = fadd float %331, %330
  store float %add550, float* %v, align 4
  %332 = load float, float* %du, align 4
  %333 = load float, float* %mu, align 4
  %add551 = fadd float %333, %332
  store float %add551, float* %mu, align 4
  %334 = load float, float* %dv, align 4
  %335 = load float, float* %mv, align 4
  %add552 = fadd float %335, %334
  store float %add552, float* %mv, align 4
  br label %while.cond.484

while.end.553:                                    ; preds = %while.cond.484
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.102
  br label %return

sw.epilog:                                        ; preds = %while.end.553, %while.end.482, %while.end.414, %while.end.343, %while.end.275, %while.end
  %336 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %336)
  %337 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %338 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %339 = load i32, i32* %area_offx.addr, align 4
  %conv554 = sitofp i32 %339 to double
  %340 = load i32, i32* %area_offy.addr, align 4
  %conv555 = sitofp i32 %340 to double
  call void @cairo_set_source_surface(%struct._cairo* %337, %struct._cairo_surface* %338, double %conv554, double %conv555)
  %341 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %342 = load i32, i32* %x1.addr, align 4
  %conv556 = sitofp i32 %342 to double
  %343 = load i32, i32* %y.addr, align 4
  %conv557 = sitofp i32 %343 to double
  %344 = load i32, i32* %x2.addr, align 4
  %345 = load i32, i32* %x1.addr, align 4
  %sub558 = sub nsw i32 %344, %345
  %conv559 = sitofp i32 %sub558 to double
  call void @cairo_rectangle(%struct._cairo* %341, double %conv556, double %conv557, double %conv559, double 1.000000e+00)
  %346 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %346)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.101, %if.then.86, %if.then.81, %if.else.52, %if.else.45, %if.else.39, %if.else.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_preview_draw_tri_row(%struct._GimpDrawable* %texture, %struct._cairo* %cr, %struct._cairo_surface* %area, i32 %area_offx, i32 %area_offy, i32 %x1, float %u1, float %v1, i32 %x2, float %u2, float %v2, i32 %y, i8 zeroext %opacity) #3 {
entry:
  %texture.addr = alloca %struct._GimpDrawable*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %area.addr = alloca %struct._cairo_surface*, align 8
  %area_offx.addr = alloca i32, align 4
  %area_offy.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %u1.addr = alloca float, align 4
  %v1.addr = alloca float, align 4
  %x2.addr = alloca i32, align 4
  %u2.addr = alloca float, align 4
  %v2.addr = alloca float, align 4
  %y.addr = alloca i32, align 4
  %opacity.addr = alloca i8, align 1
  %tiles = alloca %struct._TileManager*, align 8
  %pptr = alloca i8*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %du = alloca float, align 4
  %dv = alloca float, align 4
  %dx = alloca i32, align 4
  %pixel = alloca [4 x i8], align 1
  %cmap = alloca i8*, align 8
  %offset = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %ftmp = alloca float, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  %tmp146 = alloca i64, align 8
  %alpha = alloca i8, align 1
  %tr171 = alloca i32, align 4
  %tg180 = alloca i32, align 4
  %tb189 = alloca i32, align 4
  %tr228 = alloca i32, align 4
  %tg235 = alloca i32, align 4
  %tb242 = alloca i32, align 4
  %tmp275 = alloca i64, align 8
  %alpha277 = alloca i8, align 1
  %tr293 = alloca i32, align 4
  %tg300 = alloca i32, align 4
  %tb307 = alloca i32, align 4
  %tr344 = alloca i32, align 4
  %tg351 = alloca i32, align 4
  %tb358 = alloca i32, align 4
  %tmp391 = alloca i64, align 8
  %alpha393 = alloca i8, align 1
  %tr409 = alloca i32, align 4
  %tg416 = alloca i32, align 4
  %tb423 = alloca i32, align 4
  store %struct._GimpDrawable* %texture, %struct._GimpDrawable** %texture.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._cairo_surface* %area, %struct._cairo_surface** %area.addr, align 8
  store i32 %area_offx, i32* %area_offx.addr, align 4
  store i32 %area_offy, i32* %area_offy.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store float %u1, float* %u1.addr, align 4
  store float %v1, float* %v1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store float %u2, float* %u2.addr, align 4
  store float %v2, float* %v2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8 %opacity, i8* %opacity.addr, align 1
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %3 = bitcast %struct._GimpDrawable* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.1
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %15 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %cmp15 = icmp ne %struct._cairo_surface* %15, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call21 = call i32 @cairo_image_surface_get_format(%struct._cairo_surface* %16)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.20
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_canvas_transform_preview_draw_tri_row, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %17 = load i32, i32* %x1.addr, align 4
  %18 = load i32, i32* %x2.addr, align 4
  %cmp27 = icmp sgt i32 %17, %18
  br i1 %cmp27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %do.end.26
  %19 = load i32, i32* %x2.addr, align 4
  store i32 %19, i32* %tmp30, align 4
  %20 = load i32, i32* %x1.addr, align 4
  store i32 %20, i32* %x2.addr, align 4
  %21 = load i32, i32* %tmp30, align 4
  store i32 %21, i32* %x1.addr, align 4
  %22 = load float, float* %u2.addr, align 4
  store float %22, float* %ftmp, align 4
  %23 = load float, float* %u1.addr, align 4
  store float %23, float* %u2.addr, align 4
  %24 = load float, float* %ftmp, align 4
  store float %24, float* %u1.addr, align 4
  %25 = load float, float* %v2.addr, align 4
  store float %25, float* %ftmp, align 4
  %26 = load float, float* %v1.addr, align 4
  store float %26, float* %v2.addr, align 4
  %27 = load float, float* %ftmp, align 4
  store float %27, float* %v1.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %do.end.26
  %28 = load float, float* %u1.addr, align 4
  store float %28, float* %u, align 4
  %29 = load float, float* %v1.addr, align 4
  store float %29, float* %v, align 4
  %30 = load float, float* %u2.addr, align 4
  %31 = load float, float* %u1.addr, align 4
  %sub = fsub float %30, %31
  %32 = load i32, i32* %x2.addr, align 4
  %33 = load i32, i32* %x1.addr, align 4
  %sub33 = sub nsw i32 %32, %33
  %conv = sitofp i32 %sub33 to float
  %div = fdiv float %sub, %conv
  store float %div, float* %du, align 4
  %34 = load float, float* %v2.addr, align 4
  %35 = load float, float* %v1.addr, align 4
  %sub34 = fsub float %34, %35
  %36 = load i32, i32* %x2.addr, align 4
  %37 = load i32, i32* %x1.addr, align 4
  %sub35 = sub nsw i32 %36, %37
  %conv36 = sitofp i32 %sub35 to float
  %div37 = fdiv float %sub34, %conv36
  store float %div37, float* %dv, align 4
  %38 = load i32, i32* %x1.addr, align 4
  %39 = load i32, i32* %area_offx.addr, align 4
  %cmp38 = icmp slt i32 %38, %39
  br i1 %cmp38, label %if.then.40, label %if.else.47

if.then.40:                                       ; preds = %if.end.32
  %40 = load float, float* %du, align 4
  %41 = load i32, i32* %area_offx.addr, align 4
  %42 = load i32, i32* %x1.addr, align 4
  %sub41 = sub nsw i32 %41, %42
  %conv42 = sitofp i32 %sub41 to float
  %mul = fmul float %40, %conv42
  %43 = load float, float* %u, align 4
  %add = fadd float %43, %mul
  store float %add, float* %u, align 4
  %44 = load float, float* %dv, align 4
  %45 = load i32, i32* %area_offx.addr, align 4
  %46 = load i32, i32* %x1.addr, align 4
  %sub43 = sub nsw i32 %45, %46
  %conv44 = sitofp i32 %sub43 to float
  %mul45 = fmul float %44, %conv44
  %47 = load float, float* %v, align 4
  %add46 = fadd float %47, %mul45
  store float %add46, float* %v, align 4
  %48 = load i32, i32* %area_offx.addr, align 4
  store i32 %48, i32* %x1.addr, align 4
  br label %if.end.55

if.else.47:                                       ; preds = %if.end.32
  %49 = load i32, i32* %x1.addr, align 4
  %50 = load i32, i32* %area_offx.addr, align 4
  %51 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call48 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %51)
  %add49 = add nsw i32 %50, %call48
  %sub50 = sub nsw i32 %add49, 1
  %cmp51 = icmp sgt i32 %49, %sub50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.47
  br label %return

if.end.54:                                        ; preds = %if.else.47
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.40
  %52 = load i32, i32* %x2.addr, align 4
  %53 = load i32, i32* %area_offx.addr, align 4
  %cmp56 = icmp slt i32 %52, %53
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.end.55
  br label %return

if.else.59:                                       ; preds = %if.end.55
  %54 = load i32, i32* %x2.addr, align 4
  %55 = load i32, i32* %area_offx.addr, align 4
  %56 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call60 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %56)
  %add61 = add nsw i32 %55, %call60
  %sub62 = sub nsw i32 %add61, 1
  %cmp63 = icmp sgt i32 %54, %sub62
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.else.59
  %57 = load i32, i32* %area_offx.addr, align 4
  %58 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call66 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %58)
  %add67 = add nsw i32 %57, %call66
  %sub68 = sub nsw i32 %add67, 1
  store i32 %sub68, i32* %x2.addr, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.else.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  %59 = load i32, i32* %x2.addr, align 4
  %60 = load i32, i32* %x1.addr, align 4
  %sub71 = sub nsw i32 %59, %60
  store i32 %sub71, i32* %dx, align 4
  %61 = load i32, i32* %dx, align 4
  %tobool72 = icmp ne i32 %61, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  br label %return

if.end.74:                                        ; preds = %if.end.70
  %62 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %62)
  %63 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call75 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %63)
  %64 = load i32, i32* %y.addr, align 4
  %65 = load i32, i32* %area_offy.addr, align 4
  %sub76 = sub nsw i32 %64, %65
  %66 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %call77 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %66)
  %mul78 = mul nsw i32 %sub76, %call77
  %idx.ext = sext i32 %mul78 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call75, i64 %idx.ext
  %67 = load i32, i32* %x1.addr, align 4
  %68 = load i32, i32* %area_offx.addr, align 4
  %sub79 = sub nsw i32 %67, %68
  %mul80 = mul nsw i32 %sub79, 4
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext81
  store i8* %add.ptr82, i8** %pptr, align 8
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call83 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %69)
  store %struct._TileManager* %call83, %struct._TileManager** %tiles, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call84 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %70)
  switch i32 %call84, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.139
    i32 2, label %sw.bb.218
    i32 3, label %sw.bb.269
    i32 0, label %sw.bb.334
    i32 1, label %sw.bb.385
  ]

sw.bb:                                            ; preds = %if.end.74
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call85 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %71)
  store i8* %call85, i8** %cmap, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.135, %sw.bb
  %72 = load i32, i32* %dx, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %dx, align 4
  %tobool86 = icmp ne i32 %72, 0
  br i1 %tobool86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %73 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %74 = load float, float* %u, align 4
  %conv87 = fptosi float %74 to i32
  %75 = load float, float* %v, align 4
  %conv88 = fptosi float %75 to i32
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %73, i32 %conv87, i32 %conv88, i8* %arraydecay)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %76 = load i8, i8* %arrayidx, align 1
  %conv89 = zext i8 %76 to i32
  %arrayidx90 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %77 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %77 to i32
  %add92 = add nsw i32 %conv89, %conv91
  %arrayidx93 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %78 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %78 to i32
  %add95 = add nsw i32 %add92, %conv94
  store i32 %add95, i32* %offset, align 4
  br label %do.body.96

do.body.96:                                       ; preds = %while.body
  %79 = load i8, i8* %opacity.addr, align 1
  %conv98 = zext i8 %79 to i32
  %80 = load i32, i32* %offset, align 4
  %add99 = add nsw i32 %80, 0
  %idxprom = sext i32 %add99 to i64
  %81 = load i8*, i8** %cmap, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %81, i64 %idxprom
  %82 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %82 to i32
  %mul102 = mul nsw i32 %conv98, %conv101
  %add103 = add nsw i32 %mul102, 128
  store i32 %add103, i32* %tr, align 4
  %83 = load i8, i8* %opacity.addr, align 1
  %conv105 = zext i8 %83 to i32
  %84 = load i32, i32* %offset, align 4
  %add106 = add nsw i32 %84, 1
  %idxprom107 = sext i32 %add106 to i64
  %85 = load i8*, i8** %cmap, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %85, i64 %idxprom107
  %86 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %86 to i32
  %mul110 = mul nsw i32 %conv105, %conv109
  %add111 = add nsw i32 %mul110, 128
  store i32 %add111, i32* %tg, align 4
  %87 = load i8, i8* %opacity.addr, align 1
  %conv113 = zext i8 %87 to i32
  %88 = load i32, i32* %offset, align 4
  %add114 = add nsw i32 %88, 2
  %idxprom115 = sext i32 %add114 to i64
  %89 = load i8*, i8** %cmap, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %89, i64 %idxprom115
  %90 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %90 to i32
  %mul118 = mul nsw i32 %conv113, %conv117
  %add119 = add nsw i32 %mul118, 128
  store i32 %add119, i32* %tb, align 4
  %91 = load i32, i32* %tb, align 4
  %shr = lshr i32 %91, 8
  %92 = load i32, i32* %tb, align 4
  %add120 = add i32 %shr, %92
  %shr121 = lshr i32 %add120, 8
  %conv122 = trunc i32 %shr121 to i8
  %93 = load i8*, i8** %pptr, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %conv122, i8* %arrayidx123, align 1
  %94 = load i32, i32* %tg, align 4
  %shr124 = lshr i32 %94, 8
  %95 = load i32, i32* %tg, align 4
  %add125 = add i32 %shr124, %95
  %shr126 = lshr i32 %add125, 8
  %conv127 = trunc i32 %shr126 to i8
  %96 = load i8*, i8** %pptr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %conv127, i8* %arrayidx128, align 1
  %97 = load i32, i32* %tr, align 4
  %shr129 = lshr i32 %97, 8
  %98 = load i32, i32* %tr, align 4
  %add130 = add i32 %shr129, %98
  %shr131 = lshr i32 %add130, 8
  %conv132 = trunc i32 %shr131 to i8
  %99 = load i8*, i8** %pptr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %99, i64 2
  store i8 %conv132, i8* %arrayidx133, align 1
  %100 = load i8, i8* %opacity.addr, align 1
  %101 = load i8*, i8** %pptr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %101, i64 3
  store i8 %100, i8* %arrayidx134, align 1
  br label %do.end.135

do.end.135:                                       ; preds = %do.body.96
  %102 = load i8*, i8** %pptr, align 8
  %add.ptr136 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %add.ptr136, i8** %pptr, align 8
  %103 = load float, float* %du, align 4
  %104 = load float, float* %u, align 4
  %add137 = fadd float %104, %103
  store float %add137, float* %u, align 4
  %105 = load float, float* %dv, align 4
  %106 = load float, float* %v, align 4
  %add138 = fadd float %106, %105
  store float %add138, float* %v, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end.74
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %texture.addr, align 8
  %call140 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %107)
  store i8* %call140, i8** %cmap, align 8
  br label %while.cond.141

while.cond.141:                                   ; preds = %do.end.213, %sw.bb.139
  %108 = load i32, i32* %dx, align 4
  %dec142 = add nsw i32 %108, -1
  store i32 %dec142, i32* %dx, align 4
  %tobool143 = icmp ne i32 %108, 0
  br i1 %tobool143, label %while.body.144, label %while.end.217

while.body.144:                                   ; preds = %while.cond.141
  %109 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %110 = load float, float* %u, align 4
  %conv148 = fptosi float %110 to i32
  %111 = load float, float* %v, align 4
  %conv149 = fptosi float %111 to i32
  %arraydecay150 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %109, i32 %conv148, i32 %conv149, i8* %arraydecay150)
  %arrayidx151 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %112 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %112 to i32
  %arrayidx153 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %113 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %113 to i32
  %add155 = add nsw i32 %conv152, %conv154
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %114 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %114 to i32
  %add158 = add nsw i32 %add155, %conv157
  store i32 %add158, i32* %offset, align 4
  %115 = load i8, i8* %opacity.addr, align 1
  %conv159 = zext i8 %115 to i32
  %arrayidx160 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %116 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %116 to i32
  %mul162 = mul nsw i32 %conv159, %conv161
  %add163 = add nsw i32 %mul162, 128
  %conv164 = sext i32 %add163 to i64
  store i64 %conv164, i64* %tmp146, align 8
  %117 = load i64, i64* %tmp146, align 8
  %shr165 = lshr i64 %117, 8
  %118 = load i64, i64* %tmp146, align 8
  %add166 = add i64 %shr165, %118
  %shr167 = lshr i64 %add166, 8
  %conv168 = trunc i64 %shr167 to i8
  store i8 %conv168, i8* %alpha, align 1
  br label %do.body.169

do.body.169:                                      ; preds = %while.body.144
  %119 = load i8, i8* %alpha, align 1
  %conv172 = zext i8 %119 to i32
  %120 = load i32, i32* %offset, align 4
  %add173 = add nsw i32 %120, 0
  %idxprom174 = sext i32 %add173 to i64
  %121 = load i8*, i8** %cmap, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %121, i64 %idxprom174
  %122 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %122 to i32
  %mul177 = mul nsw i32 %conv172, %conv176
  %add178 = add nsw i32 %mul177, 128
  store i32 %add178, i32* %tr171, align 4
  %123 = load i8, i8* %alpha, align 1
  %conv181 = zext i8 %123 to i32
  %124 = load i32, i32* %offset, align 4
  %add182 = add nsw i32 %124, 1
  %idxprom183 = sext i32 %add182 to i64
  %125 = load i8*, i8** %cmap, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %125, i64 %idxprom183
  %126 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %126 to i32
  %mul186 = mul nsw i32 %conv181, %conv185
  %add187 = add nsw i32 %mul186, 128
  store i32 %add187, i32* %tg180, align 4
  %127 = load i8, i8* %alpha, align 1
  %conv190 = zext i8 %127 to i32
  %128 = load i32, i32* %offset, align 4
  %add191 = add nsw i32 %128, 2
  %idxprom192 = sext i32 %add191 to i64
  %129 = load i8*, i8** %cmap, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %129, i64 %idxprom192
  %130 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %130 to i32
  %mul195 = mul nsw i32 %conv190, %conv194
  %add196 = add nsw i32 %mul195, 128
  store i32 %add196, i32* %tb189, align 4
  %131 = load i32, i32* %tb189, align 4
  %shr197 = lshr i32 %131, 8
  %132 = load i32, i32* %tb189, align 4
  %add198 = add i32 %shr197, %132
  %shr199 = lshr i32 %add198, 8
  %conv200 = trunc i32 %shr199 to i8
  %133 = load i8*, i8** %pptr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 %conv200, i8* %arrayidx201, align 1
  %134 = load i32, i32* %tg180, align 4
  %shr202 = lshr i32 %134, 8
  %135 = load i32, i32* %tg180, align 4
  %add203 = add i32 %shr202, %135
  %shr204 = lshr i32 %add203, 8
  %conv205 = trunc i32 %shr204 to i8
  %136 = load i8*, i8** %pptr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %conv205, i8* %arrayidx206, align 1
  %137 = load i32, i32* %tr171, align 4
  %shr207 = lshr i32 %137, 8
  %138 = load i32, i32* %tr171, align 4
  %add208 = add i32 %shr207, %138
  %shr209 = lshr i32 %add208, 8
  %conv210 = trunc i32 %shr209 to i8
  %139 = load i8*, i8** %pptr, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %139, i64 2
  store i8 %conv210, i8* %arrayidx211, align 1
  %140 = load i8, i8* %alpha, align 1
  %141 = load i8*, i8** %pptr, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %141, i64 3
  store i8 %140, i8* %arrayidx212, align 1
  br label %do.end.213

do.end.213:                                       ; preds = %do.body.169
  %142 = load i8*, i8** %pptr, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %add.ptr214, i8** %pptr, align 8
  %143 = load float, float* %du, align 4
  %144 = load float, float* %u, align 4
  %add215 = fadd float %144, %143
  store float %add215, float* %u, align 4
  %145 = load float, float* %dv, align 4
  %146 = load float, float* %v, align 4
  %add216 = fadd float %146, %145
  store float %add216, float* %v, align 4
  br label %while.cond.141

while.end.217:                                    ; preds = %while.cond.141
  br label %sw.epilog

sw.bb.218:                                        ; preds = %if.end.74
  br label %while.cond.219

while.cond.219:                                   ; preds = %do.end.264, %sw.bb.218
  %147 = load i32, i32* %dx, align 4
  %dec220 = add nsw i32 %147, -1
  store i32 %dec220, i32* %dx, align 4
  %tobool221 = icmp ne i32 %147, 0
  br i1 %tobool221, label %while.body.222, label %while.end.268

while.body.222:                                   ; preds = %while.cond.219
  %148 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %149 = load float, float* %u, align 4
  %conv223 = fptosi float %149 to i32
  %150 = load float, float* %v, align 4
  %conv224 = fptosi float %150 to i32
  %arraydecay225 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %148, i32 %conv223, i32 %conv224, i8* %arraydecay225)
  br label %do.body.226

do.body.226:                                      ; preds = %while.body.222
  %151 = load i8, i8* %opacity.addr, align 1
  %conv229 = zext i8 %151 to i32
  %arrayidx230 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %152 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %152 to i32
  %mul232 = mul nsw i32 %conv229, %conv231
  %add233 = add nsw i32 %mul232, 128
  store i32 %add233, i32* %tr228, align 4
  %153 = load i8, i8* %opacity.addr, align 1
  %conv236 = zext i8 %153 to i32
  %arrayidx237 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %154 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %154 to i32
  %mul239 = mul nsw i32 %conv236, %conv238
  %add240 = add nsw i32 %mul239, 128
  store i32 %add240, i32* %tg235, align 4
  %155 = load i8, i8* %opacity.addr, align 1
  %conv243 = zext i8 %155 to i32
  %arrayidx244 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %156 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %156 to i32
  %mul246 = mul nsw i32 %conv243, %conv245
  %add247 = add nsw i32 %mul246, 128
  store i32 %add247, i32* %tb242, align 4
  %157 = load i32, i32* %tb242, align 4
  %shr248 = lshr i32 %157, 8
  %158 = load i32, i32* %tb242, align 4
  %add249 = add i32 %shr248, %158
  %shr250 = lshr i32 %add249, 8
  %conv251 = trunc i32 %shr250 to i8
  %159 = load i8*, i8** %pptr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 %conv251, i8* %arrayidx252, align 1
  %160 = load i32, i32* %tg235, align 4
  %shr253 = lshr i32 %160, 8
  %161 = load i32, i32* %tg235, align 4
  %add254 = add i32 %shr253, %161
  %shr255 = lshr i32 %add254, 8
  %conv256 = trunc i32 %shr255 to i8
  %162 = load i8*, i8** %pptr, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %162, i64 1
  store i8 %conv256, i8* %arrayidx257, align 1
  %163 = load i32, i32* %tr228, align 4
  %shr258 = lshr i32 %163, 8
  %164 = load i32, i32* %tr228, align 4
  %add259 = add i32 %shr258, %164
  %shr260 = lshr i32 %add259, 8
  %conv261 = trunc i32 %shr260 to i8
  %165 = load i8*, i8** %pptr, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %165, i64 2
  store i8 %conv261, i8* %arrayidx262, align 1
  %166 = load i8, i8* %opacity.addr, align 1
  %167 = load i8*, i8** %pptr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %167, i64 3
  store i8 %166, i8* %arrayidx263, align 1
  br label %do.end.264

do.end.264:                                       ; preds = %do.body.226
  %168 = load i8*, i8** %pptr, align 8
  %add.ptr265 = getelementptr inbounds i8, i8* %168, i64 4
  store i8* %add.ptr265, i8** %pptr, align 8
  %169 = load float, float* %du, align 4
  %170 = load float, float* %u, align 4
  %add266 = fadd float %170, %169
  store float %add266, float* %u, align 4
  %171 = load float, float* %dv, align 4
  %172 = load float, float* %v, align 4
  %add267 = fadd float %172, %171
  store float %add267, float* %v, align 4
  br label %while.cond.219

while.end.268:                                    ; preds = %while.cond.219
  br label %sw.epilog

sw.bb.269:                                        ; preds = %if.end.74
  br label %while.cond.270

while.cond.270:                                   ; preds = %do.end.329, %sw.bb.269
  %173 = load i32, i32* %dx, align 4
  %dec271 = add nsw i32 %173, -1
  store i32 %dec271, i32* %dx, align 4
  %tobool272 = icmp ne i32 %173, 0
  br i1 %tobool272, label %while.body.273, label %while.end.333

while.body.273:                                   ; preds = %while.cond.270
  %174 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %175 = load float, float* %u, align 4
  %conv278 = fptosi float %175 to i32
  %176 = load float, float* %v, align 4
  %conv279 = fptosi float %176 to i32
  %arraydecay280 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %174, i32 %conv278, i32 %conv279, i8* %arraydecay280)
  %177 = load i8, i8* %opacity.addr, align 1
  %conv281 = zext i8 %177 to i32
  %arrayidx282 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %178 = load i8, i8* %arrayidx282, align 1
  %conv283 = zext i8 %178 to i32
  %mul284 = mul nsw i32 %conv281, %conv283
  %add285 = add nsw i32 %mul284, 128
  %conv286 = sext i32 %add285 to i64
  store i64 %conv286, i64* %tmp275, align 8
  %179 = load i64, i64* %tmp275, align 8
  %shr287 = lshr i64 %179, 8
  %180 = load i64, i64* %tmp275, align 8
  %add288 = add i64 %shr287, %180
  %shr289 = lshr i64 %add288, 8
  %conv290 = trunc i64 %shr289 to i8
  store i8 %conv290, i8* %alpha277, align 1
  br label %do.body.291

do.body.291:                                      ; preds = %while.body.273
  %181 = load i8, i8* %alpha277, align 1
  %conv294 = zext i8 %181 to i32
  %arrayidx295 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %182 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %182 to i32
  %mul297 = mul nsw i32 %conv294, %conv296
  %add298 = add nsw i32 %mul297, 128
  store i32 %add298, i32* %tr293, align 4
  %183 = load i8, i8* %alpha277, align 1
  %conv301 = zext i8 %183 to i32
  %arrayidx302 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %184 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %184 to i32
  %mul304 = mul nsw i32 %conv301, %conv303
  %add305 = add nsw i32 %mul304, 128
  store i32 %add305, i32* %tg300, align 4
  %185 = load i8, i8* %alpha277, align 1
  %conv308 = zext i8 %185 to i32
  %arrayidx309 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %186 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %186 to i32
  %mul311 = mul nsw i32 %conv308, %conv310
  %add312 = add nsw i32 %mul311, 128
  store i32 %add312, i32* %tb307, align 4
  %187 = load i32, i32* %tb307, align 4
  %shr313 = lshr i32 %187, 8
  %188 = load i32, i32* %tb307, align 4
  %add314 = add i32 %shr313, %188
  %shr315 = lshr i32 %add314, 8
  %conv316 = trunc i32 %shr315 to i8
  %189 = load i8*, i8** %pptr, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %189, i64 0
  store i8 %conv316, i8* %arrayidx317, align 1
  %190 = load i32, i32* %tg300, align 4
  %shr318 = lshr i32 %190, 8
  %191 = load i32, i32* %tg300, align 4
  %add319 = add i32 %shr318, %191
  %shr320 = lshr i32 %add319, 8
  %conv321 = trunc i32 %shr320 to i8
  %192 = load i8*, i8** %pptr, align 8
  %arrayidx322 = getelementptr inbounds i8, i8* %192, i64 1
  store i8 %conv321, i8* %arrayidx322, align 1
  %193 = load i32, i32* %tr293, align 4
  %shr323 = lshr i32 %193, 8
  %194 = load i32, i32* %tr293, align 4
  %add324 = add i32 %shr323, %194
  %shr325 = lshr i32 %add324, 8
  %conv326 = trunc i32 %shr325 to i8
  %195 = load i8*, i8** %pptr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %195, i64 2
  store i8 %conv326, i8* %arrayidx327, align 1
  %196 = load i8, i8* %alpha277, align 1
  %197 = load i8*, i8** %pptr, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %197, i64 3
  store i8 %196, i8* %arrayidx328, align 1
  br label %do.end.329

do.end.329:                                       ; preds = %do.body.291
  %198 = load i8*, i8** %pptr, align 8
  %add.ptr330 = getelementptr inbounds i8, i8* %198, i64 4
  store i8* %add.ptr330, i8** %pptr, align 8
  %199 = load float, float* %du, align 4
  %200 = load float, float* %u, align 4
  %add331 = fadd float %200, %199
  store float %add331, float* %u, align 4
  %201 = load float, float* %dv, align 4
  %202 = load float, float* %v, align 4
  %add332 = fadd float %202, %201
  store float %add332, float* %v, align 4
  br label %while.cond.270

while.end.333:                                    ; preds = %while.cond.270
  br label %sw.epilog

sw.bb.334:                                        ; preds = %if.end.74
  br label %while.cond.335

while.cond.335:                                   ; preds = %do.end.380, %sw.bb.334
  %203 = load i32, i32* %dx, align 4
  %dec336 = add nsw i32 %203, -1
  store i32 %dec336, i32* %dx, align 4
  %tobool337 = icmp ne i32 %203, 0
  br i1 %tobool337, label %while.body.338, label %while.end.384

while.body.338:                                   ; preds = %while.cond.335
  %204 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %205 = load float, float* %u, align 4
  %conv339 = fptosi float %205 to i32
  %206 = load float, float* %v, align 4
  %conv340 = fptosi float %206 to i32
  %arraydecay341 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %204, i32 %conv339, i32 %conv340, i8* %arraydecay341)
  br label %do.body.342

do.body.342:                                      ; preds = %while.body.338
  %207 = load i8, i8* %opacity.addr, align 1
  %conv345 = zext i8 %207 to i32
  %arrayidx346 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %208 = load i8, i8* %arrayidx346, align 1
  %conv347 = zext i8 %208 to i32
  %mul348 = mul nsw i32 %conv345, %conv347
  %add349 = add nsw i32 %mul348, 128
  store i32 %add349, i32* %tr344, align 4
  %209 = load i8, i8* %opacity.addr, align 1
  %conv352 = zext i8 %209 to i32
  %arrayidx353 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %210 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %210 to i32
  %mul355 = mul nsw i32 %conv352, %conv354
  %add356 = add nsw i32 %mul355, 128
  store i32 %add356, i32* %tg351, align 4
  %211 = load i8, i8* %opacity.addr, align 1
  %conv359 = zext i8 %211 to i32
  %arrayidx360 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %212 = load i8, i8* %arrayidx360, align 1
  %conv361 = zext i8 %212 to i32
  %mul362 = mul nsw i32 %conv359, %conv361
  %add363 = add nsw i32 %mul362, 128
  store i32 %add363, i32* %tb358, align 4
  %213 = load i32, i32* %tb358, align 4
  %shr364 = lshr i32 %213, 8
  %214 = load i32, i32* %tb358, align 4
  %add365 = add i32 %shr364, %214
  %shr366 = lshr i32 %add365, 8
  %conv367 = trunc i32 %shr366 to i8
  %215 = load i8*, i8** %pptr, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %215, i64 0
  store i8 %conv367, i8* %arrayidx368, align 1
  %216 = load i32, i32* %tg351, align 4
  %shr369 = lshr i32 %216, 8
  %217 = load i32, i32* %tg351, align 4
  %add370 = add i32 %shr369, %217
  %shr371 = lshr i32 %add370, 8
  %conv372 = trunc i32 %shr371 to i8
  %218 = load i8*, i8** %pptr, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %218, i64 1
  store i8 %conv372, i8* %arrayidx373, align 1
  %219 = load i32, i32* %tr344, align 4
  %shr374 = lshr i32 %219, 8
  %220 = load i32, i32* %tr344, align 4
  %add375 = add i32 %shr374, %220
  %shr376 = lshr i32 %add375, 8
  %conv377 = trunc i32 %shr376 to i8
  %221 = load i8*, i8** %pptr, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %221, i64 2
  store i8 %conv377, i8* %arrayidx378, align 1
  %222 = load i8, i8* %opacity.addr, align 1
  %223 = load i8*, i8** %pptr, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %223, i64 3
  store i8 %222, i8* %arrayidx379, align 1
  br label %do.end.380

do.end.380:                                       ; preds = %do.body.342
  %224 = load i8*, i8** %pptr, align 8
  %add.ptr381 = getelementptr inbounds i8, i8* %224, i64 4
  store i8* %add.ptr381, i8** %pptr, align 8
  %225 = load float, float* %du, align 4
  %226 = load float, float* %u, align 4
  %add382 = fadd float %226, %225
  store float %add382, float* %u, align 4
  %227 = load float, float* %dv, align 4
  %228 = load float, float* %v, align 4
  %add383 = fadd float %228, %227
  store float %add383, float* %v, align 4
  br label %while.cond.335

while.end.384:                                    ; preds = %while.cond.335
  br label %sw.epilog

sw.bb.385:                                        ; preds = %if.end.74
  br label %while.cond.386

while.cond.386:                                   ; preds = %do.end.445, %sw.bb.385
  %229 = load i32, i32* %dx, align 4
  %dec387 = add nsw i32 %229, -1
  store i32 %dec387, i32* %dx, align 4
  %tobool388 = icmp ne i32 %229, 0
  br i1 %tobool388, label %while.body.389, label %while.end.449

while.body.389:                                   ; preds = %while.cond.386
  %230 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %231 = load float, float* %u, align 4
  %conv394 = fptosi float %231 to i32
  %232 = load float, float* %v, align 4
  %conv395 = fptosi float %232 to i32
  %arraydecay396 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %230, i32 %conv394, i32 %conv395, i8* %arraydecay396)
  %233 = load i8, i8* %opacity.addr, align 1
  %conv397 = zext i8 %233 to i32
  %arrayidx398 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %234 = load i8, i8* %arrayidx398, align 1
  %conv399 = zext i8 %234 to i32
  %mul400 = mul nsw i32 %conv397, %conv399
  %add401 = add nsw i32 %mul400, 128
  %conv402 = sext i32 %add401 to i64
  store i64 %conv402, i64* %tmp391, align 8
  %235 = load i64, i64* %tmp391, align 8
  %shr403 = lshr i64 %235, 8
  %236 = load i64, i64* %tmp391, align 8
  %add404 = add i64 %shr403, %236
  %shr405 = lshr i64 %add404, 8
  %conv406 = trunc i64 %shr405 to i8
  store i8 %conv406, i8* %alpha393, align 1
  br label %do.body.407

do.body.407:                                      ; preds = %while.body.389
  %237 = load i8, i8* %alpha393, align 1
  %conv410 = zext i8 %237 to i32
  %arrayidx411 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %238 = load i8, i8* %arrayidx411, align 1
  %conv412 = zext i8 %238 to i32
  %mul413 = mul nsw i32 %conv410, %conv412
  %add414 = add nsw i32 %mul413, 128
  store i32 %add414, i32* %tr409, align 4
  %239 = load i8, i8* %alpha393, align 1
  %conv417 = zext i8 %239 to i32
  %arrayidx418 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %240 = load i8, i8* %arrayidx418, align 1
  %conv419 = zext i8 %240 to i32
  %mul420 = mul nsw i32 %conv417, %conv419
  %add421 = add nsw i32 %mul420, 128
  store i32 %add421, i32* %tg416, align 4
  %241 = load i8, i8* %alpha393, align 1
  %conv424 = zext i8 %241 to i32
  %arrayidx425 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %242 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %242 to i32
  %mul427 = mul nsw i32 %conv424, %conv426
  %add428 = add nsw i32 %mul427, 128
  store i32 %add428, i32* %tb423, align 4
  %243 = load i32, i32* %tb423, align 4
  %shr429 = lshr i32 %243, 8
  %244 = load i32, i32* %tb423, align 4
  %add430 = add i32 %shr429, %244
  %shr431 = lshr i32 %add430, 8
  %conv432 = trunc i32 %shr431 to i8
  %245 = load i8*, i8** %pptr, align 8
  %arrayidx433 = getelementptr inbounds i8, i8* %245, i64 0
  store i8 %conv432, i8* %arrayidx433, align 1
  %246 = load i32, i32* %tg416, align 4
  %shr434 = lshr i32 %246, 8
  %247 = load i32, i32* %tg416, align 4
  %add435 = add i32 %shr434, %247
  %shr436 = lshr i32 %add435, 8
  %conv437 = trunc i32 %shr436 to i8
  %248 = load i8*, i8** %pptr, align 8
  %arrayidx438 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %conv437, i8* %arrayidx438, align 1
  %249 = load i32, i32* %tr409, align 4
  %shr439 = lshr i32 %249, 8
  %250 = load i32, i32* %tr409, align 4
  %add440 = add i32 %shr439, %250
  %shr441 = lshr i32 %add440, 8
  %conv442 = trunc i32 %shr441 to i8
  %251 = load i8*, i8** %pptr, align 8
  %arrayidx443 = getelementptr inbounds i8, i8* %251, i64 2
  store i8 %conv442, i8* %arrayidx443, align 1
  %252 = load i8, i8* %alpha393, align 1
  %253 = load i8*, i8** %pptr, align 8
  %arrayidx444 = getelementptr inbounds i8, i8* %253, i64 3
  store i8 %252, i8* %arrayidx444, align 1
  br label %do.end.445

do.end.445:                                       ; preds = %do.body.407
  %254 = load i8*, i8** %pptr, align 8
  %add.ptr446 = getelementptr inbounds i8, i8* %254, i64 4
  store i8* %add.ptr446, i8** %pptr, align 8
  %255 = load float, float* %du, align 4
  %256 = load float, float* %u, align 4
  %add447 = fadd float %256, %255
  store float %add447, float* %u, align 4
  %257 = load float, float* %dv, align 4
  %258 = load float, float* %v, align 4
  %add448 = fadd float %258, %257
  store float %add448, float* %v, align 4
  br label %while.cond.386

while.end.449:                                    ; preds = %while.cond.386
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.74
  br label %return

sw.epilog:                                        ; preds = %while.end.449, %while.end.384, %while.end.333, %while.end.268, %while.end.217, %while.end
  %259 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %259)
  %260 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %261 = load %struct._cairo_surface*, %struct._cairo_surface** %area.addr, align 8
  %262 = load i32, i32* %area_offx.addr, align 4
  %conv450 = sitofp i32 %262 to double
  %263 = load i32, i32* %area_offy.addr, align 4
  %conv451 = sitofp i32 %263 to double
  call void @cairo_set_source_surface(%struct._cairo* %260, %struct._cairo_surface* %261, double %conv450, double %conv451)
  %264 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %265 = load i32, i32* %x1.addr, align 4
  %conv452 = sitofp i32 %265 to double
  %266 = load i32, i32* %y.addr, align 4
  %conv453 = sitofp i32 %266 to double
  %267 = load i32, i32* %x2.addr, align 4
  %268 = load i32, i32* %x1.addr, align 4
  %sub454 = sub nsw i32 %267, %268
  %conv455 = sitofp i32 %sub454 to double
  call void @cairo_rectangle(%struct._cairo* %264, double %conv452, double %conv453, double %conv455, double 1.000000e+00)
  %269 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %269)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.73, %if.then.58, %if.then.53, %if.else.24, %if.else.17, %if.else.12, %if.then
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare i32 @cairo_image_surface_get_format(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
