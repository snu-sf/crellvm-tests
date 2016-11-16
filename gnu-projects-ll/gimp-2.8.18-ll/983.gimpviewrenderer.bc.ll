; ModuleID = './app/widgets/gimpviewrenderer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererClass = type { %struct._GObjectClass, %struct._GdkPixbuf*, i32, i32, i32, i32, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GimpContext*)*, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GdkPixbuf = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._cairo = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContainer = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_view_renderer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpViewRenderer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_renderer_new = private unnamed_addr constant [23 x i8] c"gimp_view_renderer_new\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"size > 0 && size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"border_width >= 0 && border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@__func__.gimp_view_renderer_new_full = private unnamed_addr constant [28 x i8] c"gimp_view_renderer_new_full\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"width > 0 && width <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"height > 0 && height <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@__func__.gimp_view_renderer_set_context = private unnamed_addr constant [31 x i8] c"gimp_view_renderer_set_context\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"GIMP_IS_VIEW_RENDERER (renderer)\00", align 1
@__func__.gimp_view_renderer_set_viewable = private unnamed_addr constant [32 x i8] c"gimp_view_renderer_set_viewable\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"g_type_is_a (G_TYPE_FROM_INSTANCE (viewable), renderer->viewable_type)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"invalidate-preview\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"size-changed\00", align 1
@__func__.gimp_view_renderer_set_size = private unnamed_addr constant [28 x i8] c"gimp_view_renderer_set_size\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@__func__.gimp_view_renderer_set_size_full = private unnamed_addr constant [33 x i8] c"gimp_view_renderer_set_size_full\00", align 1
@__func__.gimp_view_renderer_set_dot_for_dot = private unnamed_addr constant [35 x i8] c"gimp_view_renderer_set_dot_for_dot\00", align 1
@black_color = internal global %struct._GimpRGB zeroinitializer, align 8
@__func__.gimp_view_renderer_set_border_type = private unnamed_addr constant [35 x i8] c"gimp_view_renderer_set_border_type\00", align 1
@white_color = internal global %struct._GimpRGB zeroinitializer, align 8
@green_color = internal global %struct._GimpRGB zeroinitializer, align 8
@red_color = internal global %struct._GimpRGB zeroinitializer, align 8
@__func__.gimp_view_renderer_set_border_color = private unnamed_addr constant [36 x i8] c"gimp_view_renderer_set_border_color\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_view_renderer_set_background = private unnamed_addr constant [34 x i8] c"gimp_view_renderer_set_background\00", align 1
@__func__.gimp_view_renderer_invalidate = private unnamed_addr constant [30 x i8] c"gimp_view_renderer_invalidate\00", align 1
@__func__.gimp_view_renderer_update = private unnamed_addr constant [26 x i8] c"gimp_view_renderer_update\00", align 1
@renderer_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_view_renderer_update_idle = private unnamed_addr constant [31 x i8] c"gimp_view_renderer_update_idle\00", align 1
@__func__.gimp_view_renderer_remove_idle = private unnamed_addr constant [31 x i8] c"gimp_view_renderer_remove_idle\00", align 1
@__func__.gimp_view_renderer_draw = private unnamed_addr constant [24 x i8] c"gimp_view_renderer_draw\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"%s: renderer->context is NULL\00", align 1
@__func__.gimp_view_renderer_render_temp_buf_simple = private unnamed_addr constant [42 x i8] c"gimp_view_renderer_render_temp_buf_simple\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"temp_buf != NULL\00", align 1
@__func__.gimp_view_renderer_render_stock = private unnamed_addr constant [32 x i8] c"gimp_view_renderer_render_stock\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@gimp_view_renderer_parent_class = internal global i8* null, align 8
@GimpViewRenderer_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@__func__.gimp_view_render_temp_buf_to_surface = private unnamed_addr constant [37 x i8] c"gimp_view_render_temp_buf_to_surface\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"surface != NULL\00", align 1
@gimp_render_check_buf = external global i8*, align 8
@gimp_render_empty_buf = external global i8*, align 8
@gimp_render_white_buf = external global i8*, align 8
@gimp_render_blend_dark_check = external global i8*, align 8
@gimp_render_blend_light_check = external global i8*, align 8
@gimp_render_blend_white = external global i8*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRenderer*)* @gimp_view_renderer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_parent_class, align 8
  %1 = load i32, i32* @GimpViewRenderer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRenderer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererClass*
  call void @gimp_view_renderer_class_init(%struct._GimpViewRendererClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_init(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %1, i32 0, i32 2
  store i64 4, i64* %viewable_type, align 8
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 3
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 4
  store i32 0, i32* %width, align 4
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 5
  store i32 0, i32* %height, align 4
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 6
  store i32 0, i32* %border_width, align 4
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 7
  %bf.load = load i8, i8* %dot_for_dot, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %dot_for_dot, align 4
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 7
  %bf.load1 = load i8, i8* %is_popup, align 4
  %bf.clear2 = and i8 %bf.load1, -3
  store i8 %bf.clear2, i8* %is_popup, align 4
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 8
  store i32 0, i32* %border_type, align 4
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_color = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 9
  %10 = bitcast %struct._GimpRGB* %border_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct._GimpRGB* @black_color to i8*), i64 32, i32 8, i1 false)
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface, align 8
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 11
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %pattern, align 8
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 12
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 13
  store i8* null, i8** %bg_stock_id, align 8
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 14
  store i32 -1, i32* %size, align 4
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 15
  store i32 1, i32* %needs_render, align 4
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 16
  store i32 0, i32* %idle_id, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext* %context, i64 %viewable_type, i32 %size, i32 %border_width, i32 %is_popup) #2 {
entry:
  %retval = alloca %struct._GimpViewRenderer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable_type.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
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
  %call = call i64 @gimp_context_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_renderer_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i64, i64* %viewable_type.addr, align 8
  %call13 = call i64 @gimp_viewable_get_type() #6
  %call14 = call i32 @g_type_is_a(i64 %14, i64 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_renderer_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %15 = load i32, i32* %size.addr, align 4
  %cmp21 = icmp sgt i32 %15, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %do.body.20
  %16 = load i32, i32* %size.addr, align 4
  %cmp23 = icmp sle i32 %16, 2048
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.22, %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_renderer_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %17 = load i32, i32* %border_width.addr, align 4
  %cmp29 = icmp sge i32 %17, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.33

land.lhs.true.30:                                 ; preds = %do.body.28
  %18 = load i32, i32* %border_width.addr, align 4
  %cmp31 = icmp sle i32 %18, 16
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.30
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.30, %do.body.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_view_renderer_new, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i64, i64* %viewable_type.addr, align 8
  %21 = load i32, i32* %is_popup.addr, align 4
  %call36 = call %struct._GimpViewRenderer* @gimp_view_renderer_new_internal(%struct._GimpContext* %19, i64 %20, i32 %21)
  store %struct._GimpViewRenderer* %call36, %struct._GimpViewRenderer** %renderer, align 8
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %23 = load i32, i32* %size.addr, align 4
  %24 = load i32, i32* %border_width.addr, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %22, i32 %23, i32 %24)
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %25)
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  store %struct._GimpViewRenderer* %26, %struct._GimpViewRenderer** %retval
  br label %return

return:                                           ; preds = %do.end.35, %if.else.33, %if.else.25, %if.else.17, %if.else.10
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %retval
  ret %struct._GimpViewRenderer* %27
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpViewRenderer* @gimp_view_renderer_new_internal(%struct._GimpContext* %context, i64 %viewable_type, i32 %is_popup) #2 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable_type.addr = alloca i64, align 8
  %is_popup.addr = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %viewable_type, i64* %viewable_type.addr, align 8
  store i32 %is_popup, i32* %is_popup.addr, align 4
  %0 = load i64, i64* %viewable_type.addr, align 8
  %call = call i64 @gimp_view_renderer_type_from_viewable_type(i64 %0)
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpViewRenderer*
  store %struct._GimpViewRenderer* %1, %struct._GimpViewRenderer** %renderer, align 8
  %2 = load i64, i64* %viewable_type.addr, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable_type2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 2
  store i64 %2, i64* %viewable_type2, align 8
  %4 = load i32, i32* %is_popup.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %is_popup3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 7
  %6 = trunc i32 %cond to i8
  %bf.load = load i8, i8* %is_popup3, align 4
  %bf.value = and i8 %6, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %is_popup3, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool4 = icmp ne %struct._GimpContext* %7, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %8, %struct._GimpContext* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  ret %struct._GimpViewRenderer* %10
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %renderer, i32 %view_size, i32 %border_width) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %view_size.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %view_size.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %view_size.addr, align 4
  %cmp14 = icmp sle i32 %14, 2048
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load i32, i32* %border_width.addr, align 4
  %cmp20 = icmp sge i32 %15, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %16 = load i32, i32* %border_width.addr, align 4
  %cmp22 = icmp sle i32 %16, 16
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %17 = load i32, i32* %view_size.addr, align 4
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 14
  store i32 %17, i32* %size, align 4
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 3
  %20 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool27 = icmp ne %struct._GimpViewable* %20, null
  br i1 %tobool27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %do.end.26
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable29 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 3
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable29, align 8
  %23 = load i32, i32* %view_size.addr, align 4
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %24, i32 0, i32 7
  %bf.load = load i8, i8* %is_popup, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %25, i32 0, i32 7
  %bf.load30 = load i8, i8* %dot_for_dot, align 4
  %bf.clear31 = and i8 %bf.load30, 1
  %bf.cast32 = zext i8 %bf.clear31 to i32
  call void @gimp_viewable_get_preview_size(%struct._GimpViewable* %22, i32 %23, i32 %bf.cast, i32 %bf.cast32, i32* %width, i32* %height)
  br label %if.end.34

if.else.33:                                       ; preds = %do.end.26
  %26 = load i32, i32* %view_size.addr, align 4
  store i32 %26, i32* %width, align 4
  %27 = load i32, i32* %view_size.addr, align 4
  store i32 %27, i32* %height, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.28
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %31 = load i32, i32* %border_width.addr, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %28, i32 %29, i32 %30, i32 %31)
  br label %return

return:                                           ; preds = %if.end.34, %if.else.24, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_view_renderer_remove_idle, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 16
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 16
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 16
  store i32 0, i32* %idle_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpViewRenderer* @gimp_view_renderer_new_full(%struct._GimpContext* %context, i64 %viewable_type, i32 %width, i32 %height, i32 %border_width, i32 %is_popup) #2 {
entry:
  %retval = alloca %struct._GimpViewRenderer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable_type.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %viewable_type, i64* %viewable_type.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
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
  %call = call i64 @gimp_context_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_new_full, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i64, i64* %viewable_type.addr, align 8
  %call13 = call i64 @gimp_viewable_get_type() #6
  %call14 = call i32 @g_type_is_a(i64 %14, i64 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_new_full, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %15 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp sgt i32 %15, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %do.body.20
  %16 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp sle i32 %16, 2048
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.22, %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_new_full, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %17 = load i32, i32* %height.addr, align 4
  %cmp29 = icmp sgt i32 %17, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.33

land.lhs.true.30:                                 ; preds = %do.body.28
  %18 = load i32, i32* %height.addr, align 4
  %cmp31 = icmp sle i32 %18, 2048
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.30
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.30, %do.body.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_new_full, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %19 = load i32, i32* %border_width.addr, align 4
  %cmp37 = icmp sge i32 %19, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %do.body.36
  %20 = load i32, i32* %border_width.addr, align 4
  %cmp39 = icmp sle i32 %20, 16
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.38
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.38, %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_view_renderer_new_full, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load i64, i64* %viewable_type.addr, align 8
  %23 = load i32, i32* %is_popup.addr, align 4
  %call44 = call %struct._GimpViewRenderer* @gimp_view_renderer_new_internal(%struct._GimpContext* %21, i64 %22, i32 %23)
  store %struct._GimpViewRenderer* %call44, %struct._GimpViewRenderer** %renderer, align 8
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  %27 = load i32, i32* %border_width.addr, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %24, i32 %25, i32 %26, i32 %27)
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %28)
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  store %struct._GimpViewRenderer* %29, %struct._GimpViewRenderer** %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.else.41, %if.else.33, %if.else.25, %if.else.17, %if.else.10
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %retval
  ret %struct._GimpViewRenderer* %30
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %renderer, i32 %width, i32 %height, i32 %border_width) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %border_width.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %border_width, i32* %border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_view_renderer_set_size_full, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %width.addr, align 4
  %cmp14 = icmp sle i32 %14, 2048
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_view_renderer_set_size_full, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.54

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp sgt i32 %15, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %16 = load i32, i32* %height.addr, align 4
  %cmp22 = icmp sle i32 %16, 2048
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_view_renderer_set_size_full, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.54

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load i32, i32* %border_width.addr, align 4
  %cmp28 = icmp sge i32 %17, 0
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %do.body.27
  %18 = load i32, i32* %border_width.addr, align 4
  %cmp30 = icmp sle i32 %18, 16
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.29, %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_view_renderer_set_size_full, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.54

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %19 = load i32, i32* %width.addr, align 4
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width35 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 4
  %21 = load i32, i32* %width35, align 4
  %cmp36 = icmp ne i32 %19, %21
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.34
  %22 = load i32, i32* %height.addr, align 4
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height37 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 5
  %24 = load i32, i32* %height37, align 4
  %cmp38 = icmp ne i32 %22, %24
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %border_width.addr, align 4
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width40 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %26, i32 0, i32 6
  %27 = load i32, i32* %border_width40, align 4
  %cmp41 = icmp ne i32 %25, %27
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false, %do.end.34
  %28 = load i32, i32* %width.addr, align 4
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width43 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %29, i32 0, i32 4
  store i32 %28, i32* %width43, align 4
  %30 = load i32, i32* %height.addr, align 4
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height44 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %31, i32 0, i32 5
  store i32 %30, i32* %height44, align 4
  %32 = load i32, i32* %border_width.addr, align 4
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width45 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 6
  store i32 %32, i32* %border_width45, align 4
  %34 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %34, i32 0, i32 10
  %35 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool46 = icmp ne %struct._cairo_surface* %35, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.42
  %36 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface48 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %36, i32 0, i32 10
  %37 = load %struct._cairo_surface*, %struct._cairo_surface** %surface48, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %37)
  %38 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface49 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %38, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.then.42
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %39, i32 0, i32 3
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool51 = icmp ne %struct._GimpViewable* %40, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.16, %if.else.24, %if.else.32, %if.end.53, %lor.lhs.false.39
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %renderer, %struct._GimpContext* %context) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_view_renderer_set_context, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.47

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_view_renderer_set_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.47

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context40 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %28, i32 0, i32 1
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context40, align 8
  %cmp41 = icmp ne %struct._GimpContext* %27, %29
  br i1 %cmp41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %do.end.39
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %31 = bitcast %struct._GimpViewRenderer* %30 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpViewRendererClass*
  %set_context = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %33, i32 0, i32 7
  %34 = load void (%struct._GimpViewRenderer*, %struct._GimpContext*)*, void (%struct._GimpViewRenderer*, %struct._GimpContext*)** %set_context, align 8
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %34(%struct._GimpViewRenderer* %35, %struct._GimpContext* %36)
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 3
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool44 = icmp ne %struct._GimpViewable* %38, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %39)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.9, %if.else.37, %if.end.46, %do.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_view_renderer_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 16
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 16
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 16
  store i32 0, i32* %idle_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %19 = bitcast %struct._GimpViewRenderer* %18 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpViewRendererClass*
  %invalidate = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %21, i32 0, i32 8
  %22 = load void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*)** %invalidate, align 8
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void %22(%struct._GimpViewRenderer* %23)
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %25 = bitcast %struct._GimpViewRenderer* %24 to i8*
  %call18 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* bitcast (i32 (%struct._GimpViewRenderer*)* @gimp_view_renderer_idle_update to i32 (i8*)*), i8* %25, void (i8*)* null)
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id19 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %26, i32 0, i32 16
  store i32 %call18, i32* %idle_id19, align 4
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %renderer, %struct._GimpViewable* %viewable) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.91

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
  %call17 = call i64 @gimp_viewable_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.91

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool40 = icmp ne %struct._GimpViewable* %27, null
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %do.end.39
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type44, align 8
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %32, i32 0, i32 2
  %33 = load i64, i64* %viewable_type, align 8
  %call45 = call i32 @g_type_is_a(i64 %31, i64 %33)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.91

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.end.39
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable52 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %35, i32 0, i32 3
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable52, align 8
  %cmp53 = icmp eq %struct._GimpViewable* %34, %36
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  br label %if.end.91

if.end.55:                                        ; preds = %if.end.51
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 10
  %38 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool56 = icmp ne %struct._cairo_surface* %38, null
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface58 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %39, i32 0, i32 10
  %40 = load %struct._cairo_surface*, %struct._cairo_surface** %surface58, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %40)
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface59 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %41, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  %42 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %42, i32 0, i32 12
  %43 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool61 = icmp ne %struct._GdkPixbuf* %43, null
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %44 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf63 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %44, i32 0, i32 12
  %45 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf63, align 8
  %46 = bitcast %struct._GdkPixbuf* %45 to i8*
  call void @g_object_unref(i8* %46)
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf64 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %47, i32 0, i32 12
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  %48 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable66 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %48, i32 0, i32 3
  %49 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable66, align 8
  %tobool67 = icmp ne %struct._GimpViewable* %49, null
  br i1 %tobool67, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %if.end.65
  %50 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable69 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %50, i32 0, i32 3
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable69, align 8
  %52 = bitcast %struct._GimpViewable* %51 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %54 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %55 = bitcast %struct._GimpViewRenderer* %54 to i8*
  call void @g_object_weak_unref(%struct._GObject* %53, void (i8*, %struct._GObject*)* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpViewable*)* @gimp_view_renderer_weak_notify to void (i8*, %struct._GObject*)*), i8* %55)
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable71 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %56, i32 0, i32 3
  %57 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable71, align 8
  %58 = bitcast %struct._GimpViewable* %57 to i8*
  %59 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %60 = bitcast %struct._GimpViewRenderer* %59 to i8*
  %call72 = call i32 @g_signal_handlers_disconnect_matched(i8* %58, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpViewRenderer*)* @gimp_view_renderer_invalidate to i8*), i8* %60)
  %61 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable73 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %61, i32 0, i32 3
  %62 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable73, align 8
  %63 = bitcast %struct._GimpViewable* %62 to i8*
  %64 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %65 = bitcast %struct._GimpViewRenderer* %64 to i8*
  %call74 = call i32 @g_signal_handlers_disconnect_matched(i8* %63, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpViewable*)* @gimp_view_renderer_size_changed to i8*), i8* %65)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.68, %if.end.65
  %66 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %67 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable76 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %67, i32 0, i32 3
  store %struct._GimpViewable* %66, %struct._GimpViewable** %viewable76, align 8
  %68 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable77 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %68, i32 0, i32 3
  %69 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable77, align 8
  %tobool78 = icmp ne %struct._GimpViewable* %69, null
  br i1 %tobool78, label %if.then.79, label %if.else.90

if.then.79:                                       ; preds = %if.end.75
  %70 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable80 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %70, i32 0, i32 3
  %71 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable80, align 8
  %72 = bitcast %struct._GimpViewable* %71 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %74 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %75 = bitcast %struct._GimpViewRenderer* %74 to i8*
  call void @g_object_weak_ref(%struct._GObject* %73, void (i8*, %struct._GObject*)* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpViewable*)* @gimp_view_renderer_weak_notify to void (i8*, %struct._GObject*)*), i8* %75)
  %76 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable82 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %76, i32 0, i32 3
  %77 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable82, align 8
  %78 = bitcast %struct._GimpViewable* %77 to i8*
  %79 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %80 = bitcast %struct._GimpViewRenderer* %79 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*)* @gimp_view_renderer_invalidate to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 2)
  %81 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable84 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %81, i32 0, i32 3
  %82 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable84, align 8
  %83 = bitcast %struct._GimpViewable* %82 to i8*
  %84 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %85 = bitcast %struct._GimpViewRenderer* %84 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpViewable*)* @gimp_view_renderer_size_changed to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  %86 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %86, i32 0, i32 14
  %87 = load i32, i32* %size, align 4
  %cmp86 = icmp ne i32 %87, -1
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.79
  %88 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %89 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size88 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %89, i32 0, i32 14
  %90 = load i32, i32* %size88, align 4
  %91 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %91, i32 0, i32 6
  %92 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %88, i32 %90, i32 %92)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.then.79
  %93 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %93)
  br label %if.end.91

if.else.90:                                       ; preds = %if.end.75
  %94 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_update_idle(%struct._GimpViewRenderer* %94)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.9, %if.else.37, %if.else.48, %if.then.54, %if.else.90, %if.end.89
  ret void
}

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @g_object_unref(i8*) #1

declare void @g_object_weak_unref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_weak_notify(%struct._GimpViewRenderer* %renderer, %struct._GimpViewable* %viewable) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 3
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable1, align 8
  %1 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_update_idle(%struct._GimpViewRenderer* %1)
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_size_changed(%struct._GimpViewRenderer* %renderer, %struct._GimpViewable* %viewable) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 14
  %1 = load i32, i32* %size, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 14
  %4 = load i32, i32* %size1, align 4
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 6
  %6 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %2, i32 %4, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %7)
  ret void
}

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_update_idle(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_view_renderer_update_idle, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 16
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 16
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %18 = bitcast %struct._GimpViewRenderer* %17 to i8*
  %call16 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* bitcast (i32 (%struct._GimpViewRenderer*)* @gimp_view_renderer_idle_update to i32 (i8*)*), i8* %18, void (i8*)* null)
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 16
  store i32 %call16, i32* %idle_id17, align 4
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

declare void @gimp_viewable_get_preview_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_dot_for_dot(%struct._GimpViewRenderer* %renderer, i32 %dot_for_dot) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %dot_for_dot.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_view_renderer_set_dot_for_dot, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %dot_for_dot.addr, align 4
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot11 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 7
  %bf.load = load i8, i8* %dot_for_dot11, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp12 = icmp ne i32 %13, %bf.cast
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.end
  %15 = load i32, i32* %dot_for_dot.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 7
  %17 = trunc i32 %cond to i8
  %bf.load16 = load i8, i8* %dot_for_dot15, align 4
  %bf.value = and i8 %17, 1
  %bf.clear17 = and i8 %bf.load16, -2
  %bf.set = or i8 %bf.clear17, %bf.value
  store i8 %bf.set, i8* %dot_for_dot15, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 14
  %19 = load i32, i32* %size, align 4
  %cmp18 = icmp ne i32 %19, -1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.13
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %size20 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 14
  %22 = load i32, i32* %size20, align 4
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 6
  %24 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %20, i32 %22, i32 %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.13
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.end.21, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %renderer, i32 %border_type) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %border_type.addr = alloca i32, align 4
  %border_color = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 %border_type, i32* %border_type.addr, align 4
  store %struct._GimpRGB* @black_color, %struct._GimpRGB** %border_color, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_view_renderer_set_border_type, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %border_type.addr, align 4
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_type11 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 8
  store i32 %13, i32* %border_type11, align 4
  %15 = load i32, i32* %border_type.addr, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 3, label %sw.bb.13
    i32 2, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %do.end
  store %struct._GimpRGB* @black_color, %struct._GimpRGB** %border_color, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  store %struct._GimpRGB* @white_color, %struct._GimpRGB** %border_color, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  store %struct._GimpRGB* @green_color, %struct._GimpRGB** %border_color, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  store %struct._GimpRGB* @red_color, %struct._GimpRGB** %border_color, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %border_color, align 8
  call void @gimp_view_renderer_set_border_color(%struct._GimpViewRenderer* %16, %struct._GimpRGB* %17)
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_border_color(%struct._GimpViewRenderer* %renderer, %struct._GimpRGB* %color) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_view_renderer_set_border_color, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_view_renderer_set_border_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.21

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_color = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 9
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call17 = call double @gimp_rgb_distance(%struct._GimpRGB* %border_color, %struct._GimpRGB* %15)
  %tobool18 = fcmp une double %call17, 0.000000e+00
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end.16
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_color20 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 9
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %18 = bitcast %struct._GimpRGB* %border_color20 to i8*
  %19 = bitcast %struct._GimpRGB* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_update_idle(%struct._GimpViewRenderer* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.else.14, %if.then.19, %do.end.16
  ret void
}

declare double @gimp_rgb_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_set_background(%struct._GimpViewRenderer* %renderer, i8* %stock_id) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %stock_id.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_view_renderer_set_background, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 13
  %14 = load i8*, i8** %bg_stock_id, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 13
  %16 = load i8*, i8** %bg_stock_id13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %stock_id.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 13
  store i8* %call15, i8** %bg_stock_id16, align 8
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 11
  %20 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  %tobool17 = icmp ne %struct._cairo_pattern* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.14
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern19 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 11
  %22 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern19, align 8
  %23 = bitcast %struct._cairo_pattern* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern20 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %24, i32 0, i32 11
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %pattern20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.18, %if.end.14
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_renderer_idle_update(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 16
  store i32 0, i32* %idle_id, align 4
  %1 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_update(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_view_renderer_update, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 16
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 16
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %idle_id15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 16
  store i32 0, i32* %idle_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %19 = bitcast %struct._GimpViewRenderer* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @renderer_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_draw(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, %struct._cairo* %cr, i32 %available_width, i32 %available_height) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %available_width.addr = alloca i32, align 4
  %available_height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %available_width, i32* %available_width.addr, align 4
  store i32 %available_height, i32* %available_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_view_renderer_draw, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.77

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_view_renderer_draw, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.77

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp40 = icmp ne %struct._cairo* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_view_renderer_draw, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.77

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 1
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %cmp45 = icmp eq %struct._GimpContext* %28, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.44
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_view_renderer_draw, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %do.end.44
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call48 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %29)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.47
  br label %if.end.77

if.end.51:                                        ; preds = %if.end.47
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %30, i32 0, i32 3
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool52 = icmp ne %struct._GimpViewable* %31, null
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.end.51
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %32)
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %34 = bitcast %struct._GimpViewRenderer* %33 to %struct._GTypeInstance*
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %36 = bitcast %struct._GTypeClass* %35 to %struct._GimpViewRendererClass*
  %draw = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %36, i32 0, i32 9
  %37 = load void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)** %draw, align 8
  %38 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %40 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %41 = load i32, i32* %available_width.addr, align 4
  %42 = load i32, i32* %available_height.addr, align 4
  call void %37(%struct._GimpViewRenderer* %38, %struct._GtkWidget* %39, %struct._cairo* %40, i32 %41, i32 %42)
  %43 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %43)
  br label %if.end.58

if.else.55:                                       ; preds = %if.end.51
  %44 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %44, i32 0, i32 2
  %45 = load i64, i64* %viewable_type, align 8
  %call57 = call i8* @g_type_class_ref(i64 %45)
  %46 = bitcast i8* %call57 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %46, %struct._GimpViewableClass** %viewable_class, align 8
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %49 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %49, i32 0, i32 1
  %50 = load i8*, i8** %default_stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %47, %struct._GtkWidget* %48, i8* %50)
  %51 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %52 = bitcast %struct._GimpViewableClass* %51 to i8*
  call void @g_type_class_unref(i8* %52)
  %53 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %55 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %56 = load i32, i32* %available_width.addr, align 4
  %57 = load i32, i32* %available_height.addr, align 4
  call void @gimp_view_renderer_real_draw(%struct._GimpViewRenderer* %53, %struct._GtkWidget* %54, %struct._cairo* %55, i32 %56, i32 %57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.53
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %58, i32 0, i32 6
  %59 = load i32, i32* %border_width, align 4
  %cmp59 = icmp sgt i32 %59, 0
  br i1 %cmp59, label %if.then.60, label %if.end.77

if.then.60:                                       ; preds = %if.end.58
  %60 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width62 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %60, i32 0, i32 4
  %61 = load i32, i32* %width62, align 4
  %62 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width63 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %62, i32 0, i32 6
  %63 = load i32, i32* %border_width63, align 4
  %add = add nsw i32 %61, %63
  store i32 %add, i32* %width, align 4
  %64 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height65 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %64, i32 0, i32 5
  %65 = load i32, i32* %height65, align 4
  %66 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width66 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %66, i32 0, i32 6
  %67 = load i32, i32* %border_width66, align 4
  %add67 = add nsw i32 %65, %67
  store i32 %add67, i32* %height, align 4
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %69 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_width70 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %69, i32 0, i32 6
  %70 = load i32, i32* %border_width70, align 4
  %conv = sitofp i32 %70 to double
  call void @cairo_set_line_width(%struct._cairo* %68, double %conv)
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_join(%struct._cairo* %71, i32 1)
  %72 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %73 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %border_color = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %73, i32 0, i32 9
  call void @gimp_cairo_set_source_rgb(%struct._cairo* %72, %struct._GimpRGB* %border_color)
  %74 = load i32, i32* %available_width.addr, align 4
  %75 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %74, %75
  %conv71 = sitofp i32 %sub to double
  %div = fdiv double %conv71, 2.000000e+00
  store double %div, double* %x, align 8
  %76 = load i32, i32* %available_height.addr, align 4
  %77 = load i32, i32* %height, align 4
  %sub72 = sub nsw i32 %76, %77
  %conv73 = sitofp i32 %sub72 to double
  %div74 = fdiv double %conv73, 2.000000e+00
  store double %div74, double* %y, align 8
  %78 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %79 = load double, double* %x, align 8
  %80 = load double, double* %y, align 8
  %81 = load i32, i32* %width, align 4
  %conv75 = sitofp i32 %81 to double
  %82 = load i32, i32* %height, align 4
  %conv76 = sitofp i32 %82 to double
  call void @cairo_rectangle(%struct._cairo* %78, double %79, double %80, double %conv75, double %conv76)
  %83 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %83)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.9, %if.else.36, %if.else.42, %if.then.50, %if.then.60, %if.end.58
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
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

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_restore(%struct._cairo*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, i8* %stock_id) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %stock_id.addr = alloca i8*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %icon_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %width64 = alloca i32, align 4
  %height67 = alloca i32, align 4
  %scaled_pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_render_stock, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_render_stock, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %stock_id.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_view_renderer_render_stock, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf45 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 12
  %28 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf45, align 8
  %tobool46 = icmp ne %struct._GdkPixbuf* %28, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %do.end.44
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf48 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %29, i32 0, i32 12
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf48, align 8
  %31 = bitcast %struct._GdkPixbuf* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf49 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %32, i32 0, i32 12
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %do.end.44
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 10
  %34 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool51 = icmp ne %struct._cairo_surface* %34, null
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.50
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface53 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %35, i32 0, i32 10
  %36 = load %struct._cairo_surface*, %struct._cairo_surface** %surface53, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %36)
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface54 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.50
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %39 = load i8*, i8** %stock_id.addr, align 8
  %40 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %40, i32 0, i32 4
  %41 = load i32, i32* %width, align 4
  %42 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %42, i32 0, i32 5
  %43 = load i32, i32* %height, align 4
  %call56 = call i32 @gimp_get_icon_size(%struct._GtkWidget* %38, i8* %39, i32 0, i32 %41, i32 %43)
  store i32 %call56, i32* %icon_size, align 4
  %44 = load i32, i32* %icon_size, align 4
  %tobool57 = icmp ne i32 %44, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.55
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %46 = load i8*, i8** %stock_id.addr, align 8
  %47 = load i32, i32* %icon_size, align 4
  %call59 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %45, i8* %46, i32 %47, i8* null)
  store %struct._GdkPixbuf* %call59, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.55
  %48 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool61 = icmp ne %struct._GdkPixbuf* %48, null
  br i1 %tobool61, label %if.then.62, label %if.end.80

if.then.62:                                       ; preds = %if.end.60
  %49 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call65 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %49)
  store i32 %call65, i32* %width64, align 4
  %50 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call68 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %50)
  store i32 %call68, i32* %height67, align 4
  %51 = load i32, i32* %width64, align 4
  %52 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width69 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %52, i32 0, i32 4
  %53 = load i32, i32* %width69, align 4
  %cmp70 = icmp sgt i32 %51, %53
  br i1 %cmp70, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.62
  %54 = load i32, i32* %height67, align 4
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height71 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %55, i32 0, i32 5
  %56 = load i32, i32* %height71, align 4
  %cmp72 = icmp sgt i32 %54, %56
  br i1 %cmp72, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %lor.lhs.false, %if.then.62
  %57 = load i32, i32* %width64, align 4
  %58 = load i32, i32* %height67, align 4
  %59 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width75 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %59, i32 0, i32 4
  %60 = load i32, i32* %width75, align 4
  %61 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height76 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %61, i32 0, i32 5
  %62 = load i32, i32* %height76, align 4
  call void @gimp_viewable_calc_preview_size(i32 %57, i32 %58, i32 %60, i32 %62, i32 1, double 1.000000e+00, double 1.000000e+00, i32* %width64, i32* %height67, i32* null)
  %63 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %64 = load i32, i32* %width64, align 4
  %65 = load i32, i32* %height67, align 4
  %call77 = call %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf* %63, i32 %64, i32 %65, i32 2)
  store %struct._GdkPixbuf* %call77, %struct._GdkPixbuf** %scaled_pixbuf, align 8
  %66 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %67 = bitcast %struct._GdkPixbuf* %66 to i8*
  call void @g_object_unref(i8* %67)
  %68 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %scaled_pixbuf, align 8
  store %struct._GdkPixbuf* %68, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %lor.lhs.false
  %69 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %70 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf79 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %70, i32 0, i32 12
  store %struct._GdkPixbuf* %69, %struct._GdkPixbuf** %pixbuf79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %if.end.60
  %71 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %71, i32 0, i32 15
  store i32 0, i32* %needs_render, align 4
  br label %return

return:                                           ; preds = %if.end.80, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_real_draw(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, %struct._cairo* %cr, i32 %available_width, i32 %available_height) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %available_width.addr = alloca i32, align 4
  %available_height.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %content = alloca i32, align 4
  %width27 = alloca i32, align 4
  %height29 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %available_width, i32* %available_width.addr, align 4
  store i32 %available_height, i32* %available_height.addr, align 4
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 15
  %1 = load i32, i32* %needs_render, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %3 = bitcast %struct._GimpViewRenderer* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpViewRendererClass*
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %5, i32 0, i32 10
  %6 = load void (%struct._GimpViewRenderer*, %struct._GtkWidget*)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GimpViewRenderer* %7, %struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 12
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool1 = icmp ne %struct._GdkPixbuf* %10, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 12
  %12 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf3, align 8
  %call = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %12)
  store i32 %call, i32* %width, align 4
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 12
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf4, align 8
  %call5 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %14)
  store i32 %call5, i32* %height, align 4
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 13
  %16 = load i8*, i8** %bg_stock_id, align 8
  %tobool6 = icmp ne i8* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.then.2
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 11
  %18 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  %tobool8 = icmp ne %struct._cairo_pattern* %18, null
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.then.7
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._cairo_pattern* @gimp_view_renderer_create_background(%struct._GimpViewRenderer* %19, %struct._GtkWidget* %20)
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern11 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 11
  store %struct._cairo_pattern* %call10, %struct._cairo_pattern** %pattern11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  %22 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 11
  %24 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern13, align 8
  call void @cairo_set_source(%struct._cairo* %22, %struct._cairo_pattern* %24)
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_paint(%struct._cairo* %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.then.2
  %26 = load i32, i32* %available_width.addr, align 4
  %27 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %26, %27
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %28 = load i32, i32* %available_height.addr, align 4
  %29 = load i32, i32* %height, align 4
  %sub15 = sub nsw i32 %28, %29
  %div16 = sdiv i32 %sub15, 2
  store i32 %div16, i32* %y, align 4
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %31, i32 0, i32 12
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf17, align 8
  %33 = load i32, i32* %x, align 4
  %conv = sitofp i32 %33 to double
  %34 = load i32, i32* %y, align 4
  %conv18 = sitofp i32 %34 to double
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %30, %struct._GdkPixbuf* %32, double %conv, double %conv18)
  %35 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %36 = load i32, i32* %x, align 4
  %conv19 = sitofp i32 %36 to double
  %37 = load i32, i32* %y, align 4
  %conv20 = sitofp i32 %37 to double
  %38 = load i32, i32* %width, align 4
  %conv21 = sitofp i32 %38 to double
  %39 = load i32, i32* %height, align 4
  %conv22 = sitofp i32 %39 to double
  call void @cairo_rectangle(%struct._cairo* %35, double %conv19, double %conv20, double %conv21, double %conv22)
  %40 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %40)
  br label %if.end.57

if.else:                                          ; preds = %if.end
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %41, i32 0, i32 10
  %42 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool23 = icmp ne %struct._cairo_surface* %42, null
  br i1 %tobool23, label %if.then.24, label %if.end.56

if.then.24:                                       ; preds = %if.else
  %43 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface25 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %43, i32 0, i32 10
  %44 = load %struct._cairo_surface*, %struct._cairo_surface** %surface25, align 8
  %call26 = call i32 @cairo_surface_get_content(%struct._cairo_surface* %44)
  store i32 %call26, i32* %content, align 4
  %45 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width28 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %45, i32 0, i32 4
  %46 = load i32, i32* %width28, align 4
  store i32 %46, i32* %width27, align 4
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height30 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %47, i32 0, i32 5
  %48 = load i32, i32* %height30, align 4
  store i32 %48, i32* %height29, align 4
  %49 = load i32, i32* %available_width.addr, align 4
  %50 = load i32, i32* %width27, align 4
  %sub31 = sub nsw i32 %49, %50
  %div32 = sdiv i32 %sub31, 2
  store i32 %div32, i32* %offset_x, align 4
  %51 = load i32, i32* %available_height.addr, align 4
  %52 = load i32, i32* %height29, align 4
  %sub33 = sub nsw i32 %51, %52
  %div34 = sdiv i32 %sub33, 2
  store i32 %div34, i32* %offset_y, align 4
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %54 = load i32, i32* %offset_x, align 4
  %conv35 = sitofp i32 %54 to double
  %55 = load i32, i32* %offset_y, align 4
  %conv36 = sitofp i32 %55 to double
  call void @cairo_translate(%struct._cairo* %53, double %conv35, double %conv36)
  %56 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %57 = load i32, i32* %width27, align 4
  %conv37 = sitofp i32 %57 to double
  %58 = load i32, i32* %height29, align 4
  %conv38 = sitofp i32 %58 to double
  call void @cairo_rectangle(%struct._cairo* %56, double 0.000000e+00, double 0.000000e+00, double %conv37, double %conv38)
  %59 = load i32, i32* %content, align 4
  %cmp = icmp eq i32 %59, 12288
  br i1 %cmp, label %if.then.40, label %if.end.50

if.then.40:                                       ; preds = %if.then.24
  %60 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern41 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %60, i32 0, i32 11
  %61 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern41, align 8
  %tobool42 = icmp ne %struct._cairo_pattern* %61, null
  br i1 %tobool42, label %if.end.48, label %if.then.43

if.then.43:                                       ; preds = %if.then.40
  %62 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %call44 = call %struct._GimpRGB* @gimp_render_light_check_color()
  %call45 = call %struct._GimpRGB* @gimp_render_dark_check_color()
  %call46 = call %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo* %62, i32 4, %struct._GimpRGB* %call44, %struct._GimpRGB* %call45)
  %63 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern47 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %63, i32 0, i32 11
  store %struct._cairo_pattern* %call46, %struct._cairo_pattern** %pattern47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.then.40
  %64 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %65 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pattern49 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %65, i32 0, i32 11
  %66 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern49, align 8
  call void @cairo_set_source(%struct._cairo* %64, %struct._cairo_pattern* %66)
  %67 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %67)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.48, %if.then.24
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %69 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface51 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %69, i32 0, i32 10
  %70 = load %struct._cairo_surface*, %struct._cairo_surface** %surface51, align 8
  call void @cairo_set_source_surface(%struct._cairo* %68, %struct._cairo_surface* %70, double 0.000000e+00, double 0.000000e+00)
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %71)
  %72 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %73 = load i32, i32* %offset_x, align 4
  %sub52 = sub nsw i32 0, %73
  %conv53 = sitofp i32 %sub52 to double
  %74 = load i32, i32* %offset_y, align 4
  %sub54 = sub nsw i32 0, %74
  %conv55 = sitofp i32 %sub54 to double
  call void @cairo_translate(%struct._cairo* %72, double %conv53, double %conv55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.50, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.14
  ret void
}

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_line_join(%struct._cairo*, i32) #1

declare void @gimp_cairo_set_source_rgb(%struct._cairo*, %struct._GimpRGB*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_render_temp_buf_simple(%struct._GimpViewRenderer* %renderer, %struct._TempBuf* %temp_buf) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %temp_buf.addr = alloca %struct._TempBuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._TempBuf* %temp_buf, %struct._TempBuf** %temp_buf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_view_renderer_render_temp_buf_simple, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %cmp12 = icmp ne %struct._TempBuf* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_view_renderer_render_temp_buf_simple, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width, align 4
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 4
  %17 = load i32, i32* %width17, align 4
  %cmp18 = icmp slt i32 %15, %17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end.16
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width20 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 4
  %19 = load i32, i32* %width20, align 4
  %20 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 1
  %21 = load i32, i32* %width21, align 4
  %sub = sub nsw i32 %19, %21
  %div = sdiv i32 %sub, 2
  %22 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 3
  store i32 %div, i32* %x, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.end.16
  %23 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 2
  %24 = load i32, i32* %height, align 4
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height23 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %25, i32 0, i32 5
  %26 = load i32, i32* %height23, align 4
  %cmp24 = icmp slt i32 %24, %26
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.22
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height26 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 5
  %28 = load i32, i32* %height26, align 4
  %29 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %height27 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %29, i32 0, i32 2
  %30 = load i32, i32* %height27, align 4
  %sub28 = sub nsw i32 %28, %30
  %div29 = sdiv i32 %sub28, 2
  %31 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 4
  store i32 %div29, i32* %y, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.22
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %33 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %32, %struct._TempBuf* %33, i32 -1, i32 0, i32 1)
  br label %return

return:                                           ; preds = %if.end.30, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %renderer, %struct._TempBuf* %temp_buf, i32 %channel, i32 %inside_bg, i32 %outside_bg) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %temp_buf.addr = alloca %struct._TempBuf*, align 8
  %channel.addr = alloca i32, align 4
  %inside_bg.addr = alloca i32, align 4
  %outside_bg.addr = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._TempBuf* %temp_buf, %struct._TempBuf** %temp_buf.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %inside_bg, i32* %inside_bg.addr, align 4
  store i32 %outside_bg, i32* %outside_bg.addr, align 4
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 12
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 12
  %3 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf1, align 8
  %4 = bitcast %struct._GdkPixbuf* %3 to i8*
  call void @g_object_unref(i8* %4)
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 12
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 10
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool3 = icmp ne %struct._cairo_surface* %7, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 4
  %9 = load i32, i32* %width, align 4
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 5
  %11 = load i32, i32* %height, align 4
  %call = call %struct._cairo_surface* @cairo_image_surface_create(i32 1, i32 %9, i32 %11)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 10
  store %struct._cairo_surface* %call, %struct._cairo_surface** %surface5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %13 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %14 = load i32, i32* %channel.addr, align 4
  %15 = load i32, i32* %inside_bg.addr, align 4
  %16 = load i32, i32* %outside_bg.addr, align 4
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 10
  %18 = load %struct._cairo_surface*, %struct._cairo_surface** %surface7, align 8
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 4
  %20 = load i32, i32* %width8, align 4
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 5
  %22 = load i32, i32* %height9, align 4
  call void @gimp_view_render_temp_buf_to_surface(%struct._TempBuf* %13, i32 %14, i32 %15, i32 %16, %struct._cairo_surface* %18, i32 %20, i32 %22)
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 15
  store i32 0, i32* %needs_render, align 4
  ret void
}

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_render_temp_buf_to_surface(%struct._TempBuf* %temp_buf, i32 %channel, i32 %inside_bg, i32 %outside_bg, %struct._cairo_surface* %surface, i32 %dest_width, i32 %dest_height) #2 {
entry:
  %temp_buf.addr = alloca %struct._TempBuf*, align 8
  %channel.addr = alloca i32, align 4
  %inside_bg.addr = alloca i32, align 4
  %outside_bg.addr = alloca i32, align 4
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %pad_buf = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %dest_stride = alloca i32, align 4
  %color = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %render_composite = alloca i32, align 4
  %red_component = alloca i32, align 4
  %green_component = alloca i32, align 4
  %blue_component = alloca i32, align 4
  %alpha_component = alloca i32, align 4
  %d = alloca i8*, align 8
  %cb = alloca i8*, align 8
  %offset = alloca i32, align 4
  %s = alloca i8*, align 8
  %a = alloca i32, align 4
  store %struct._TempBuf* %temp_buf, %struct._TempBuf** %temp_buf.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %inside_bg, i32* %inside_bg.addr, align 4
  store i32 %outside_bg, i32* %outside_bg.addr, align 4
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_view_render_temp_buf_to_surface, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %cmp2 = icmp ne %struct._cairo_surface* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_view_render_temp_buf_to_surface, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** @gimp_render_check_buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %do.end.6
  %3 = load i8*, i8** @gimp_render_empty_buf, align 8
  %tobool7 = icmp ne i8* %3, null
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then.10

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** @gimp_render_white_buf, align 8
  %tobool9 = icmp ne i8* %4, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %do.end.6
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.8
  %5 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %5)
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %6)
  store i8* %call, i8** %dest, align 8
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call12 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %7)
  store i32 %call12, i32* %dest_stride, align 4
  %8 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 0
  %9 = load i32, i32* %bytes, align 4
  %cmp13 = icmp eq i32 %9, 3
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.11
  %10 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes14 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 0
  %11 = load i32, i32* %bytes14, align 4
  %cmp15 = icmp eq i32 %11, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.11
  %12 = phi i1 [ true, %if.end.11 ], [ %cmp15, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %color, align 4
  %13 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes16 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 0
  %14 = load i32, i32* %bytes16, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %lor.end.21, label %lor.rhs.18

lor.rhs.18:                                       ; preds = %lor.end
  %15 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %15, i32 0, i32 0
  %16 = load i32, i32* %bytes19, align 4
  %cmp20 = icmp eq i32 %16, 4
  br label %lor.end.21

lor.end.21:                                       ; preds = %lor.rhs.18, %lor.end
  %17 = phi i1 [ true, %lor.end ], [ %cmp20, %lor.rhs.18 ]
  %lor.ext22 = zext i1 %17 to i32
  store i32 %lor.ext22, i32* %has_alpha, align 4
  %18 = load i32, i32* %channel.addr, align 4
  %cmp23 = icmp eq i32 %18, -1
  %conv = zext i1 %cmp23 to i32
  store i32 %conv, i32* %render_composite, align 4
  %19 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 1
  %20 = load i32, i32* %width, align 4
  %21 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes24 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %21, i32 0, i32 0
  %22 = load i32, i32* %bytes24, align 4
  %mul = mul nsw i32 %20, %22
  store i32 %mul, i32* %rowstride, align 4
  %23 = load i32, i32* %has_alpha, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %lor.end.21
  %24 = load i32, i32* %render_composite, align 4
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.31

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %outside_bg.addr, align 4
  %cmp28 = icmp eq i32 %25, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.27
  %26 = load i8*, i8** @gimp_render_check_buf, align 8
  store i8* %26, i8** %pad_buf, align 8
  br label %if.end.37

if.else.31:                                       ; preds = %land.lhs.true.27, %land.lhs.true, %lor.end.21
  %27 = load i32, i32* %outside_bg.addr, align 4
  %cmp32 = icmp eq i32 %27, 1
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.31
  %28 = load i8*, i8** @gimp_render_white_buf, align 8
  store i8* %28, i8** %pad_buf, align 8
  br label %if.end.36

if.else.35:                                       ; preds = %if.else.31
  %29 = load i8*, i8** @gimp_render_empty_buf, align 8
  store i8* %29, i8** %pad_buf, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.30
  %30 = load i32, i32* %render_composite, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.end.37
  %31 = load i32, i32* %color, align 4
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.then.39
  store i32 0, i32* %red_component, align 4
  store i32 1, i32* %green_component, align 4
  store i32 2, i32* %blue_component, align 4
  store i32 3, i32* %alpha_component, align 4
  br label %if.end.43

if.else.42:                                       ; preds = %if.then.39
  store i32 0, i32* %red_component, align 4
  store i32 0, i32* %green_component, align 4
  store i32 0, i32* %blue_component, align 4
  store i32 1, i32* %alpha_component, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.37
  %32 = load i32, i32* %channel.addr, align 4
  store i32 %32, i32* %red_component, align 4
  %33 = load i32, i32* %channel.addr, align 4
  store i32 %33, i32* %green_component, align 4
  %34 = load i32, i32* %channel.addr, align 4
  store i32 %34, i32* %blue_component, align 4
  store i32 0, i32* %alpha_component, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  %35 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %35, i32 0, i32 3
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %dest_width.addr, align 4
  %cmp46 = icmp sgt i32 %36, %37
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %38 = load i32, i32* %dest_width.addr, align 4
  br label %cond.end.54

cond.false:                                       ; preds = %if.end.45
  %39 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x48 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %39, i32 0, i32 3
  %40 = load i32, i32* %x48, align 4
  %cmp49 = icmp slt i32 %40, 0
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.false
  br label %cond.end

cond.false.52:                                    ; preds = %cond.false
  %41 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x53 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %41, i32 0, i32 3
  %42 = load i32, i32* %x53, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.51
  %cond = phi i32 [ 0, %cond.true.51 ], [ %42, %cond.false.52 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end, %cond.true
  %cond55 = phi i32 [ %38, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond55, i32* %x1, align 4
  %43 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %43, i32 0, i32 4
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %dest_height.addr, align 4
  %cmp56 = icmp sgt i32 %44, %45
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.54
  %46 = load i32, i32* %dest_height.addr, align 4
  br label %cond.end.68

cond.false.59:                                    ; preds = %cond.end.54
  %47 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y60 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 4
  %48 = load i32, i32* %y60, align 4
  %cmp61 = icmp slt i32 %48, 0
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.59
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.false.59
  %49 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y65 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 4
  %50 = load i32, i32* %y65, align 4
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi i32 [ 0, %cond.true.63 ], [ %50, %cond.false.64 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.58
  %cond69 = phi i32 [ %46, %cond.true.58 ], [ %cond67, %cond.end.66 ]
  store i32 %cond69, i32* %y1, align 4
  %51 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x70 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %51, i32 0, i32 3
  %52 = load i32, i32* %x70, align 4
  %53 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width71 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %53, i32 0, i32 1
  %54 = load i32, i32* %width71, align 4
  %add = add nsw i32 %52, %54
  %55 = load i32, i32* %dest_width.addr, align 4
  %cmp72 = icmp sgt i32 %add, %55
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.68
  %56 = load i32, i32* %dest_width.addr, align 4
  br label %cond.end.88

cond.false.75:                                    ; preds = %cond.end.68
  %57 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x76 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 3
  %58 = load i32, i32* %x76, align 4
  %59 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width77 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %59, i32 0, i32 1
  %60 = load i32, i32* %width77, align 4
  %add78 = add nsw i32 %58, %60
  %cmp79 = icmp slt i32 %add78, 0
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.false.75
  br label %cond.end.86

cond.false.82:                                    ; preds = %cond.false.75
  %61 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x83 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %61, i32 0, i32 3
  %62 = load i32, i32* %x83, align 4
  %63 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width84 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %63, i32 0, i32 1
  %64 = load i32, i32* %width84, align 4
  %add85 = add nsw i32 %62, %64
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.82, %cond.true.81
  %cond87 = phi i32 [ 0, %cond.true.81 ], [ %add85, %cond.false.82 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.74
  %cond89 = phi i32 [ %56, %cond.true.74 ], [ %cond87, %cond.end.86 ]
  store i32 %cond89, i32* %x2, align 4
  %65 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y90 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 4
  %66 = load i32, i32* %y90, align 4
  %67 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %67, i32 0, i32 2
  %68 = load i32, i32* %height, align 4
  %add91 = add nsw i32 %66, %68
  %69 = load i32, i32* %dest_height.addr, align 4
  %cmp92 = icmp sgt i32 %add91, %69
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.end.88
  %70 = load i32, i32* %dest_height.addr, align 4
  br label %cond.end.108

cond.false.95:                                    ; preds = %cond.end.88
  %71 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y96 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %71, i32 0, i32 4
  %72 = load i32, i32* %y96, align 4
  %73 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %height97 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %73, i32 0, i32 2
  %74 = load i32, i32* %height97, align 4
  %add98 = add nsw i32 %72, %74
  %cmp99 = icmp slt i32 %add98, 0
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.false.95
  br label %cond.end.106

cond.false.102:                                   ; preds = %cond.false.95
  %75 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y103 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %75, i32 0, i32 4
  %76 = load i32, i32* %y103, align 4
  %77 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %height104 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %77, i32 0, i32 2
  %78 = load i32, i32* %height104, align 4
  %add105 = add nsw i32 %76, %78
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.102, %cond.true.101
  %cond107 = phi i32 [ 0, %cond.true.101 ], [ %add105, %cond.false.102 ]
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.end.106, %cond.true.94
  %cond109 = phi i32 [ %70, %cond.true.94 ], [ %cond107, %cond.end.106 ]
  store i32 %cond109, i32* %y2, align 4
  %79 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %call110 = call i8* @temp_buf_get_data(%struct._TempBuf* %79)
  %80 = load i32, i32* %y1, align 4
  %81 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %y111 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %81, i32 0, i32 4
  %82 = load i32, i32* %y111, align 4
  %sub = sub nsw i32 %80, %82
  %83 = load i32, i32* %rowstride, align 4
  %mul112 = mul nsw i32 %sub, %83
  %84 = load i32, i32* %x1, align 4
  %85 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %x113 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %85, i32 0, i32 3
  %86 = load i32, i32* %x113, align 4
  %sub114 = sub nsw i32 %84, %86
  %87 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes115 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %87, i32 0, i32 0
  %88 = load i32, i32* %bytes115, align 4
  %mul116 = mul nsw i32 %sub114, %88
  %add117 = add nsw i32 %mul112, %mul116
  %idx.ext = sext i32 %add117 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call110, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.295, %cond.end.108
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %dest_height.addr, align 4
  %cmp118 = icmp slt i32 %89, %90
  br i1 %cmp118, label %for.body, label %for.end.297

for.body:                                         ; preds = %for.cond
  %91 = load i8*, i8** %dest, align 8
  store i8* %91, i8** %d, align 8
  %92 = load i32, i32* %i, align 4
  %and = and i32 %92, 4
  %tobool120 = icmp ne i32 %and, 0
  br i1 %tobool120, label %if.then.121, label %if.else.125

if.then.121:                                      ; preds = %for.body
  store i32 4, i32* %offset, align 4
  %93 = load i8*, i8** %pad_buf, align 8
  %94 = load i32, i32* %offset, align 4
  %mul122 = mul nsw i32 %94, 3
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %93, i64 %idx.ext123
  store i8* %add.ptr124, i8** %cb, align 8
  br label %if.end.126

if.else.125:                                      ; preds = %for.body
  store i32 0, i32* %offset, align 4
  %95 = load i8*, i8** %pad_buf, align 8
  store i8* %95, i8** %cb, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.then.121
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %y1, align 4
  %cmp127 = icmp sge i32 %96, %97
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.274

land.lhs.true.129:                                ; preds = %if.end.126
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %y2, align 4
  %cmp130 = icmp slt i32 %98, %99
  br i1 %cmp130, label %if.then.132, label %if.else.274

if.then.132:                                      ; preds = %land.lhs.true.129
  %100 = load i8*, i8** %src, align 8
  store i8* %100, i8** %s, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc, %if.then.132
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %x1, align 4
  %cmp134 = icmp slt i32 %101, %102
  br i1 %cmp134, label %for.body.136, label %for.end

for.body.136:                                     ; preds = %for.cond.133
  br label %do.body.137

do.body.137:                                      ; preds = %for.body.136
  %103 = load i8*, i8** %cb, align 8
  %arrayidx = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx, align 1
  %105 = load i8*, i8** %d, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %104, i8* %arrayidx138, align 1
  %106 = load i8*, i8** %cb, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx139, align 1
  %108 = load i8*, i8** %d, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %107, i8* %arrayidx140, align 1
  %109 = load i8*, i8** %cb, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx141, align 1
  %111 = load i8*, i8** %d, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %110, i8* %arrayidx142, align 1
  br label %do.end.143

do.end.143:                                       ; preds = %do.body.137
  br label %for.inc

for.inc:                                          ; preds = %do.end.143
  %112 = load i32, i32* %j, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %j, align 4
  %113 = load i8*, i8** %d, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %add.ptr144, i8** %d, align 8
  %114 = load i8*, i8** %cb, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %114, i64 3
  store i8* %add.ptr145, i8** %cb, align 8
  br label %for.cond.133

for.end:                                          ; preds = %for.cond.133
  %115 = load i32, i32* %x1, align 4
  store i32 %115, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.248, %for.end
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %x2, align 4
  %cmp147 = icmp slt i32 %116, %117
  br i1 %cmp147, label %for.body.149, label %for.end.254

for.body.149:                                     ; preds = %for.cond.146
  %118 = load i32, i32* %has_alpha, align 4
  %tobool150 = icmp ne i32 %118, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.else.235

land.lhs.true.151:                                ; preds = %for.body.149
  %119 = load i32, i32* %render_composite, align 4
  %tobool152 = icmp ne i32 %119, 0
  br i1 %tobool152, label %if.then.153, label %if.else.235

if.then.153:                                      ; preds = %land.lhs.true.151
  %120 = load i32, i32* %alpha_component, align 4
  %idxprom = sext i32 %120 to i64
  %121 = load i8*, i8** %s, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %121, i64 %idxprom
  %122 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %122 to i32
  %shl = shl i32 %conv155, 8
  store i32 %shl, i32* %a, align 4
  %123 = load i32, i32* %inside_bg.addr, align 4
  %cmp156 = icmp eq i32 %123, 0
  br i1 %cmp156, label %if.then.158, label %if.else.210

if.then.158:                                      ; preds = %if.then.153
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %offset, align 4
  %add159 = add nsw i32 %124, %125
  %and160 = and i32 %add159, 4
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then.162, label %if.else.185

if.then.162:                                      ; preds = %if.then.158
  br label %do.body.163

do.body.163:                                      ; preds = %if.then.162
  %126 = load i32, i32* %a, align 4
  %127 = load i32, i32* %blue_component, align 4
  %idxprom164 = sext i32 %127 to i64
  %128 = load i8*, i8** %s, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %128, i64 %idxprom164
  %129 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %129 to i32
  %or = or i32 %126, %conv166
  %idxprom167 = zext i32 %or to i64
  %130 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %130, i64 %idxprom167
  %131 = load i8, i8* %arrayidx168, align 1
  %132 = load i8*, i8** %d, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %132, i64 0
  store i8 %131, i8* %arrayidx169, align 1
  %133 = load i32, i32* %a, align 4
  %134 = load i32, i32* %green_component, align 4
  %idxprom170 = sext i32 %134 to i64
  %135 = load i8*, i8** %s, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %135, i64 %idxprom170
  %136 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %136 to i32
  %or173 = or i32 %133, %conv172
  %idxprom174 = zext i32 %or173 to i64
  %137 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %137, i64 %idxprom174
  %138 = load i8, i8* %arrayidx175, align 1
  %139 = load i8*, i8** %d, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %139, i64 1
  store i8 %138, i8* %arrayidx176, align 1
  %140 = load i32, i32* %a, align 4
  %141 = load i32, i32* %red_component, align 4
  %idxprom177 = sext i32 %141 to i64
  %142 = load i8*, i8** %s, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %142, i64 %idxprom177
  %143 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %143 to i32
  %or180 = or i32 %140, %conv179
  %idxprom181 = zext i32 %or180 to i64
  %144 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %144, i64 %idxprom181
  %145 = load i8, i8* %arrayidx182, align 1
  %146 = load i8*, i8** %d, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %146, i64 2
  store i8 %145, i8* %arrayidx183, align 1
  br label %do.end.184

do.end.184:                                       ; preds = %do.body.163
  br label %if.end.209

if.else.185:                                      ; preds = %if.then.158
  br label %do.body.186

do.body.186:                                      ; preds = %if.else.185
  %147 = load i32, i32* %a, align 4
  %148 = load i32, i32* %blue_component, align 4
  %idxprom187 = sext i32 %148 to i64
  %149 = load i8*, i8** %s, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %149, i64 %idxprom187
  %150 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %150 to i32
  %or190 = or i32 %147, %conv189
  %idxprom191 = zext i32 %or190 to i64
  %151 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %151, i64 %idxprom191
  %152 = load i8, i8* %arrayidx192, align 1
  %153 = load i8*, i8** %d, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %153, i64 0
  store i8 %152, i8* %arrayidx193, align 1
  %154 = load i32, i32* %a, align 4
  %155 = load i32, i32* %green_component, align 4
  %idxprom194 = sext i32 %155 to i64
  %156 = load i8*, i8** %s, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %156, i64 %idxprom194
  %157 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %157 to i32
  %or197 = or i32 %154, %conv196
  %idxprom198 = zext i32 %or197 to i64
  %158 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %158, i64 %idxprom198
  %159 = load i8, i8* %arrayidx199, align 1
  %160 = load i8*, i8** %d, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %160, i64 1
  store i8 %159, i8* %arrayidx200, align 1
  %161 = load i32, i32* %a, align 4
  %162 = load i32, i32* %red_component, align 4
  %idxprom201 = sext i32 %162 to i64
  %163 = load i8*, i8** %s, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %163, i64 %idxprom201
  %164 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %164 to i32
  %or204 = or i32 %161, %conv203
  %idxprom205 = zext i32 %or204 to i64
  %165 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %165, i64 %idxprom205
  %166 = load i8, i8* %arrayidx206, align 1
  %167 = load i8*, i8** %d, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %167, i64 2
  store i8 %166, i8* %arrayidx207, align 1
  br label %do.end.208

do.end.208:                                       ; preds = %do.body.186
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.208, %do.end.184
  br label %if.end.234

if.else.210:                                      ; preds = %if.then.153
  br label %do.body.211

do.body.211:                                      ; preds = %if.else.210
  %168 = load i32, i32* %a, align 4
  %169 = load i32, i32* %blue_component, align 4
  %idxprom212 = sext i32 %169 to i64
  %170 = load i8*, i8** %s, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %170, i64 %idxprom212
  %171 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %171 to i32
  %or215 = or i32 %168, %conv214
  %idxprom216 = zext i32 %or215 to i64
  %172 = load i8*, i8** @gimp_render_blend_white, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %172, i64 %idxprom216
  %173 = load i8, i8* %arrayidx217, align 1
  %174 = load i8*, i8** %d, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %174, i64 0
  store i8 %173, i8* %arrayidx218, align 1
  %175 = load i32, i32* %a, align 4
  %176 = load i32, i32* %green_component, align 4
  %idxprom219 = sext i32 %176 to i64
  %177 = load i8*, i8** %s, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %177, i64 %idxprom219
  %178 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %178 to i32
  %or222 = or i32 %175, %conv221
  %idxprom223 = zext i32 %or222 to i64
  %179 = load i8*, i8** @gimp_render_blend_white, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %179, i64 %idxprom223
  %180 = load i8, i8* %arrayidx224, align 1
  %181 = load i8*, i8** %d, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 %180, i8* %arrayidx225, align 1
  %182 = load i32, i32* %a, align 4
  %183 = load i32, i32* %red_component, align 4
  %idxprom226 = sext i32 %183 to i64
  %184 = load i8*, i8** %s, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %184, i64 %idxprom226
  %185 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %185 to i32
  %or229 = or i32 %182, %conv228
  %idxprom230 = zext i32 %or229 to i64
  %186 = load i8*, i8** @gimp_render_blend_white, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %186, i64 %idxprom230
  %187 = load i8, i8* %arrayidx231, align 1
  %188 = load i8*, i8** %d, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %188, i64 2
  store i8 %187, i8* %arrayidx232, align 1
  br label %do.end.233

do.end.233:                                       ; preds = %do.body.211
  br label %if.end.234

if.end.234:                                       ; preds = %do.end.233, %if.end.209
  br label %if.end.247

if.else.235:                                      ; preds = %land.lhs.true.151, %for.body.149
  br label %do.body.236

do.body.236:                                      ; preds = %if.else.235
  %189 = load i32, i32* %blue_component, align 4
  %idxprom237 = sext i32 %189 to i64
  %190 = load i8*, i8** %s, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %190, i64 %idxprom237
  %191 = load i8, i8* %arrayidx238, align 1
  %192 = load i8*, i8** %d, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %192, i64 0
  store i8 %191, i8* %arrayidx239, align 1
  %193 = load i32, i32* %green_component, align 4
  %idxprom240 = sext i32 %193 to i64
  %194 = load i8*, i8** %s, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %194, i64 %idxprom240
  %195 = load i8, i8* %arrayidx241, align 1
  %196 = load i8*, i8** %d, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %196, i64 1
  store i8 %195, i8* %arrayidx242, align 1
  %197 = load i32, i32* %red_component, align 4
  %idxprom243 = sext i32 %197 to i64
  %198 = load i8*, i8** %s, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %198, i64 %idxprom243
  %199 = load i8, i8* %arrayidx244, align 1
  %200 = load i8*, i8** %d, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %200, i64 2
  store i8 %199, i8* %arrayidx245, align 1
  br label %do.end.246

do.end.246:                                       ; preds = %do.body.236
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %if.end.234
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %201 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %201, 1
  store i32 %inc249, i32* %j, align 4
  %202 = load i8*, i8** %d, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %202, i64 4
  store i8* %add.ptr250, i8** %d, align 8
  %203 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes251 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %203, i32 0, i32 0
  %204 = load i32, i32* %bytes251, align 4
  %205 = load i8*, i8** %s, align 8
  %idx.ext252 = sext i32 %204 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %205, i64 %idx.ext252
  store i8* %add.ptr253, i8** %s, align 8
  br label %for.cond.146

for.end.254:                                      ; preds = %for.cond.146
  %206 = load i32, i32* %x2, align 4
  store i32 %206, i32* %j, align 4
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.267, %for.end.254
  %207 = load i32, i32* %j, align 4
  %208 = load i32, i32* %dest_width.addr, align 4
  %cmp256 = icmp slt i32 %207, %208
  br i1 %cmp256, label %for.body.258, label %for.end.271

for.body.258:                                     ; preds = %for.cond.255
  br label %do.body.259

do.body.259:                                      ; preds = %for.body.258
  %209 = load i8*, i8** %cb, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %209, i64 2
  %210 = load i8, i8* %arrayidx260, align 1
  %211 = load i8*, i8** %d, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %arrayidx261, align 1
  %212 = load i8*, i8** %cb, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx262, align 1
  %214 = load i8*, i8** %d, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %214, i64 1
  store i8 %213, i8* %arrayidx263, align 1
  %215 = load i8*, i8** %cb, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %215, i64 0
  %216 = load i8, i8* %arrayidx264, align 1
  %217 = load i8*, i8** %d, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %217, i64 2
  store i8 %216, i8* %arrayidx265, align 1
  br label %do.end.266

do.end.266:                                       ; preds = %do.body.259
  br label %for.inc.267

for.inc.267:                                      ; preds = %do.end.266
  %218 = load i32, i32* %j, align 4
  %inc268 = add nsw i32 %218, 1
  store i32 %inc268, i32* %j, align 4
  %219 = load i8*, i8** %d, align 8
  %add.ptr269 = getelementptr inbounds i8, i8* %219, i64 4
  store i8* %add.ptr269, i8** %d, align 8
  %220 = load i8*, i8** %cb, align 8
  %add.ptr270 = getelementptr inbounds i8, i8* %220, i64 3
  store i8* %add.ptr270, i8** %cb, align 8
  br label %for.cond.255

for.end.271:                                      ; preds = %for.cond.255
  %221 = load i32, i32* %rowstride, align 4
  %222 = load i8*, i8** %src, align 8
  %idx.ext272 = sext i32 %221 to i64
  %add.ptr273 = getelementptr inbounds i8, i8* %222, i64 %idx.ext272
  store i8* %add.ptr273, i8** %src, align 8
  br label %if.end.292

if.else.274:                                      ; preds = %land.lhs.true.129, %if.end.126
  store i32 0, i32* %j, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.287, %if.else.274
  %223 = load i32, i32* %j, align 4
  %224 = load i32, i32* %dest_width.addr, align 4
  %cmp276 = icmp slt i32 %223, %224
  br i1 %cmp276, label %for.body.278, label %for.end.291

for.body.278:                                     ; preds = %for.cond.275
  br label %do.body.279

do.body.279:                                      ; preds = %for.body.278
  %225 = load i8*, i8** %cb, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %225, i64 2
  %226 = load i8, i8* %arrayidx280, align 1
  %227 = load i8*, i8** %d, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %227, i64 0
  store i8 %226, i8* %arrayidx281, align 1
  %228 = load i8*, i8** %cb, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %228, i64 1
  %229 = load i8, i8* %arrayidx282, align 1
  %230 = load i8*, i8** %d, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 %229, i8* %arrayidx283, align 1
  %231 = load i8*, i8** %cb, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %231, i64 0
  %232 = load i8, i8* %arrayidx284, align 1
  %233 = load i8*, i8** %d, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %233, i64 2
  store i8 %232, i8* %arrayidx285, align 1
  br label %do.end.286

do.end.286:                                       ; preds = %do.body.279
  br label %for.inc.287

for.inc.287:                                      ; preds = %do.end.286
  %234 = load i32, i32* %j, align 4
  %inc288 = add nsw i32 %234, 1
  store i32 %inc288, i32* %j, align 4
  %235 = load i8*, i8** %d, align 8
  %add.ptr289 = getelementptr inbounds i8, i8* %235, i64 4
  store i8* %add.ptr289, i8** %d, align 8
  %236 = load i8*, i8** %cb, align 8
  %add.ptr290 = getelementptr inbounds i8, i8* %236, i64 3
  store i8* %add.ptr290, i8** %cb, align 8
  br label %for.cond.275

for.end.291:                                      ; preds = %for.cond.275
  br label %if.end.292

if.end.292:                                       ; preds = %for.end.291, %for.end.271
  %237 = load i32, i32* %dest_stride, align 4
  %238 = load i8*, i8** %dest, align 8
  %idx.ext293 = sext i32 %237 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %238, i64 %idx.ext293
  store i8* %add.ptr294, i8** %dest, align 8
  br label %for.inc.295

for.inc.295:                                      ; preds = %if.end.292
  %239 = load i32, i32* %i, align 4
  %inc296 = add nsw i32 %239, 1
  store i32 %inc296, i32* %i, align 4
  br label %for.cond

for.end.297:                                      ; preds = %for.cond
  %240 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %240)
  br label %return

return:                                           ; preds = %for.end.297, %if.then.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_render_pixbuf(%struct._GimpViewRenderer* %renderer, %struct._GdkPixbuf* %pixbuf) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 10
  %1 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool = icmp ne %struct._cairo_surface* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 10
  %3 = load %struct._cairo_surface*, %struct._cairo_surface** %surface1, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %3)
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %6 = bitcast %struct._GdkPixbuf* %5 to i8*
  %call = call i8* @g_object_ref(i8* %6)
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 12
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf3, align 8
  %tobool4 = icmp ne %struct._GdkPixbuf* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 12
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf6, align 8
  %11 = bitcast %struct._GdkPixbuf* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %pixbuf8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 12
  store %struct._GdkPixbuf* %12, %struct._GdkPixbuf** %pixbuf8, align 8
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 15
  store i32 0, i32* %needs_render, align 4
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare i32 @gimp_get_icon_size(%struct._GtkWidget*, i8*, i32, i32, i32) #1

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf*, i32, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_class_init(%struct._GimpViewRendererClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpViewRendererClass* %klass, %struct._GimpViewRendererClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpViewRendererClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i64 %5, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @renderer_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_view_renderer_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_view_renderer_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %update = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %8, i32 0, i32 6
  store void (%struct._GimpViewRenderer*)* null, void (%struct._GimpViewRenderer*)** %update, align 8
  %9 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %9, i32 0, i32 7
  store void (%struct._GimpViewRenderer*, %struct._GimpContext*)* @gimp_view_renderer_real_set_context, void (%struct._GimpViewRenderer*, %struct._GimpContext*)** %set_context, align 8
  %10 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %invalidate = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %10, i32 0, i32 8
  store void (%struct._GimpViewRenderer*)* @gimp_view_renderer_real_invalidate, void (%struct._GimpViewRenderer*)** %invalidate, align 8
  %11 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %draw = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %11, i32 0, i32 9
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)* @gimp_view_renderer_real_draw, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)** %draw, align 8
  %12 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %12, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_real_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  %13 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %frame = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %13, i32 0, i32 1
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %frame, align 8
  %14 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %frame_left = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %14, i32 0, i32 2
  store i32 0, i32* %frame_left, align 4
  %15 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %frame_right = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %15, i32 0, i32 3
  store i32 0, i32* %frame_right, align 4
  %16 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %frame_top = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %16, i32 0, i32 5
  store i32 0, i32* %frame_top, align 4
  %17 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %klass.addr, align 8
  %frame_bottom = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %17, i32 0, i32 4
  store i32 0, i32* %frame_bottom, align 4
  call void @gimp_rgba_set(%struct._GimpRGB* @black_color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* @white_color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* @green_color, double 0.000000e+00, double 9.400000e-01, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* @red_color, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_dispose(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRenderer*
  store %struct._GimpViewRenderer* %2, %struct._GimpViewRenderer** %renderer, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %5, %struct._GimpViewable* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 1
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool2 = icmp ne %struct._GimpContext* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %8, %struct._GimpContext* null)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %9)
  %10 = load i8*, i8** @gimp_view_renderer_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRenderer*
  store %struct._GimpViewRenderer* %2, %struct._GimpViewRenderer** %renderer, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pattern = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 11
  %4 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  %tobool = icmp ne %struct._cairo_pattern* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pattern2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 11
  %6 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern2, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %6)
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pattern3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 11
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %pattern3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 10
  %9 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool4 = icmp ne %struct._cairo_surface* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %surface6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 10
  %11 = load %struct._cairo_surface*, %struct._cairo_surface** %surface6, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %11)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %surface7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 10
  store %struct._cairo_surface* null, %struct._cairo_surface** %surface7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pixbuf = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 12
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool9 = icmp ne %struct._GdkPixbuf* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pixbuf11 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 12
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf11, align 8
  %17 = bitcast %struct._GdkPixbuf* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %pixbuf12 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 12
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %bg_stock_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 13
  %20 = load i8*, i8** %bg_stock_id, align 8
  %tobool14 = icmp ne i8* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %bg_stock_id16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 13
  %22 = load i8*, i8** %bg_stock_id16, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %bg_stock_id17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 13
  store i8* null, i8** %bg_stock_id17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %24 = load i8*, i8** @gimp_view_renderer_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 80)
  %26 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %26, i32 0, i32 6
  %27 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %27(%struct._GObject* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_real_set_context(%struct._GimpViewRenderer* %renderer, %struct._GimpContext* %context) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context1, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 1
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  call void @g_object_unref(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 1
  store %struct._GimpContext* %5, %struct._GimpContext** %context3, align 8
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %tobool5 = icmp ne %struct._GimpContext* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %11 = bitcast %struct._GimpContext* %10 to i8*
  %call = call i8* @g_object_ref(i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_real_invalidate(%struct._GimpViewRenderer* %renderer) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 15
  store i32 1, i32* %needs_render, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_real_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 3
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 1
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 4
  %5 = load i32, i32* %width, align 4
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 5
  %7 = load i32, i32* %height, align 4
  %call = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %1, %struct._GimpContext* %3, i32 %5, i32 %7)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gimp_view_renderer_render_pixbuf(%struct._GimpViewRenderer* %9, %struct._GdkPixbuf* %10)
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 3
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable1, align 8
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 1
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 4
  %16 = load i32, i32* %width3, align 4
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 5
  %18 = load i32, i32* %height4, align 4
  %call5 = call %struct._TempBuf* @gimp_viewable_get_preview(%struct._GimpViewable* %12, %struct._GimpContext* %14, i32 %16, i32 %18)
  store %struct._TempBuf* %call5, %struct._TempBuf** %temp_buf, align 8
  %19 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %tobool6 = icmp ne %struct._TempBuf* %19, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %21 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @gimp_view_renderer_render_temp_buf_simple(%struct._GimpViewRenderer* %20, %struct._TempBuf* %21)
  br label %return

if.end.8:                                         ; preds = %if.end
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable9 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 3
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable9, align 8
  %call10 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %23)
  store i8* %call10, i8** %stock_id, align 8
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %26 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %24, %struct._GtkWidget* %25, i8* %26)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #1

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare %struct._TempBuf* @gimp_viewable_get_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @gimp_view_renderer_type_from_viewable_type(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct._cairo_pattern* @gimp_view_renderer_create_background(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #2 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pattern = alloca %struct._cairo_pattern*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %pattern, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 13
  %1 = load i8*, i8** %bg_stock_id, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %bg_stock_id1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 13
  %4 = load i8*, i8** %bg_stock_id1, align 8
  %call = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %2, i8* %4, i32 6, i8* null)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool2 = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call4 = call %struct._cairo_surface* @gimp_cairo_surface_create_from_pixbuf(%struct._GdkPixbuf* %6)
  store %struct._cairo_surface* %call4, %struct._cairo_surface** %surface, align 8
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %8 = bitcast %struct._GdkPixbuf* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call5 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %9)
  store %struct._cairo_pattern* %call5, %struct._cairo_pattern** %pattern, align 8
  %10 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_set_extend(%struct._cairo_pattern* %10, i32 1)
  %11 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %12 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  ret %struct._cairo_pattern* %12
}

declare void @cairo_set_source(%struct._cairo*, %struct._cairo_pattern*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare i32 @cairo_surface_get_content(%struct._cairo_surface*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo*, i32, %struct._GimpRGB*, %struct._GimpRGB*) #1

declare %struct._GimpRGB* @gimp_render_light_check_color() #1

declare %struct._GimpRGB* @gimp_render_dark_check_color() #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare %struct._cairo_surface* @gimp_cairo_surface_create_from_pixbuf(%struct._GdkPixbuf*) #1

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #1

declare void @cairo_pattern_set_extend(%struct._cairo_pattern*, i32) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
