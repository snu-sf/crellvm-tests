; ModuleID = './app/widgets/gimpviewrendererbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererBufferClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererBuffer = type { %struct._GimpViewRenderer }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }

@gimp_view_renderer_buffer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpViewRendererBuffer\00", align 1
@gimp_view_renderer_buffer_parent_class = internal global i8* null, align 8
@GimpViewRendererBuffer_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_buffer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_buffer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_renderer_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_buffer_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererBuffer*)* @gimp_view_renderer_buffer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_buffer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_buffer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_buffer_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererBuffer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererBuffer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererBufferClass*
  call void @gimp_view_renderer_buffer_class_init(%struct._GimpViewRendererBufferClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_buffer_init(%struct._GimpViewRendererBuffer* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererBuffer*, align 8
  store %struct._GimpViewRendererBuffer* %renderer, %struct._GimpViewRendererBuffer** %renderer.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_buffer_class_init(%struct._GimpViewRendererBufferClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererBufferClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererBufferClass* %klass, %struct._GimpViewRendererBufferClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererBufferClass*, %struct._GimpViewRendererBufferClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererBufferClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_buffer_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_buffer_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %buffer_width = alloca i32, align 4
  %buffer_height = alloca i32, align 4
  %view_width = alloca i32, align 4
  %view_height = alloca i32, align 4
  %scaling_up = alloca i32, align 4
  %render_buf = alloca %struct._TempBuf*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %render_buf, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 3
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %1, i32* %buffer_width, i32* %buffer_height)
  %2 = load i32, i32* %buffer_width, align 4
  %3 = load i32, i32* %buffer_height, align 4
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 4
  %5 = load i32, i32* %width, align 4
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 5
  %7 = load i32, i32* %height, align 4
  call void @gimp_viewable_calc_preview_size(i32 %2, i32 %3, i32 %5, i32 %7, i32 1, double 1.000000e+00, double 1.000000e+00, i32* %view_width, i32* %view_height, i32* %scaling_up)
  %8 = load i32, i32* %scaling_up, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable1 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 3
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable1, align 8
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 1
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load i32, i32* %buffer_width, align 4
  %14 = load i32, i32* %buffer_height, align 4
  %call2 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %10, %struct._GimpContext* %12, i32 %13, i32 %14)
  store %struct._TempBuf* %call2, %struct._TempBuf** %temp_buf, align 8
  %15 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %tobool3 = icmp ne %struct._TempBuf* %15, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %16 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %17 = load i32, i32* %view_width, align 4
  %18 = load i32, i32* %view_height, align 4
  %call5 = call %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %16, i32 %17, i32 %18)
  store %struct._TempBuf* %call5, %struct._TempBuf** %render_buf, align 8
  %19 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 3
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable6, align 8
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context7 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 1
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %24 = load i32, i32* %view_width, align 4
  %25 = load i32, i32* %view_height, align 4
  %call8 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %21, %struct._GimpContext* %23, i32 %24, i32 %25)
  store %struct._TempBuf* %call8, %struct._TempBuf** %render_buf, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %26 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %tobool10 = icmp ne %struct._TempBuf* %26, null
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %28 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @gimp_view_renderer_render_temp_buf_simple(%struct._GimpViewRenderer* %27, %struct._TempBuf* %28)
  %29 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %29)
  br label %if.end.15

if.else.12:                                       ; preds = %if.end.9
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %30, i32 0, i32 3
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable13, align 8
  %call14 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %31)
  store i8* %call14, i8** %stock_id, align 8
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %34 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %32, %struct._GtkWidget* %33, i8* %34)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.11
  ret void
}

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare %struct._TempBuf* @temp_buf_scale(%struct._TempBuf*, i32, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare void @gimp_view_renderer_render_temp_buf_simple(%struct._GimpViewRenderer*, %struct._TempBuf*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer*, %struct._GtkWidget*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
