; ModuleID = './app/widgets/gimpviewrenderervectors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererVectorsClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererVectors = type { %struct._GimpViewRenderer }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }

@gimp_view_renderer_vectors_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpViewRendererVectors\00", align 1
@gimp_view_renderer_vectors_parent_class = internal global i8* null, align 8
@GimpViewRendererVectors_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_vectors_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_vectors_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_vectors_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererVectors*)* @gimp_view_renderer_vectors_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_vectors_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_vectors_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_vectors_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_vectors_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererVectors_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererVectors_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererVectorsClass*
  call void @gimp_view_renderer_vectors_class_init(%struct._GimpViewRendererVectorsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_vectors_init(%struct._GimpViewRendererVectors* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererVectors*, align 8
  store %struct._GimpViewRendererVectors* %renderer, %struct._GimpViewRendererVectors** %renderer.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_vectors_class_init(%struct._GimpViewRendererVectorsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererVectorsClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererVectorsClass* %klass, %struct._GimpViewRendererVectorsClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererVectorsClass*, %struct._GimpViewRendererVectorsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererVectorsClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %draw = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 9
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)* @gimp_view_renderer_vectors_draw, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_vectors_draw(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, %struct._cairo* %cr, i32 %available_width, i32 %available_height) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %available_width.addr = alloca i32, align 4
  %available_height.addr = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %desc = alloca %struct.cairo_path*, align 8
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %available_width, i32* %available_width.addr, align 4
  store i32 %available_height, i32* %available_height.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %1, i32 0, i32 3
  %2 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %3 = bitcast %struct._GimpViewable* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_vectors_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpVectors*
  store %struct._GimpVectors* %4, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %6, i32 0, i32 10
  call void @gdk_cairo_set_source_color(%struct._cairo* %5, %struct._GdkColor* %white)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load i32, i32* %available_width.addr, align 4
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 4
  %10 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %8, %10
  %div = sdiv i32 %sub, 2
  %conv = sitofp i32 %div to double
  %11 = load i32, i32* %available_height.addr, align 4
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 5
  %13 = load i32, i32* %height, align 4
  %sub3 = sub nsw i32 %11, %13
  %div4 = sdiv i32 %sub3, 2
  %conv5 = sitofp i32 %div4 to double
  call void @cairo_translate(%struct._cairo* %7, double %conv, double %conv5)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 4
  %16 = load i32, i32* %width6, align 4
  %conv7 = sitofp i32 %16 to double
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 5
  %18 = load i32, i32* %height8, align 4
  %conv9 = sitofp i32 %18 to double
  call void @cairo_rectangle(%struct._cairo* %14, double 0.000000e+00, double 0.000000e+00, double %conv7, double %conv9)
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip_preserve(%struct._cairo* %19)
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %20)
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call10 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %21)
  store %struct.cairo_path* %call10, %struct.cairo_path** %desc, align 8
  %22 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  %tobool = icmp ne %struct.cairo_path* %22, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width11 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 4
  %24 = load i32, i32* %width11, align 4
  %conv12 = sitofp i32 %24 to double
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %26 = bitcast %struct._GimpVectors* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %conv16 = sitofp i32 %call15 to double
  %div17 = fdiv double %conv12, %conv16
  store double %div17, double* %xscale, align 8
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height18 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %28, i32 0, i32 5
  %29 = load i32, i32* %height18, align 4
  %conv19 = sitofp i32 %29 to double
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %31 = bitcast %struct._GimpVectors* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %conv23 = sitofp i32 %call22 to double
  %div24 = fdiv double %conv19, %conv23
  store double %div24, double* %yscale, align 8
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %34 = load double, double* %xscale, align 8
  %35 = load double, double* %yscale, align 8
  call void @cairo_scale(%struct._cairo* %33, double %34, double %35)
  store double 5.000000e-01, double* %yscale, align 8
  store double 5.000000e-01, double* %xscale, align 8
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_device_to_user_distance(%struct._cairo* %36, double* %xscale, double* %yscale)
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %38 = load double, double* %xscale, align 8
  %39 = load double, double* %yscale, align 8
  %cmp = fcmp ogt double %38, %39
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %40 = load double, double* %xscale, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %41 = load double, double* %yscale, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ]
  call void @cairo_set_line_width(%struct._cairo* %37, double %cond)
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %43 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %43, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %42, %struct._GdkColor* %black)
  %44 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %45 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  call void @cairo_append_path(%struct._cairo* %44, %struct.cairo_path* %45)
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %46)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret void
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_clip_preserve(%struct._cairo*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_device_to_user_distance(%struct._cairo*, double*, double*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_append_path(%struct._cairo*, %struct.cairo_path*) #1

declare void @cairo_stroke(%struct._cairo*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
