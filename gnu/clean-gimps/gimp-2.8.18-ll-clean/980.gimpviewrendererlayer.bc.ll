; ModuleID = './app/widgets/gimpviewrendererlayer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererLayerClass = type { %struct._GimpViewRendererDrawableClass }
%struct._GimpViewRendererDrawableClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererLayer = type { %struct._GimpViewRendererDrawable }
%struct._GimpViewRendererDrawable = type { %struct._GimpViewRenderer }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@gimp_view_renderer_layer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpViewRendererLayer\00", align 1
@gimp_view_renderer_layer_parent_class = internal global i8* null, align 8
@GimpViewRendererLayer_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-floating-selection\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gtk-directory\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_layer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_layer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_layer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_renderer_drawable_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_layer_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererLayer*)* @gimp_view_renderer_layer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_layer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_layer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_drawable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_layer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_layer_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererLayer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererLayer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererLayerClass*
  call void @gimp_view_renderer_layer_class_init(%struct._GimpViewRendererLayerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_layer_init(%struct._GimpViewRendererLayer* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererLayer*, align 8
  store %struct._GimpViewRendererLayer* %renderer, %struct._GimpViewRendererLayer** %renderer.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_layer_class_init(%struct._GimpViewRendererLayerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererLayerClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererLayerClass* %klass, %struct._GimpViewRendererLayerClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererLayerClass*, %struct._GimpViewRendererLayerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererLayerClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_layer_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_layer_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %stock_id = alloca i8*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* null, i8** %stock_id, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 3
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  %call2 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end.18

if.else:                                          ; preds = %entry
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 3
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable3, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable9 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 3
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable9, align 8
  %call10 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %9)
  store i8* %call10, i8** %stock_id, align 8
  br label %if.end.17

if.else.11:                                       ; preds = %if.else
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable12 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 3
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable12, align 8
  %call13 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %11)
  store %struct._GimpContainer* %call13, %struct._GimpContainer** %children, align 8
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool14 = icmp ne %struct._GimpContainer* %12, null
  br i1 %tobool14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.11
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %call15 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %13)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true, %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %14 = load i8*, i8** %stock_id, align 8
  %tobool19 = icmp ne i8* %14, null
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %15, %struct._GtkWidget* %16, i8* %17)
  br label %if.end.24

if.else.21:                                       ; preds = %if.end.18
  %18 = load i8*, i8** @gimp_view_renderer_layer_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call22 = call i64 @gimp_view_renderer_get_type() #4
  %call23 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call22)
  %20 = bitcast %struct._GTypeClass* %call23 to %struct._GimpViewRendererClass*
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %20, i32 0, i32 10
  %21 = load void (%struct._GimpViewRenderer*, %struct._GtkWidget*)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %21(%struct._GimpViewRenderer* %22, %struct._GtkWidget* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  ret void
}

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer*, %struct._GtkWidget*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
