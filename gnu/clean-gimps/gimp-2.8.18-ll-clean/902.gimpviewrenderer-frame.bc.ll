; ModuleID = './app/widgets/gimpviewrenderer-frame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GdkPixbuf = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpContext = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpViewRendererClass = type { %struct._GObjectClass, %struct._GdkPixbuf*, i32, i32, i32, i32, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GimpContext*)*, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._cairo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_renderer_get_frame_pixbuf = private unnamed_addr constant [36 x i8] c"gimp_view_renderer_get_frame_pixbuf\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GIMP_IS_VIEW_RENDERER (renderer)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GIMP_IS_VIEWABLE (renderer->viewable)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gimp-frame\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_view_renderer_get_frame_pixbuf(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %class = alloca %struct._GimpViewRendererClass*, align 8
  %frame = alloca %struct._GdkPixbuf*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_view_renderer_get_frame_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_view_renderer_get_frame_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_view_renderer_ensure_frame(%struct._GimpViewRenderer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %30 = bitcast %struct._GimpViewRenderer* %29 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %32, %struct._GimpViewRendererClass** %class, align 8
  %33 = load i32, i32* %width.addr, align 4
  %34 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_left = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %34, i32 0, i32 2
  %35 = load i32, i32* %frame_left, align 4
  %sub = sub nsw i32 %33, %35
  %36 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_right = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %36, i32 0, i32 3
  %37 = load i32, i32* %frame_right, align 4
  %sub40 = sub nsw i32 %sub, %37
  store i32 %sub40, i32* %w, align 4
  %38 = load i32, i32* %height.addr, align 4
  %39 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_top = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %39, i32 0, i32 5
  %40 = load i32, i32* %frame_top, align 4
  %sub41 = sub nsw i32 %38, %40
  %41 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_bottom = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %41, i32 0, i32 4
  %42 = load i32, i32* %frame_bottom, align 4
  %sub42 = sub nsw i32 %sub41, %42
  store i32 %sub42, i32* %h, align 4
  %43 = load i32, i32* %w, align 4
  %cmp43 = icmp sgt i32 %43, 12
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.62

land.lhs.true.44:                                 ; preds = %do.end.38
  %44 = load i32, i32* %h, align 4
  %cmp45 = icmp sgt i32 %44, 12
  br i1 %cmp45, label %if.then.46, label %if.else.62

if.then.46:                                       ; preds = %land.lhs.true.44
  %45 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable47 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %45, i32 0, i32 3
  %46 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable47, align 8
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %47, i32 0, i32 1
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %49 = load i32, i32* %w, align 4
  %50 = load i32, i32* %h, align 4
  %call48 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %46, %struct._GimpContext* %48, i32 %49, i32 %50)
  store %struct._GdkPixbuf* %call48, %struct._GdkPixbuf** %pixbuf, align 8
  %51 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool49 = icmp ne %struct._GdkPixbuf* %51, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.then.46
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.46
  %52 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_left52 = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %52, i32 0, i32 2
  %53 = load i32, i32* %frame_left52, align 4
  store i32 %53, i32* %x, align 4
  %54 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_top53 = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %54, i32 0, i32 5
  %55 = load i32, i32* %frame_top53, align 4
  store i32 %55, i32* %y, align 4
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call54 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %56)
  store i32 %call54, i32* %w, align 4
  %57 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call55 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %57)
  store i32 %call55, i32* %h, align 4
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %59 = load i32, i32* %w, align 4
  %60 = load i32, i32* %x, align 4
  %add = add nsw i32 %59, %60
  %61 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_right56 = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %61, i32 0, i32 3
  %62 = load i32, i32* %frame_right56, align 4
  %add57 = add nsw i32 %add, %62
  %63 = load i32, i32* %h, align 4
  %64 = load i32, i32* %y, align 4
  %add58 = add nsw i32 %63, %64
  %65 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_bottom59 = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %65, i32 0, i32 4
  %66 = load i32, i32* %frame_bottom59, align 4
  %add60 = add nsw i32 %add58, %66
  %call61 = call %struct._GdkPixbuf* @gimp_view_renderer_get_frame(%struct._GimpViewRenderer* %58, i32 %add57, i32 %add60)
  store %struct._GdkPixbuf* %call61, %struct._GdkPixbuf** %frame, align 8
  br label %if.end.76

if.else.62:                                       ; preds = %land.lhs.true.44, %do.end.38
  %67 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable63 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %67, i32 0, i32 3
  %68 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable63, align 8
  %69 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context64 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %69, i32 0, i32 1
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context64, align 8
  %71 = load i32, i32* %width.addr, align 4
  %sub65 = sub nsw i32 %71, 2
  %72 = load i32, i32* %height.addr, align 4
  %sub66 = sub nsw i32 %72, 2
  %call67 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %68, %struct._GimpContext* %70, i32 %sub65, i32 %sub66)
  store %struct._GdkPixbuf* %call67, %struct._GdkPixbuf** %pixbuf, align 8
  %73 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool68 = icmp ne %struct._GdkPixbuf* %73, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.else.62
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.70:                                        ; preds = %if.else.62
  store i32 1, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %74 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call71 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %74)
  store i32 %call71, i32* %w, align 4
  %75 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call72 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %75)
  store i32 %call72, i32* %h, align 4
  %76 = load i32, i32* %w, align 4
  %add73 = add nsw i32 %76, 2
  %77 = load i32, i32* %h, align 4
  %add74 = add nsw i32 %77, 2
  %call75 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 %add73, i32 %add74)
  store %struct._GdkPixbuf* %call75, %struct._GdkPixbuf** %frame, align 8
  %78 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  call void @gdk_pixbuf_fill(%struct._GdkPixbuf* %78, i32 0)
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.70, %if.end.51
  %79 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %80 = load i32, i32* %w, align 4
  %81 = load i32, i32* %h, align 4
  %82 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %y, align 4
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %79, i32 0, i32 0, i32 %80, i32 %81, %struct._GdkPixbuf* %82, i32 %83, i32 %84)
  %85 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  store %struct._GdkPixbuf* %85, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.then.69, %if.then.50, %if.else.36, %if.else.9
  %86 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %86
}

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_ensure_frame(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #0 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %3, %struct._GimpViewRendererClass** %class, align 8
  %4 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %4, i32 0, i32 1
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 6, i8* null)
  %7 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame1 = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %7, i32 0, i32 1
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %frame1, align 8
  %8 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_left = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %8, i32 0, i32 2
  store i32 2, i32* %frame_left, align 4
  %9 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_top = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %9, i32 0, i32 5
  store i32 2, i32* %frame_top, align 4
  %10 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_right = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %10, i32 0, i32 3
  store i32 4, i32* %frame_right, align 4
  %11 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_bottom = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %11, i32 0, i32 4
  store i32 4, i32* %frame_bottom, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #3

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_view_renderer_get_frame(%struct._GimpViewRenderer* %renderer, i32 %width, i32 %height) #0 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %3, %struct._GimpViewRendererClass** %class, align 8
  %4 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %4, i32 0, i32 1
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %6 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_left = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %6, i32 0, i32 2
  %7 = load i32, i32* %frame_left, align 4
  %8 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_top = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %8, i32 0, i32 5
  %9 = load i32, i32* %frame_top, align 4
  %10 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_right = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %10, i32 0, i32 3
  %11 = load i32, i32* %frame_right, align 4
  %12 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_bottom = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %12, i32 0, i32 4
  %13 = load i32, i32* %frame_bottom, align 4
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %call = call %struct._GdkPixbuf* @stretch_frame_image(%struct._GdkPixbuf* %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %14, i32 %15)
  ret %struct._GdkPixbuf* %call
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #3

declare void @gdk_pixbuf_fill(%struct._GdkPixbuf*, i32) #3

declare void @gdk_pixbuf_copy_area(%struct._GdkPixbuf*, i32, i32, i32, i32, %struct._GdkPixbuf*, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_get_frame_size(i32* %horizontal, i32* %vertical) #0 {
entry:
  %horizontal.addr = alloca i32*, align 8
  %vertical.addr = alloca i32*, align 8
  %class = alloca %struct._GimpViewRendererClass*, align 8
  store i32* %horizontal, i32** %horizontal.addr, align 8
  store i32* %vertical, i32** %vertical.addr, align 8
  %call = call i64 @gimp_view_renderer_get_type() #4
  %call1 = call i8* @g_type_class_ref(i64 %call)
  %0 = bitcast i8* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %0, %struct._GimpViewRendererClass** %class, align 8
  %1 = load i32*, i32** %horizontal.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_left = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_left, align 4
  %4 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_right = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %4, i32 0, i32 3
  %5 = load i32, i32* %frame_right, align 4
  %add = add nsw i32 %3, %5
  %6 = load i32*, i32** %horizontal.addr, align 8
  store i32 %add, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** %vertical.addr, align 8
  %tobool2 = icmp ne i32* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_top = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %8, i32 0, i32 5
  %9 = load i32, i32* %frame_top, align 4
  %10 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %frame_bottom = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %10, i32 0, i32 4
  %11 = load i32, i32* %frame_bottom, align 4
  %add4 = add nsw i32 %9, %11
  %12 = load i32*, i32** %vertical.addr, align 8
  store i32 %add4, i32* %12, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %class, align 8
  %14 = bitcast %struct._GimpViewRendererClass* %13 to i8*
  call void @g_type_class_unref(i8* %14)
  ret void
}

declare i8* @g_type_class_ref(i64) #3

declare void @g_type_class_unref(i8*) #3

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @stretch_frame_image(%struct._GdkPixbuf* %frame_image, i32 %left_offset, i32 %top_offset, i32 %right_offset, i32 %bottom_offset, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %left_offset.addr = alloca i32, align 4
  %top_offset.addr = alloca i32, align 4
  %right_offset.addr = alloca i32, align 4
  %bottom_offset.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %frame_width = alloca i32, align 4
  %frame_height = alloca i32, align 4
  %target_width = alloca i32, align 4
  %target_frame_width = alloca i32, align 4
  %target_height = alloca i32, align 4
  %target_frame_height = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %left_offset, i32* %left_offset.addr, align 4
  store i32 %top_offset, i32* %top_offset.addr, align 4
  store i32 %right_offset, i32* %right_offset.addr, align 4
  store i32 %bottom_offset, i32* %bottom_offset.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %call = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %0)
  store i32 %call, i32* %frame_width, align 4
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %call1 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %1)
  store i32 %call1, i32* %frame_height, align 4
  %2 = load i32, i32* %dest_width.addr, align 4
  %3 = load i32, i32* %dest_height.addr, align 4
  %call2 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 1, i32 8, i32 %2, i32 %3)
  store %struct._GdkPixbuf* %call2, %struct._GdkPixbuf** %pixbuf, align 8
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gdk_pixbuf_fill(%struct._GdkPixbuf* %4, i32 0)
  %5 = load i32, i32* %dest_width.addr, align 4
  %6 = load i32, i32* %left_offset.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %right_offset.addr, align 4
  %sub3 = sub nsw i32 %sub, %7
  store i32 %sub3, i32* %target_width, align 4
  %8 = load i32, i32* %dest_height.addr, align 4
  %9 = load i32, i32* %top_offset.addr, align 4
  %sub4 = sub nsw i32 %8, %9
  %10 = load i32, i32* %bottom_offset.addr, align 4
  %sub5 = sub nsw i32 %sub4, %10
  store i32 %sub5, i32* %target_height, align 4
  %11 = load i32, i32* %frame_width, align 4
  %12 = load i32, i32* %left_offset.addr, align 4
  %sub6 = sub nsw i32 %11, %12
  %13 = load i32, i32* %right_offset.addr, align 4
  %sub7 = sub nsw i32 %sub6, %13
  store i32 %sub7, i32* %target_frame_width, align 4
  %14 = load i32, i32* %frame_height, align 4
  %15 = load i32, i32* %top_offset.addr, align 4
  %sub8 = sub nsw i32 %14, %15
  %16 = load i32, i32* %bottom_offset.addr, align 4
  %sub9 = sub nsw i32 %sub8, %16
  store i32 %sub9, i32* %target_frame_height, align 4
  %17 = load i32, i32* %target_width, align 4
  %div = sdiv i32 %17, 4
  %18 = load i32, i32* %target_frame_width, align 4
  %div10 = sdiv i32 %18, 4
  %cmp = icmp slt i32 %div, %div10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %target_width, align 4
  %div11 = sdiv i32 %19, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load i32, i32* %target_frame_width, align 4
  %div12 = sdiv i32 %20, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div11, %cond.true ], [ %div12, %cond.false ]
  %21 = load i32, i32* %left_offset.addr, align 4
  %add = add nsw i32 %21, %cond
  store i32 %add, i32* %left_offset.addr, align 4
  %22 = load i32, i32* %target_width, align 4
  %div13 = sdiv i32 %22, 4
  %23 = load i32, i32* %target_frame_width, align 4
  %div14 = sdiv i32 %23, 4
  %cmp15 = icmp slt i32 %div13, %div14
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end
  %24 = load i32, i32* %target_width, align 4
  %div17 = sdiv i32 %24, 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %25 = load i32, i32* %target_frame_width, align 4
  %div19 = sdiv i32 %25, 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.16
  %cond21 = phi i32 [ %div17, %cond.true.16 ], [ %div19, %cond.false.18 ]
  %26 = load i32, i32* %right_offset.addr, align 4
  %add22 = add nsw i32 %26, %cond21
  store i32 %add22, i32* %right_offset.addr, align 4
  %27 = load i32, i32* %target_height, align 4
  %div23 = sdiv i32 %27, 4
  %28 = load i32, i32* %target_frame_height, align 4
  %div24 = sdiv i32 %28, 4
  %cmp25 = icmp slt i32 %div23, %div24
  br i1 %cmp25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.20
  %29 = load i32, i32* %target_height, align 4
  %div27 = sdiv i32 %29, 4
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end.20
  %30 = load i32, i32* %target_frame_height, align 4
  %div29 = sdiv i32 %30, 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.26
  %cond31 = phi i32 [ %div27, %cond.true.26 ], [ %div29, %cond.false.28 ]
  %31 = load i32, i32* %top_offset.addr, align 4
  %add32 = add nsw i32 %31, %cond31
  store i32 %add32, i32* %top_offset.addr, align 4
  %32 = load i32, i32* %target_height, align 4
  %div33 = sdiv i32 %32, 4
  %33 = load i32, i32* %target_frame_height, align 4
  %div34 = sdiv i32 %33, 4
  %cmp35 = icmp slt i32 %div33, %div34
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end.30
  %34 = load i32, i32* %target_height, align 4
  %div37 = sdiv i32 %34, 4
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.end.30
  %35 = load i32, i32* %target_frame_height, align 4
  %div39 = sdiv i32 %35, 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i32 [ %div37, %cond.true.36 ], [ %div39, %cond.false.38 ]
  %36 = load i32, i32* %bottom_offset.addr, align 4
  %add42 = add nsw i32 %36, %cond41
  store i32 %add42, i32* %bottom_offset.addr, align 4
  %37 = load i32, i32* %dest_width.addr, align 4
  %38 = load i32, i32* %left_offset.addr, align 4
  %sub43 = sub nsw i32 %37, %38
  %39 = load i32, i32* %right_offset.addr, align 4
  %sub44 = sub nsw i32 %sub43, %39
  store i32 %sub44, i32* %target_width, align 4
  %40 = load i32, i32* %dest_height.addr, align 4
  %41 = load i32, i32* %top_offset.addr, align 4
  %sub45 = sub nsw i32 %40, %41
  %42 = load i32, i32* %bottom_offset.addr, align 4
  %sub46 = sub nsw i32 %sub45, %42
  store i32 %sub46, i32* %target_height, align 4
  %43 = load i32, i32* %frame_width, align 4
  %44 = load i32, i32* %left_offset.addr, align 4
  %sub47 = sub nsw i32 %43, %44
  %45 = load i32, i32* %right_offset.addr, align 4
  %sub48 = sub nsw i32 %sub47, %45
  store i32 %sub48, i32* %target_frame_width, align 4
  %46 = load i32, i32* %frame_height, align 4
  %47 = load i32, i32* %top_offset.addr, align 4
  %sub49 = sub nsw i32 %46, %47
  %48 = load i32, i32* %bottom_offset.addr, align 4
  %sub50 = sub nsw i32 %sub49, %48
  store i32 %sub50, i32* %target_frame_height, align 4
  %49 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %50 = load i32, i32* %left_offset.addr, align 4
  %51 = load i32, i32* %top_offset.addr, align 4
  %52 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %49, i32 0, i32 0, i32 %50, i32 %51, %struct._GdkPixbuf* %52, i32 0, i32 0)
  %53 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %54 = load i32, i32* %target_width, align 4
  %55 = load i32, i32* %target_frame_width, align 4
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %57 = load i32, i32* %left_offset.addr, align 4
  %58 = load i32, i32* %top_offset.addr, align 4
  call void @draw_frame_row(%struct._GdkPixbuf* %53, i32 %54, i32 %55, i32 0, i32 0, %struct._GdkPixbuf* %56, i32 %57, i32 %58)
  %59 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %60 = load i32, i32* %frame_width, align 4
  %61 = load i32, i32* %right_offset.addr, align 4
  %sub51 = sub nsw i32 %60, %61
  %62 = load i32, i32* %right_offset.addr, align 4
  %63 = load i32, i32* %top_offset.addr, align 4
  %64 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %65 = load i32, i32* %dest_width.addr, align 4
  %66 = load i32, i32* %right_offset.addr, align 4
  %sub52 = sub nsw i32 %65, %66
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %59, i32 %sub51, i32 0, i32 %62, i32 %63, %struct._GdkPixbuf* %64, i32 %sub52, i32 0)
  %67 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %68 = load i32, i32* %target_height, align 4
  %69 = load i32, i32* %target_frame_height, align 4
  %70 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %71 = load i32, i32* %top_offset.addr, align 4
  %72 = load i32, i32* %left_offset.addr, align 4
  call void @draw_frame_column(%struct._GdkPixbuf* %67, i32 %68, i32 %69, i32 0, i32 0, %struct._GdkPixbuf* %70, i32 %71, i32 %72)
  %73 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %74 = load i32, i32* %frame_width, align 4
  %75 = load i32, i32* %right_offset.addr, align 4
  %sub53 = sub nsw i32 %74, %75
  %76 = load i32, i32* %frame_height, align 4
  %77 = load i32, i32* %bottom_offset.addr, align 4
  %sub54 = sub nsw i32 %76, %77
  %78 = load i32, i32* %right_offset.addr, align 4
  %79 = load i32, i32* %bottom_offset.addr, align 4
  %80 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %81 = load i32, i32* %dest_width.addr, align 4
  %82 = load i32, i32* %right_offset.addr, align 4
  %sub55 = sub nsw i32 %81, %82
  %83 = load i32, i32* %dest_height.addr, align 4
  %84 = load i32, i32* %bottom_offset.addr, align 4
  %sub56 = sub nsw i32 %83, %84
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %73, i32 %sub53, i32 %sub54, i32 %78, i32 %79, %struct._GdkPixbuf* %80, i32 %sub55, i32 %sub56)
  %85 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %86 = load i32, i32* %target_width, align 4
  %87 = load i32, i32* %target_frame_width, align 4
  %88 = load i32, i32* %frame_height, align 4
  %89 = load i32, i32* %bottom_offset.addr, align 4
  %sub57 = sub nsw i32 %88, %89
  %90 = load i32, i32* %dest_height.addr, align 4
  %91 = load i32, i32* %bottom_offset.addr, align 4
  %sub58 = sub nsw i32 %90, %91
  %92 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %93 = load i32, i32* %left_offset.addr, align 4
  %94 = load i32, i32* %bottom_offset.addr, align 4
  call void @draw_frame_row(%struct._GdkPixbuf* %85, i32 %86, i32 %87, i32 %sub57, i32 %sub58, %struct._GdkPixbuf* %92, i32 %93, i32 %94)
  %95 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %96 = load i32, i32* %frame_height, align 4
  %97 = load i32, i32* %bottom_offset.addr, align 4
  %sub59 = sub nsw i32 %96, %97
  %98 = load i32, i32* %left_offset.addr, align 4
  %99 = load i32, i32* %bottom_offset.addr, align 4
  %100 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %101 = load i32, i32* %dest_height.addr, align 4
  %102 = load i32, i32* %bottom_offset.addr, align 4
  %sub60 = sub nsw i32 %101, %102
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %95, i32 0, i32 %sub59, i32 %98, i32 %99, %struct._GdkPixbuf* %100, i32 0, i32 %sub60)
  %103 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %104 = load i32, i32* %target_height, align 4
  %105 = load i32, i32* %target_frame_height, align 4
  %106 = load i32, i32* %frame_width, align 4
  %107 = load i32, i32* %right_offset.addr, align 4
  %sub61 = sub nsw i32 %106, %107
  %108 = load i32, i32* %dest_width.addr, align 4
  %109 = load i32, i32* %right_offset.addr, align 4
  %sub62 = sub nsw i32 %108, %109
  %110 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %111 = load i32, i32* %top_offset.addr, align 4
  %112 = load i32, i32* %right_offset.addr, align 4
  call void @draw_frame_column(%struct._GdkPixbuf* %103, i32 %104, i32 %105, i32 %sub61, i32 %sub62, %struct._GdkPixbuf* %110, i32 %111, i32 %112)
  %113 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  ret %struct._GdkPixbuf* %113
}

; Function Attrs: nounwind uwtable
define internal void @draw_frame_row(%struct._GdkPixbuf* %frame_image, i32 %target_width, i32 %source_width, i32 %source_v_position, i32 %dest_v_position, %struct._GdkPixbuf* %result_pixbuf, i32 %left_offset, i32 %height) #0 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %target_width.addr = alloca i32, align 4
  %source_width.addr = alloca i32, align 4
  %source_v_position.addr = alloca i32, align 4
  %dest_v_position.addr = alloca i32, align 4
  %result_pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %left_offset.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %remaining_width = alloca i32, align 4
  %h_offset = alloca i32, align 4
  %slab_width = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %target_width, i32* %target_width.addr, align 4
  store i32 %source_width, i32* %source_width.addr, align 4
  store i32 %source_v_position, i32* %source_v_position.addr, align 4
  store i32 %dest_v_position, i32* %dest_v_position.addr, align 4
  store %struct._GdkPixbuf* %result_pixbuf, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  store i32 %left_offset, i32* %left_offset.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %target_width.addr, align 4
  store i32 %0, i32* %remaining_width, align 4
  store i32 0, i32* %h_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %remaining_width, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %remaining_width, align 4
  %3 = load i32, i32* %source_width.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i32, i32* %source_width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %remaining_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %slab_width, align 4
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %7 = load i32, i32* %left_offset.addr, align 4
  %8 = load i32, i32* %source_v_position.addr, align 4
  %9 = load i32, i32* %slab_width, align 4
  %10 = load i32, i32* %height.addr, align 4
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  %12 = load i32, i32* %left_offset.addr, align 4
  %13 = load i32, i32* %h_offset, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %dest_v_position.addr, align 4
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct._GdkPixbuf* %11, i32 %add, i32 %14)
  %15 = load i32, i32* %slab_width, align 4
  %16 = load i32, i32* %remaining_width, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %remaining_width, align 4
  %17 = load i32, i32* %slab_width, align 4
  %18 = load i32, i32* %h_offset, align 4
  %add2 = add nsw i32 %18, %17
  store i32 %add2, i32* %h_offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_frame_column(%struct._GdkPixbuf* %frame_image, i32 %target_height, i32 %source_height, i32 %source_h_position, i32 %dest_h_position, %struct._GdkPixbuf* %result_pixbuf, i32 %top_offset, i32 %width) #0 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %target_height.addr = alloca i32, align 4
  %source_height.addr = alloca i32, align 4
  %source_h_position.addr = alloca i32, align 4
  %dest_h_position.addr = alloca i32, align 4
  %result_pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %top_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %remaining_height = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %slab_height = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %target_height, i32* %target_height.addr, align 4
  store i32 %source_height, i32* %source_height.addr, align 4
  store i32 %source_h_position, i32* %source_h_position.addr, align 4
  store i32 %dest_h_position, i32* %dest_h_position.addr, align 4
  store %struct._GdkPixbuf* %result_pixbuf, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  store i32 %top_offset, i32* %top_offset.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %target_height.addr, align 4
  store i32 %0, i32* %remaining_height, align 4
  store i32 0, i32* %v_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %remaining_height, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %remaining_height, align 4
  %3 = load i32, i32* %source_height.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i32, i32* %source_height.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %remaining_height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %slab_height, align 4
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %7 = load i32, i32* %source_h_position.addr, align 4
  %8 = load i32, i32* %top_offset.addr, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %slab_height, align 4
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  %12 = load i32, i32* %dest_h_position.addr, align 4
  %13 = load i32, i32* %top_offset.addr, align 4
  %14 = load i32, i32* %v_offset, align 4
  %add = add nsw i32 %13, %14
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct._GdkPixbuf* %11, i32 %12, i32 %add)
  %15 = load i32, i32* %slab_height, align 4
  %16 = load i32, i32* %remaining_height, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %remaining_height, align 4
  %17 = load i32, i32* %slab_height, align 4
  %18 = load i32, i32* %v_offset, align 4
  %add2 = add nsw i32 %18, %17
  store i32 %add2, i32* %v_offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
