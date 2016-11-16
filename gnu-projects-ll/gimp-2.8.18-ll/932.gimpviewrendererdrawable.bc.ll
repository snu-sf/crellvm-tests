; ModuleID = './app/widgets/gimpviewrendererdrawable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpViewRendererDrawable = type { %struct._GimpViewRenderer }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }

@gimp_view_renderer_drawable_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpViewRendererDrawable\00", align 1
@gimp_view_renderer_drawable_parent_class = internal global i8* null, align 8
@GimpViewRendererDrawable_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_drawable_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_drawable_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_drawable_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererDrawable*)* @gimp_view_renderer_drawable_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_drawable_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_drawable_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_drawable_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererDrawable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererDrawable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererDrawableClass*
  call void @gimp_view_renderer_drawable_class_init(%struct._GimpViewRendererDrawableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_drawable_init(%struct._GimpViewRendererDrawable* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererDrawable*, align 8
  store %struct._GimpViewRendererDrawable* %renderer, %struct._GimpViewRendererDrawable** %renderer.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_drawable_class_init(%struct._GimpViewRendererDrawableClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererDrawableClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererDrawableClass* %klass, %struct._GimpViewRendererDrawableClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererDrawableClass*, %struct._GimpViewRendererDrawableClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererDrawableClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_drawable_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_drawable_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %view_width = alloca i32, align 4
  %view_height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %scaling_up = alloca i32, align 4
  %render_buf = alloca %struct._TempBuf*, align 8
  %src_x = alloca i32, align 4
  %src_y = alloca i32, align 4
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %empty = alloca [4 x i8], align 1
  %temp_buf = alloca %struct._TempBuf*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double 1.000000e+00, double* %xres, align 8
  store double 1.000000e+00, double* %yres, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %render_buf, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %0, i32 0, i32 3
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %6, %struct._GimpItem** %item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %8, i32* %offset_x, i32* %offset_y)
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 4
  %10 = load i32, i32* %width5, align 4
  store i32 %10, i32* %width, align 4
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 5
  %12 = load i32, i32* %height6, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %14, double* %xres, double* %yres)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 7
  %bf.load = load i8, i8* %is_popup, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool8 = icmp ne i32 %bf.cast, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %width, align 4
  %conv = sitofp i32 %17 to double
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_width(%struct._GimpImage* %18)
  %conv11 = sitofp i32 %call10 to double
  %div = fdiv double %conv, %conv11
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %19)
  %conv13 = sitofp i32 %call12 to double
  %mul = fmul double %div, %conv13
  %add = fadd double %mul, 5.000000e-01
  %conv14 = fptosi double %add to i32
  %cmp = icmp sgt i32 1, %conv14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %20 = load i32, i32* %width, align 4
  %conv16 = sitofp i32 %20 to double
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %21)
  %conv18 = sitofp i32 %call17 to double
  %div19 = fdiv double %conv16, %conv18
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %22)
  %conv21 = sitofp i32 %call20 to double
  %mul22 = fmul double %div19, %conv21
  %add23 = fadd double %mul22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv24, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %conv25 = sitofp i32 %23 to double
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call i32 @gimp_image_get_height(%struct._GimpImage* %24)
  %conv27 = sitofp i32 %call26 to double
  %div28 = fdiv double %conv25, %conv27
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call29 = call i32 @gimp_item_get_height(%struct._GimpItem* %25)
  %conv30 = sitofp i32 %call29 to double
  %mul31 = fmul double %div28, %conv30
  %add32 = fadd double %mul31, 5.000000e-01
  %conv33 = fptosi double %add32 to i32
  %cmp34 = icmp sgt i32 1, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end
  br label %cond.end.47

cond.false.37:                                    ; preds = %cond.end
  %26 = load i32, i32* %height, align 4
  %conv38 = sitofp i32 %26 to double
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call39 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  %conv40 = sitofp i32 %call39 to double
  %div41 = fdiv double %conv38, %conv40
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call42 = call i32 @gimp_item_get_height(%struct._GimpItem* %28)
  %conv43 = sitofp i32 %call42 to double
  %mul44 = fmul double %div41, %conv43
  %add45 = fadd double %mul44, 5.000000e-01
  %conv46 = fptosi double %add45 to i32
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.37, %cond.true.36
  %cond48 = phi i32 [ 1, %cond.true.36 ], [ %conv46, %cond.false.37 ]
  store i32 %cond48, i32* %height, align 4
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 7
  %bf.load51 = load i8, i8* %dot_for_dot, align 4
  %bf.clear52 = and i8 %bf.load51, 1
  %bf.cast53 = zext i8 %bf.clear52 to i32
  %34 = load double, double* %xres, align 8
  %35 = load double, double* %yres, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call49, i32 %call50, i32 %31, i32 %32, i32 %bf.cast53, double %34, double %35, i32* %view_width, i32* %view_height, i32* %scaling_up)
  br label %if.end.60

if.else:                                          ; preds = %land.lhs.true, %if.end
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call54 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call55 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %dot_for_dot56 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %40, i32 0, i32 7
  %bf.load57 = load i8, i8* %dot_for_dot56, align 4
  %bf.clear58 = and i8 %bf.load57, 1
  %bf.cast59 = zext i8 %bf.clear58 to i32
  %41 = load double, double* %xres, align 8
  %42 = load double, double* %yres, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call54, i32 %call55, i32 %38, i32 %39, i32 %bf.cast59, double %41, double %42, i32* %view_width, i32* %view_height, i32* %scaling_up)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %cond.end.47
  %43 = load i32, i32* %view_width, align 4
  %44 = load i32, i32* %view_height, align 4
  %mul61 = mul nsw i32 %43, %44
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call62 = call i32 @gimp_item_get_width(%struct._GimpItem* %45)
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call63 = call i32 @gimp_item_get_height(%struct._GimpItem* %46)
  %mul64 = mul nsw i32 %call62, %call63
  %mul65 = mul nsw i32 %mul64, 4
  %cmp66 = icmp slt i32 %mul61, %mul65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.60
  store i32 0, i32* %scaling_up, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.60
  %47 = load i32, i32* %scaling_up, align 4
  %tobool70 = icmp ne i32 %47, 0
  br i1 %tobool70, label %if.then.71, label %if.else.130

if.then.71:                                       ; preds = %if.end.69
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool72 = icmp ne %struct._GimpImage* %48, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.120

land.lhs.true.73:                                 ; preds = %if.then.71
  %49 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup74 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %49, i32 0, i32 7
  %bf.load75 = load i8, i8* %is_popup74, align 4
  %bf.lshr76 = lshr i8 %bf.load75, 1
  %bf.clear77 = and i8 %bf.lshr76, 1
  %bf.cast78 = zext i8 %bf.clear77 to i32
  %tobool79 = icmp ne i32 %bf.cast78, 0
  br i1 %tobool79, label %if.else.120, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.73
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %50)
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %51)
  %52 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %52
  %53 = load i32, i32* %offset_y, align 4
  %sub83 = sub nsw i32 0, %53
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call84 = call i32 @gimp_image_get_width(%struct._GimpImage* %54)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call85 = call i32 @gimp_image_get_height(%struct._GimpImage* %55)
  %call86 = call i32 @gimp_rectangle_intersect(i32 0, i32 0, i32 %call81, i32 %call82, i32 %sub, i32 %sub83, i32 %call84, i32 %call85, i32* %src_x, i32* %src_y, i32* %src_width, i32* %src_height)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.else.116

if.then.88:                                       ; preds = %if.then.80
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width89 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %56, i32 0, i32 4
  %57 = load i32, i32* %width89, align 4
  %conv90 = sitofp i32 %57 to double
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call91 = call i32 @gimp_image_get_width(%struct._GimpImage* %58)
  %conv92 = sitofp i32 %call91 to double
  %div93 = fdiv double %conv90, %conv92
  %59 = load i32, i32* %src_width, align 4
  %conv94 = sitofp i32 %59 to double
  %mul95 = fmul double %div93, %conv94
  %add96 = fadd double %mul95, 5.000000e-01
  %conv97 = fptosi double %add96 to i32
  store i32 %conv97, i32* %dest_width, align 4
  %60 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height98 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %60, i32 0, i32 5
  %61 = load i32, i32* %height98, align 4
  %conv99 = sitofp i32 %61 to double
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call100 = call i32 @gimp_image_get_height(%struct._GimpImage* %62)
  %conv101 = sitofp i32 %call100 to double
  %div102 = fdiv double %conv99, %conv101
  %63 = load i32, i32* %src_height, align 4
  %conv103 = sitofp i32 %63 to double
  %mul104 = fmul double %div102, %conv103
  %add105 = fadd double %mul104, 5.000000e-01
  %conv106 = fptosi double %add105 to i32
  store i32 %conv106, i32* %dest_height, align 4
  %64 = load i32, i32* %dest_width, align 4
  %cmp107 = icmp slt i32 %64, 1
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.88
  store i32 1, i32* %dest_width, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.then.88
  %65 = load i32, i32* %dest_height, align 4
  %cmp111 = icmp slt i32 %65, 1
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store i32 1, i32* %dest_height, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.110
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %67 = load i32, i32* %src_x, align 4
  %68 = load i32, i32* %src_y, align 4
  %69 = load i32, i32* %src_width, align 4
  %70 = load i32, i32* %src_height, align 4
  %71 = load i32, i32* %dest_width, align 4
  %72 = load i32, i32* %dest_height, align 4
  %call115 = call %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  store %struct._TempBuf* %call115, %struct._TempBuf** %render_buf, align 8
  br label %if.end.119

if.else.116:                                      ; preds = %if.then.80
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call117 = call i32 @gimp_drawable_preview_bytes(%struct._GimpDrawable* %73)
  store i32 %call117, i32* %bytes, align 4
  %74 = bitcast [4 x i8]* %empty to i8*
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 4, i32 1, i1 false)
  %75 = load i32, i32* %bytes, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %empty, i32 0, i32 0
  %call118 = call %struct._TempBuf* @temp_buf_new(i32 1, i32 1, i32 %75, i32 0, i32 0, i8* %arraydecay)
  store %struct._TempBuf* %call118, %struct._TempBuf** %render_buf, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.end.114
  br label %if.end.129

if.else.120:                                      ; preds = %land.lhs.true.73, %if.then.71
  %76 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable121 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %76, i32 0, i32 3
  %77 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable121, align 8
  %78 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %78, i32 0, i32 1
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %80 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call122 = call i32 @gimp_item_get_width(%struct._GimpItem* %80)
  %81 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call123 = call i32 @gimp_item_get_height(%struct._GimpItem* %81)
  %call124 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %77, %struct._GimpContext* %79, i32 %call122, i32 %call123)
  store %struct._TempBuf* %call124, %struct._TempBuf** %temp_buf, align 8
  %82 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %tobool125 = icmp ne %struct._TempBuf* %82, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.else.120
  %83 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %84 = load i32, i32* %view_width, align 4
  %85 = load i32, i32* %view_height, align 4
  %call127 = call %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %83, i32 %84, i32 %85)
  store %struct._TempBuf* %call127, %struct._TempBuf** %render_buf, align 8
  %86 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %86)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.else.120
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.119
  br label %if.end.134

if.else.130:                                      ; preds = %if.end.69
  %87 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable131 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %87, i32 0, i32 3
  %88 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable131, align 8
  %89 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context132 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %89, i32 0, i32 1
  %90 = load %struct._GimpContext*, %struct._GimpContext** %context132, align 8
  %91 = load i32, i32* %view_width, align 4
  %92 = load i32, i32* %view_height, align 4
  %call133 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %88, %struct._GimpContext* %90, i32 %91, i32 %92)
  store %struct._TempBuf* %call133, %struct._TempBuf** %render_buf, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.130, %if.end.129
  %93 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %tobool135 = icmp ne %struct._TempBuf* %93, null
  br i1 %tobool135, label %if.then.136, label %if.else.203

if.then.136:                                      ; preds = %if.end.134
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool137 = icmp ne %struct._GimpImage* %94, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.else.187

land.lhs.true.138:                                ; preds = %if.then.136
  %95 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %is_popup139 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %95, i32 0, i32 7
  %bf.load140 = load i8, i8* %is_popup139, align 4
  %bf.lshr141 = lshr i8 %bf.load140, 1
  %bf.clear142 = and i8 %bf.lshr141, 1
  %bf.cast143 = zext i8 %bf.clear142 to i32
  %tobool144 = icmp ne i32 %bf.cast143, 0
  br i1 %tobool144, label %if.else.187, label %if.then.145

if.then.145:                                      ; preds = %land.lhs.true.138
  %96 = load i32, i32* %offset_x, align 4
  %cmp146 = icmp ne i32 %96, 0
  br i1 %cmp146, label %if.then.148, label %if.end.158

if.then.148:                                      ; preds = %if.then.145
  %97 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width149 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %97, i32 0, i32 4
  %98 = load i32, i32* %width149, align 4
  %conv150 = sitofp i32 %98 to double
  %99 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call151 = call i32 @gimp_image_get_width(%struct._GimpImage* %99)
  %conv152 = sitofp i32 %call151 to double
  %div153 = fdiv double %conv150, %conv152
  %100 = load i32, i32* %offset_x, align 4
  %conv154 = sitofp i32 %100 to double
  %mul155 = fmul double %div153, %conv154
  %add156 = fadd double %mul155, 5.000000e-01
  %conv157 = fptosi double %add156 to i32
  %101 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %101, i32 0, i32 3
  store i32 %conv157, i32* %x, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.148, %if.then.145
  %102 = load i32, i32* %offset_y, align 4
  %cmp159 = icmp ne i32 %102, 0
  br i1 %cmp159, label %if.then.161, label %if.end.171

if.then.161:                                      ; preds = %if.end.158
  %103 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height162 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %103, i32 0, i32 5
  %104 = load i32, i32* %height162, align 4
  %conv163 = sitofp i32 %104 to double
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call164 = call i32 @gimp_image_get_height(%struct._GimpImage* %105)
  %conv165 = sitofp i32 %call164 to double
  %div166 = fdiv double %conv163, %conv165
  %106 = load i32, i32* %offset_y, align 4
  %conv167 = sitofp i32 %106 to double
  %mul168 = fmul double %div166, %conv167
  %add169 = fadd double %mul168, 5.000000e-01
  %conv170 = fptosi double %add169 to i32
  %107 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %107, i32 0, i32 4
  store i32 %conv170, i32* %y, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.161, %if.end.158
  %108 = load i32, i32* %scaling_up, align 4
  %tobool172 = icmp ne i32 %108, 0
  br i1 %tobool172, label %if.then.173, label %if.end.186

if.then.173:                                      ; preds = %if.end.171
  %109 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %x174 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %109, i32 0, i32 3
  %110 = load i32, i32* %x174, align 4
  %cmp175 = icmp slt i32 %110, 0
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.then.173
  %111 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %x178 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %111, i32 0, i32 3
  store i32 0, i32* %x178, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.then.173
  %112 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %y180 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %112, i32 0, i32 4
  %113 = load i32, i32* %y180, align 4
  %cmp181 = icmp slt i32 %113, 0
  br i1 %cmp181, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.179
  %114 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %y184 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %114, i32 0, i32 4
  store i32 0, i32* %y184, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.179
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.171
  br label %if.end.202

if.else.187:                                      ; preds = %land.lhs.true.138, %if.then.136
  %115 = load i32, i32* %view_width, align 4
  %116 = load i32, i32* %width, align 4
  %cmp188 = icmp slt i32 %115, %116
  br i1 %cmp188, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %if.else.187
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %view_width, align 4
  %sub191 = sub nsw i32 %117, %118
  %div192 = sdiv i32 %sub191, 2
  %119 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %x193 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %119, i32 0, i32 3
  store i32 %div192, i32* %x193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.190, %if.else.187
  %120 = load i32, i32* %view_height, align 4
  %121 = load i32, i32* %height, align 4
  %cmp195 = icmp slt i32 %120, %121
  br i1 %cmp195, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %if.end.194
  %122 = load i32, i32* %height, align 4
  %123 = load i32, i32* %view_height, align 4
  %sub198 = sub nsw i32 %122, %123
  %div199 = sdiv i32 %sub198, 2
  %124 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  %y200 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %124, i32 0, i32 4
  store i32 %div199, i32* %y200, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %if.end.194
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.186
  %125 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %126 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer* %125, %struct._TempBuf* %126, i32 -1, i32 0, i32 0)
  %127 = load %struct._TempBuf*, %struct._TempBuf** %render_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %127)
  br label %if.end.206

if.else.203:                                      ; preds = %if.end.134
  %128 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable204 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %128, i32 0, i32 3
  %129 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable204, align 8
  %call205 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %129)
  store i8* %call205, i8** %stock_id, align 8
  %130 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %132 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %130, %struct._GtkWidget* %131, i8* %132)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.end.202
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_preview_bytes(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare %struct._TempBuf* @temp_buf_scale(%struct._TempBuf*, i32, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare void @gimp_view_renderer_render_temp_buf(%struct._GimpViewRenderer*, %struct._TempBuf*, i32, i32, i32) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer*, %struct._GtkWidget*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
