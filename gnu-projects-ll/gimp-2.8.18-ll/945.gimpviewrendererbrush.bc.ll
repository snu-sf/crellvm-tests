; ModuleID = './app/widgets/gimpviewrendererbrush.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererBrushClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpContext = type opaque
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
%struct._GimpViewRendererBrush = type { %struct._GimpViewRenderer, i32, i32 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpBrushPipe = type { %struct._GimpBrush, i32, i32*, i32*, i32*, i32*, i32, %struct._GimpBrush**, %struct._GimpBrush* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque

@gimp_view_renderer_brush_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpViewRendererBrush\00", align 1
@gimp_view_renderer_brush_parent_class = internal global i8* null, align 8
@GimpViewRendererBrush_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_brush_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_brush_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_brush_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_renderer_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_brush_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererBrush*)* @gimp_view_renderer_brush_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_brush_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_brush_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_brush_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererBrush_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererBrush_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererBrushClass*
  call void @gimp_view_renderer_brush_class_init(%struct._GimpViewRendererBrushClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_init(%struct._GimpViewRendererBrush* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererBrush*, align 8
  store %struct._GimpViewRendererBrush* %renderer, %struct._GimpViewRendererBrush** %renderer.addr, align 8
  %0 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderer.addr, align 8
  %pipe_timeout_id = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %0, i32 0, i32 1
  store i32 0, i32* %pipe_timeout_id, align 4
  %1 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderer.addr, align 8
  %pipe_animation_index = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %1, i32 0, i32 2
  store i32 0, i32* %pipe_animation_index, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_class_init(%struct._GimpViewRendererBrushClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererBrushClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererBrushClass* %klass, %struct._GimpViewRendererBrushClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererBrushClass*, %struct._GimpViewRendererBrushClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererBrushClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpViewRendererBrushClass*, %struct._GimpViewRendererBrushClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpViewRendererBrushClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_view_renderer_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %5, %struct._GimpViewRendererClass** %renderer_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_view_renderer_brush_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %7, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_brush_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  %8 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %draw = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %8, i32 0, i32 9
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)* @gimp_view_renderer_brush_draw, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %renderer = alloca %struct._GimpViewRendererBrush*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_brush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererBrush*
  store %struct._GimpViewRendererBrush* %2, %struct._GimpViewRendererBrush** %renderer, align 8
  %3 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderer, align 8
  %pipe_timeout_id = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %3, i32 0, i32 1
  %4 = load i32, i32* %pipe_timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderer, align 8
  %pipe_timeout_id2 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %5, i32 0, i32 1
  %6 = load i32, i32* %pipe_timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderer, align 8
  %pipe_timeout_id4 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %7, i32 0, i32 1
  store i32 0, i32* %pipe_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_view_renderer_brush_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %renderbrush = alloca %struct._GimpViewRendererBrush*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_brush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererBrush*
  store %struct._GimpViewRendererBrush* %2, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %3 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_timeout_id = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %3, i32 0, i32 1
  %4 = load i32, i32* %pipe_timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_timeout_id2 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %5, i32 0, i32 1
  %6 = load i32, i32* %pipe_timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_timeout_id4 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %7, i32 0, i32 1
  store i32 0, i32* %pipe_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 3
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 1
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 4
  %13 = load i32, i32* %width, align 4
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 5
  %15 = load i32, i32* %height, align 4
  %call5 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %9, %struct._GimpContext* %11, i32 %13, i32 %15)
  store %struct._TempBuf* %call5, %struct._TempBuf** %temp_buf, align 8
  %16 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %width6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 1
  %17 = load i32, i32* %width6, align 4
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 4
  %19 = load i32, i32* %width7, align 4
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 4
  %21 = load i32, i32* %width9, align 4
  %22 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %width10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 1
  %23 = load i32, i32* %width10, align 4
  %sub = sub nsw i32 %21, %23
  %div = sdiv i32 %sub, 2
  %24 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 3
  store i32 %div, i32* %x, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %25 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %height12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %25, i32 0, i32 2
  %26 = load i32, i32* %height12, align 4
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 5
  %28 = load i32, i32* %height13, align 4
  %cmp14 = icmp slt i32 %26, %28
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.11
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %29, i32 0, i32 5
  %30 = load i32, i32* %height16, align 4
  %31 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %height17 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 2
  %32 = load i32, i32* %height17, align 4
  %sub18 = sub nsw i32 %30, %32
  %div19 = sdiv i32 %sub18, 2
  %33 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %33, i32 0, i32 4
  store i32 %div19, i32* %y, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end.11
  %34 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %34, i32 0, i32 7
  %bf.load = load i8, i8* %is_popup, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool21 = icmp ne i32 %bf.cast, 0
  br i1 %tobool21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %if.end.20
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %36 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %35, %struct._TempBuf* %36, i32 -1, i32 1, i32 1)
  %37 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %37)
  %38 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable23 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %38, i32 0, i32 3
  %39 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable23, align 8
  %40 = bitcast %struct._GimpViewable* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst, align 8
  %call24 = call i64 @gimp_brush_pipe_get_type() #5
  store i64 %call24, i64* %__t, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %if.then.22
  store i32 0, i32* %__r, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.22
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool27, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %if.else
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %47 = load i64, i64* %__t, align 8
  %cmp29 = icmp eq i64 %46, %47
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true, %if.else
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %49 = load i64, i64* %__t, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #6
  store i32 %call32, i32* %__r, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.26
  %50 = load i32, i32* %__r, align 4
  store i32 %50, i32* %tmp
  %51 = load i32, i32* %tmp
  %tobool35 = icmp ne i32 %51, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.34
  %52 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %52, i32 0, i32 2
  store i32 0, i32* %pipe_animation_index, align 4
  %53 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %54 = bitcast %struct._GimpViewRendererBrush* %53 to i8*
  %call37 = call i32 @g_timeout_add(i32 300, i32 (i8*)* @gimp_view_renderer_brush_render_timeout, i8* %54)
  %55 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_timeout_id38 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %55, i32 0, i32 1
  store i32 %call37, i32* %pipe_timeout_id38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.34
  br label %return

if.end.40:                                        ; preds = %if.end.20
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %57 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %56, %struct._TempBuf* %57, i32 -1, i32 1, i32 1)
  %58 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %58)
  br label %return

return:                                           ; preds = %if.end.40, %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_brush_draw(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, %struct._cairo* %cr, i32 %available_width, i32 %available_height) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %available_width.addr = alloca i32, align 4
  %available_height.addr = alloca i32, align 4
  %pipe = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %generated = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %brush_width = alloca i32, align 4
  %brush_height = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %available_width, i32* %available_width.addr, align 4
  store i32 %available_height, i32* %available_height.addr, align 4
  %0 = load i8*, i8** @gimp_view_renderer_brush_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  %draw = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %2, i32 0, i32 9
  %3 = load void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)** %draw, align 8
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %available_width.addr, align 4
  %8 = load i32, i32* %available_height.addr, align 4
  call void %3(%struct._GimpViewRenderer* %4, %struct._GtkWidget* %5, %struct._cairo* %6, i32 %7, i32 %8)
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 4
  %10 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %10, 14
  br i1 %cmp, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 5
  %12 = load i32, i32* %height, align 4
  %cmp2 = icmp sgt i32 %12, 14
  br i1 %cmp2, label %if.then, label %if.end.67

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_brush_pipe_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.else.10

land.lhs.true.6:                                  ; preds = %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %22 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %21, %22
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true.6, %if.else
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %24 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  %25 = load i32, i32* %__r, align 4
  store i32 %25, i32* %tmp
  %26 = load i32, i32* %tmp
  store i32 %26, i32* %pipe, align 4
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 3
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable16, align 8
  %29 = bitcast %struct._GimpViewable* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst15, align 8
  %call19 = call i64 @gimp_brush_generated_get_type() #5
  store i64 %call19, i64* %__t18, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.12
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %if.end.12
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type29, align 8
  %36 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %35, %36
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %38 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %39 = load i32, i32* %__r21, align 4
  store i32 %39, i32* %tmp36
  %40 = load i32, i32* %tmp36
  store i32 %40, i32* %generated, align 4
  %41 = load i32, i32* %generated, align 4
  %tobool39 = icmp ne i32 %41, 0
  br i1 %tobool39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %42 = load i32, i32* %pipe, align 4
  %tobool40 = icmp ne i32 %42, 0
  br i1 %tobool40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.35
  %43 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %44 = load i32, i32* %available_width.addr, align 4
  %conv = sitofp i32 %44 to double
  %45 = load i32, i32* %available_height.addr, align 4
  %conv42 = sitofp i32 %45 to double
  call void @cairo_move_to(%struct._cairo* %43, double %conv, double %conv42)
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_rel_line_to(%struct._cairo* %46, double -7.000000e+00, double 0.000000e+00)
  %47 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_rel_line_to(%struct._cairo* %47, double 7.000000e+00, double -7.000000e+00)
  %48 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_rel_line_to(%struct._cairo* %48, double 0.000000e+00, double 7.000000e+00)
  %49 = load i32, i32* %pipe, align 4
  %tobool43 = icmp ne i32 %49, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.41
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %50, double 1.000000e+00, double 5.000000e-01, double 5.000000e-01)
  br label %if.end.46

if.else.45:                                       ; preds = %if.then.41
  %51 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %51, double 5.000000e-01, double 6.000000e-01, double 1.000000e+00)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.44
  %52 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %52)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %lor.lhs.false
  %53 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable48 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %53, i32 0, i32 3
  %54 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable48, align 8
  %call49 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %54, i32* %brush_width, i32* %brush_height)
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width50 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %55, i32 0, i32 4
  %56 = load i32, i32* %width50, align 4
  %57 = load i32, i32* %brush_width, align 4
  %cmp51 = icmp slt i32 %56, %57
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.end.47
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height54 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %58, i32 0, i32 5
  %59 = load i32, i32* %height54, align 4
  %60 = load i32, i32* %brush_height, align 4
  %cmp55 = icmp slt i32 %59, %60
  br i1 %cmp55, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %lor.lhs.false.53, %if.end.47
  %61 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %62 = load i32, i32* %available_width.addr, align 4
  %sub = sub nsw i32 %62, 7
  %add = add nsw i32 %sub, 1
  %conv58 = sitofp i32 %add to double
  %63 = load i32, i32* %available_height.addr, align 4
  %conv59 = sitofp i32 %63 to double
  %sub60 = fsub double %conv59, 3.500000e+00
  call void @cairo_move_to(%struct._cairo* %61, double %conv58, double %sub60)
  %64 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_rel_line_to(%struct._cairo* %64, double 5.000000e+00, double 0.000000e+00)
  %65 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %66 = load i32, i32* %available_width.addr, align 4
  %conv61 = sitofp i32 %66 to double
  %sub62 = fsub double %conv61, 3.500000e+00
  %67 = load i32, i32* %available_height.addr, align 4
  %sub63 = sub nsw i32 %67, 7
  %add64 = add nsw i32 %sub63, 1
  %conv65 = sitofp i32 %add64 to double
  call void @cairo_move_to(%struct._cairo* %65, double %sub62, double %conv65)
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_rel_line_to(%struct._cairo* %68, double 0.000000e+00, double 5.000000e+00)
  %69 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %69, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %70 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %70, double 1.000000e+00)
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %71)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.57, %lor.lhs.false.53
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_source_remove(i32) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer*, %struct._TempBuf*, i32, i32, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_pipe_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_view_renderer_brush_render_timeout(i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %renderbrush = alloca %struct._GimpViewRendererBrush*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %brush_pipe = alloca %struct._GimpBrushPipe*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_brush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererBrush*
  store %struct._GimpViewRendererBrush* %2, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_renderer_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpViewRenderer*
  store %struct._GimpViewRenderer* %5, %struct._GimpViewRenderer** %renderer, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 3
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_timeout_id = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %8, i32 0, i32 1
  store i32 0, i32* %pipe_timeout_id, align 4
  %9 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %9, i32 0, i32 2
  store i32 0, i32* %pipe_animation_index, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 3
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable4, align 8
  %12 = bitcast %struct._GimpViewable* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_brush_pipe_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %13, %struct._GimpBrushPipe** %brush_pipe, align 8
  %14 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index7 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %14, i32 0, i32 2
  %15 = load i32, i32* %pipe_animation_index7, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %pipe_animation_index7, align 4
  %16 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index8 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %16, i32 0, i32 2
  %17 = load i32, i32* %pipe_animation_index8, align 4
  %18 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %brush_pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %18, i32 0, i32 6
  %19 = load i32, i32* %n_brushes, align 4
  %cmp = icmp sge i32 %17, %19
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %20 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index10 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %20, i32 0, i32 2
  store i32 0, i32* %pipe_animation_index10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %21 = load %struct._GimpViewRendererBrush*, %struct._GimpViewRendererBrush** %renderbrush, align 8
  %pipe_animation_index12 = getelementptr inbounds %struct._GimpViewRendererBrush, %struct._GimpViewRendererBrush* %21, i32 0, i32 2
  %22 = load i32, i32* %pipe_animation_index12, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %brush_pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %23, i32 0, i32 7
  %24 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %24, i64 %idxprom
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx, align 8
  %26 = bitcast %struct._GimpBrush* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_brush_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpBrush*
  store %struct._GimpBrush* %27, %struct._GimpBrush** %brush, align 8
  %28 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %29 = bitcast %struct._GimpBrush* %28 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_viewable_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call15)
  %30 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewable*
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %31, i32 0, i32 1
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 4
  %34 = load i32, i32* %width, align 4
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %35, i32 0, i32 5
  %36 = load i32, i32* %height, align 4
  %call17 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %30, %struct._GimpContext* %32, i32 %34, i32 %36)
  store %struct._TempBuf* %call17, %struct._TempBuf** %temp_buf, align 8
  %37 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %width18 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 1
  %38 = load i32, i32* %width18, align 4
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width19 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %39, i32 0, i32 4
  %40 = load i32, i32* %width19, align 4
  %cmp20 = icmp slt i32 %38, %40
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.11
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width22 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %41, i32 0, i32 4
  %42 = load i32, i32* %width22, align 4
  %43 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %width23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %43, i32 0, i32 1
  %44 = load i32, i32* %width23, align 4
  %sub = sub nsw i32 %42, %44
  %div = sdiv i32 %sub, 2
  %45 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %45, i32 0, i32 3
  store i32 %div, i32* %x, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.11
  %46 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %height25 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %46, i32 0, i32 2
  %47 = load i32, i32* %height25, align 4
  %48 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %height26 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %48, i32 0, i32 5
  %49 = load i32, i32* %height26, align 4
  %cmp27 = icmp slt i32 %47, %49
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.24
  %50 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %height29 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %50, i32 0, i32 5
  %51 = load i32, i32* %height29, align 4
  %52 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %height30 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %52, i32 0, i32 2
  %53 = load i32, i32* %height30, align 4
  %sub31 = sub nsw i32 %51, %53
  %div32 = sdiv i32 %sub31, 2
  %54 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %54, i32 0, i32 4
  store i32 %div32, i32* %y, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.end.24
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %56 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %55, %struct._TempBuf* %56, i32 -1, i32 1, i32 1)
  %57 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %57)
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %58)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_view_renderer_update(%struct._GimpViewRenderer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_rel_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
