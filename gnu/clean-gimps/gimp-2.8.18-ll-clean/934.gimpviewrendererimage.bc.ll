; ModuleID = './app/widgets/gimpviewrendererimage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererImageClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererImage = type { %struct._GimpViewRenderer, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }

@gimp_view_renderer_image_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpViewRendererImage\00", align 1
@gimp_view_renderer_image_parent_class = internal global i8* null, align 8
@GimpViewRendererImage_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-channel-red\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gimp-channel-green\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gimp-channel-blue\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"gimp-channel-gray\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimp-channel-indexed\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"gimp-channel-alpha\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_image_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_image_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_image_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_image_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererImage*)* @gimp_view_renderer_image_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_image_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_image_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_image_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_image_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererImage_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererImage_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererImageClass*
  call void @gimp_view_renderer_image_class_init(%struct._GimpViewRendererImageClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_image_init(%struct._GimpViewRendererImage* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererImage*, align 8
  store %struct._GimpViewRendererImage* %renderer, %struct._GimpViewRendererImage** %renderer.addr, align 8
  %0 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %renderer.addr, align 8
  %channel = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %0, i32 0, i32 1
  store i32 -1, i32* %channel, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_image_class_init(%struct._GimpViewRendererImageClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererImageClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererImageClass* %klass, %struct._GimpViewRendererImageClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererImageClass*, %struct._GimpViewRendererImageClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererImageClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_image_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_image_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %rendererimage = alloca %struct._GimpViewRendererImage*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %stock_id = alloca i8*, align 8
  %view_width = alloca i32, align 4
  %view_height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %scaling_up = alloca i32, align 4
  %render_buf = alloca %struct._TempBuf*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %component_index = alloca i32, align 4
  %temp_buf31 = alloca %struct._TempBuf*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererImage*
  store %struct._GimpViewRendererImage* %2, %struct._GimpViewRendererImage** %rendererimage, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImage*
  store %struct._GimpImage* %6, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %rendererimage, align 8
  %channel = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %7, i32 0, i32 1
  %8 = load i32, i32* %channel, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %rendererimage, align 8
  %channel4 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %10, i32 0, i32 1
  %11 = load i32, i32* %channel4, align 4
  %call5 = call i32 @gimp_image_get_component_visible(%struct._GimpImage* %9, i32 %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_component_visible(%struct._GimpImage* %12, i32 5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.55

if.then:                                          ; preds = %land.lhs.true, %entry
  store %struct._TempBuf* null, %struct._TempBuf** %render_buf, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %13, double* %xres, double* %yres)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_get_width(%struct._GimpImage* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %15)
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 4
  %17 = load i32, i32* %width, align 4
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 5
  %19 = load i32, i32* %height, align 4
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 7
  %bf.load = load i8, i8* %dot_for_dot, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %21 = load double, double* %xres, align 8
  %22 = load double, double* %yres, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call8, i32 %call9, i32 %17, i32 %19, i32 %bf.cast, double %21, double %22, i32* %view_width, i32* %view_height, i32* %scaling_up)
  %23 = load i32, i32* %scaling_up, align 4
  %tobool10 = icmp ne i32 %23, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable12 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %24, i32 0, i32 3
  %25 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable12, align 8
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %26, i32 0, i32 1
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_width(%struct._GimpImage* %28)
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i32 @gimp_image_get_height(%struct._GimpImage* %29)
  %call15 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %25, %struct._GimpContext* %27, i32 %call13, i32 %call14)
  store %struct._TempBuf* %call15, %struct._TempBuf** %temp_buf, align 8
  %30 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %tobool16 = icmp ne %struct._TempBuf* %30, null
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.11
  %31 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %32 = load i32, i32* %view_width, align 4
  %33 = load i32, i32* %view_height, align 4
  %call18 = call %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %31, i32 %32, i32 %33)
  store %struct._TempBuf* %call18, %struct._TempBuf** %render_buf, align 8
  %34 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %34)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.11
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable19 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %35, i32 0, i32 3
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable19, align 8
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context20 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 1
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context20, align 8
  %39 = load i32, i32* %view_width, align 4
  %40 = load i32, i32* %view_height, align 4
  %call21 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %36, %struct._GimpContext* %38, i32 %39, i32 %40)
  store %struct._TempBuf* %call21, %struct._TempBuf** %render_buf, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.end
  %41 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %tobool23 = icmp ne %struct._TempBuf* %41, null
  br i1 %tobool23, label %if.then.24, label %if.end.54

if.then.24:                                       ; preds = %if.end.22
  store i32 -1, i32* %component_index, align 4
  %42 = load i32, i32* %view_width, align 4
  %43 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width25 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %43, i32 0, i32 4
  %44 = load i32, i32* %width25, align 4
  %cmp26 = icmp sgt i32 %42, %44
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.then.24
  %45 = load i32, i32* %view_height, align 4
  %46 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height28 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %46, i32 0, i32 5
  %47 = load i32, i32* %height28, align 4
  %cmp29 = icmp sgt i32 %45, %47
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.then.24
  %48 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %49 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width32 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %49, i32 0, i32 4
  %50 = load i32, i32* %width32, align 4
  %51 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height33 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %51, i32 0, i32 5
  %52 = load i32, i32* %height33, align 4
  %call34 = call %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %48, i32 %50, i32 %52)
  store %struct._TempBuf* %call34, %struct._TempBuf** %temp_buf31, align 8
  %53 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %53)
  %54 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf31, align 8
  store %struct._TempBuf* %54, %struct._TempBuf** %render_buf, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %lor.lhs.false.27
  %55 = load i32, i32* %view_width, align 4
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width36 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %56, i32 0, i32 4
  %57 = load i32, i32* %width36, align 4
  %cmp37 = icmp slt i32 %55, %57
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width39 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %58, i32 0, i32 4
  %59 = load i32, i32* %width39, align 4
  %60 = load i32, i32* %view_width, align 4
  %sub = sub nsw i32 %59, %60
  %div = sdiv i32 %sub, 2
  %61 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %61, i32 0, i32 3
  store i32 %div, i32* %x, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %62 = load i32, i32* %view_height, align 4
  %63 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height41 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %63, i32 0, i32 5
  %64 = load i32, i32* %height41, align 4
  %cmp42 = icmp slt i32 %62, %64
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.40
  %65 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height44 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %65, i32 0, i32 5
  %66 = load i32, i32* %height44, align 4
  %67 = load i32, i32* %view_height, align 4
  %sub45 = sub nsw i32 %66, %67
  %div46 = sdiv i32 %sub45, 2
  %68 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %68, i32 0, i32 4
  store i32 %div46, i32* %y, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.40
  %69 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %rendererimage, align 8
  %channel48 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %69, i32 0, i32 1
  %70 = load i32, i32* %channel48, align 4
  %cmp49 = icmp ne i32 %70, -1
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.47
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %72 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %rendererimage, align 8
  %channel51 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %72, i32 0, i32 1
  %73 = load i32, i32* %channel51, align 4
  %call52 = call i32 @gimp_image_get_component_index(%struct._GimpImage* %71, i32 %73)
  store i32 %call52, i32* %component_index, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.47
  %74 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %75 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %76 = load i32, i32* %component_index, align 4
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %74, %struct._TempBuf* %75, i32 %76, i32 0, i32 1)
  %77 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %77)
  br label %return

if.end.54:                                        ; preds = %if.end.22
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %lor.lhs.false
  %78 = load %struct._GimpViewRendererImage*, %struct._GimpViewRendererImage** %rendererimage, align 8
  %channel56 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %78, i32 0, i32 1
  %79 = load i32, i32* %channel56, align 4
  switch i32 %79, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.57
    i32 2, label %sw.bb.58
    i32 3, label %sw.bb.59
    i32 4, label %sw.bb.60
    i32 5, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.end.55
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.55
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.55
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.55
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.55
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.55
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.55
  %80 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable62 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %80, i32 0, i32 3
  %81 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable62, align 8
  %call63 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %81)
  store i8* %call63, i8** %stock_id, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb
  %82 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %84 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %82, %struct._GtkWidget* %83, i8* %84)
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.53
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_component_visible(%struct._GimpImage*, i32) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare %struct._TempBuf* @temp_buf_scale(%struct._TempBuf*, i32, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare i32 @gimp_image_get_component_index(%struct._GimpImage*, i32) #1

declare void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer*, %struct._TempBuf*, i32, i32, i32) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer*, %struct._GtkWidget*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
