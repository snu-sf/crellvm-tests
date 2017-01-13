; ModuleID = './app/widgets/gimpviewrendererimagefile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererImagefileClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererImagefile = type { %struct._GimpViewRenderer }
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkIconTheme = type { %struct._GObject, %struct._GtkIconThemePrivate* }
%struct._GtkIconThemePrivate = type opaque
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GIcon = type opaque
%struct._GtkIconInfo = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }

@gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpViewRendererImagefile\00", align 1
@gimp_view_renderer_imagefile_parent_class = internal global i8* null, align 8
@GimpViewRendererImagefile_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gtk-file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gtk-directory\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gnome-mime-\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_imagefile_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_renderer_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_imagefile_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererImagefile*)* @gimp_view_renderer_imagefile_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_imagefile_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_imagefile_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererImagefile_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererImagefile_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererImagefileClass*
  call void @gimp_view_renderer_imagefile_class_init(%struct._GimpViewRendererImagefileClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_imagefile_init(%struct._GimpViewRendererImagefile* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererImagefile*, align 8
  store %struct._GimpViewRendererImagefile* %renderer, %struct._GimpViewRendererImagefile** %renderer.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_imagefile_class_init(%struct._GimpViewRendererImagefileClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererImagefileClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererImagefileClass* %klass, %struct._GimpViewRendererImagefileClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererImagefileClass*, %struct._GimpViewRendererImagefileClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererImagefileClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_imagefile_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_imagefile_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 4
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %4, i32 0, i32 5
  %5 = load i32, i32* %height, align 4
  %call = call %struct._GdkPixbuf* @gimp_view_renderer_get_frame_pixbuf(%struct._GimpViewRenderer* %0, %struct._GtkWidget* %1, i32 %3, i32 %5)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 3
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_imagefile_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %10, %struct._GimpImagefile** %imagefile, align 8
  %11 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 4
  %14 = load i32, i32* %width3, align 4
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 5
  %16 = load i32, i32* %height4, align 4
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 4
  %18 = load i32, i32* %width5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 5
  %20 = load i32, i32* %height6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ]
  %call7 = call %struct._GdkPixbuf* @gimp_view_renderer_imagefile_get_icon(%struct._GimpImagefile* %11, %struct._GtkWidget* %12, i32 %cond)
  store %struct._GdkPixbuf* %call7, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool8 = icmp ne %struct._GdkPixbuf* %21, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gimp_view_renderer_render_pixbuf(%struct._GimpViewRenderer* %22, %struct._GdkPixbuf* %23)
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %25 = bitcast %struct._GdkPixbuf* %24 to i8*
  call void @g_object_unref(i8* %25)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable10 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %26, i32 0, i32 3
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable10, align 8
  %call11 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %27)
  store i8* %call11, i8** %stock_id, align 8
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = load i8*, i8** %stock_id, align 8
  call void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer* %28, %struct._GtkWidget* %29, i8* %30)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  ret void
}

declare %struct._GdkPixbuf* @gimp_view_renderer_get_frame_pixbuf(%struct._GimpViewRenderer*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_view_renderer_imagefile_get_icon(%struct._GimpImagefile* %imagefile, %struct._GtkWidget* %widget, i32 %size) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %icon_theme = alloca %struct._GtkIconTheme*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %icon = alloca %struct._GIcon*, align 8
  %info = alloca %struct._GtkIconInfo*, align 8
  %icon_name = alloca i8*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %0)
  store %struct._GdkScreen* %call, %struct._GdkScreen** %screen, align 8
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call1 = call %struct._GtkIconTheme* @gtk_icon_theme_get_for_screen(%struct._GdkScreen* %1)
  store %struct._GtkIconTheme* %call1, %struct._GtkIconTheme** %icon_theme, align 8
  %2 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %call2 = call %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %2)
  store %struct._GimpThumbnail* %call2, %struct._GimpThumbnail** %thumbnail, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  %3 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %4 = bitcast %struct._GimpImagefile* %3 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %4)
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool4 = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool4, label %if.end.15, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %call6 = call %struct._GIcon* @gimp_imagefile_get_gicon(%struct._GimpImagefile* %6)
  store %struct._GIcon* %call6, %struct._GIcon** %icon, align 8
  %7 = load %struct._GIcon*, %struct._GIcon** %icon, align 8
  %tobool7 = icmp ne %struct._GIcon* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %8 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %icon_theme, align 8
  %9 = load %struct._GIcon*, %struct._GIcon** %icon, align 8
  %10 = load i32, i32* %size.addr, align 4
  %call9 = call %struct._GtkIconInfo* @gtk_icon_theme_lookup_by_gicon(%struct._GtkIconTheme* %8, %struct._GIcon* %9, i32 %10, i32 0)
  store %struct._GtkIconInfo* %call9, %struct._GtkIconInfo** %info, align 8
  %11 = load %struct._GtkIconInfo*, %struct._GtkIconInfo** %info, align 8
  %tobool10 = icmp ne %struct._GtkIconInfo* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %12 = load %struct._GtkIconInfo*, %struct._GtkIconInfo** %info, align 8
  %call12 = call %struct._GdkPixbuf* @gtk_icon_info_load_icon(%struct._GtkIconInfo* %12, %struct._GError** null)
  store %struct._GdkPixbuf* %call12, %struct._GdkPixbuf** %pixbuf, align 8
  %13 = load %struct._GtkIconInfo*, %struct._GtkIconInfo** %info, align 8
  call void @gtk_icon_info_free(%struct._GtkIconInfo* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool16 = icmp ne %struct._GdkPixbuf* %14, null
  br i1 %tobool16, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.15
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 16
  %16 = load i8*, i8** %image_mimetype, align 8
  %tobool17 = icmp ne i8* %16, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype19 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 16
  %18 = load i8*, i8** %image_mimetype19, align 8
  %19 = load i32, i32* %size.addr, align 4
  %call20 = call %struct._GdkPixbuf* @get_icon_for_mime_type(i8* %18, i32 %19)
  store %struct._GdkPixbuf* %call20, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.15
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool22 = icmp ne %struct._GdkPixbuf* %20, null
  br i1 %tobool22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %icon_name, align 8
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 1
  %22 = load i32, i32* %image_state, align 4
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8** %icon_name, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.23
  %23 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %icon_theme, align 8
  %24 = load i8*, i8** %icon_name, align 8
  %25 = load i32, i32* %size.addr, align 4
  %call26 = call %struct._GdkPixbuf* @gtk_icon_theme_load_icon(%struct._GtkIconTheme* %23, i8* %24, i32 %25, i32 4, %struct._GError** null)
  store %struct._GdkPixbuf* %call26, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %if.end.21
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %26, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %27
}

declare void @gimp_view_renderer_render_pixbuf(%struct._GimpViewRenderer*, %struct._GdkPixbuf*) #1

declare void @g_object_unref(i8*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare void @gimp_view_renderer_render_stock(%struct._GimpViewRenderer*, %struct._GtkWidget*, i8*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GtkIconTheme* @gtk_icon_theme_get_for_screen(%struct._GdkScreen*) #1

declare %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GIcon* @gimp_imagefile_get_gicon(%struct._GimpImagefile*) #1

declare %struct._GtkIconInfo* @gtk_icon_theme_lookup_by_gicon(%struct._GtkIconTheme*, %struct._GIcon*, i32, i32) #1

declare %struct._GdkPixbuf* @gtk_icon_info_load_icon(%struct._GtkIconInfo*, %struct._GError**) #1

declare void @gtk_icon_info_free(%struct._GtkIconInfo*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @get_icon_for_mime_type(i8* %mime_type, i32 %pixel_size) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %mime_type.addr = alloca i8*, align 8
  %pixel_size.addr = alloca i32, align 4
  %icon_theme = alloca %struct._GtkIconTheme*, align 8
  %separator = alloca i8*, align 8
  %icon_name = alloca %struct._GString*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  %0 = load i8*, i8** %mime_type.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 47) #7
  store i8* %call, i8** %separator, align 8
  %1 = load i8*, i8** %separator, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GtkIconTheme* @gtk_icon_theme_get_default()
  store %struct._GtkIconTheme* %call1, %struct._GtkIconTheme** %icon_theme, align 8
  %call2 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call2, %struct._GString** %icon_name, align 8
  %2 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %3 = load i8*, i8** %mime_type.addr, align 8
  %4 = load i8*, i8** %separator, align 8
  %5 = load i8*, i8** %mime_type.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call %struct._GString* @g_string_append_len(%struct._GString* %2, i8* %3, i64 %sub.ptr.sub)
  %6 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %call4 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 45)
  %7 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %8 = load i8*, i8** %separator, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call5 = call %struct._GString* @g_string_append(%struct._GString* %7, i8* %add.ptr)
  %9 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %icon_theme, align 8
  %10 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %10, i32 0, i32 0
  %11 = load i8*, i8** %str, align 8
  %12 = load i32, i32* %pixel_size.addr, align 4
  %call6 = call %struct._GdkPixbuf* @gtk_icon_theme_load_icon(%struct._GtkIconTheme* %9, i8* %11, i32 %12, i32 0, %struct._GError** null)
  store %struct._GdkPixbuf* %call6, %struct._GdkPixbuf** %pixbuf, align 8
  %13 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %call7 = call i8* @g_string_free(%struct._GString* %13, i32 1)
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool8 = icmp ne %struct._GdkPixbuf* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %15, %struct._GdkPixbuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %call11 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GString* %call11, %struct._GString** %icon_name, align 8
  %16 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %17 = load i8*, i8** %mime_type.addr, align 8
  %18 = load i8*, i8** %separator, align 8
  %19 = load i8*, i8** %mime_type.addr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %19 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %call15 = call %struct._GString* @g_string_append_len(%struct._GString* %16, i8* %17, i64 %sub.ptr.sub14)
  %20 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %call16 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %20, i8 signext 45)
  %21 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %22 = load i8*, i8** %separator, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 1
  %call18 = call %struct._GString* @g_string_append(%struct._GString* %21, i8* %add.ptr17)
  %23 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %icon_theme, align 8
  %24 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %str19 = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 0
  %25 = load i8*, i8** %str19, align 8
  %26 = load i32, i32* %pixel_size.addr, align 4
  %call20 = call %struct._GdkPixbuf* @gtk_icon_theme_load_icon(%struct._GtkIconTheme* %23, i8* %25, i32 %26, i32 0, %struct._GError** null)
  store %struct._GdkPixbuf* %call20, %struct._GdkPixbuf** %pixbuf, align 8
  %27 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %call21 = call i8* @g_string_free(%struct._GString* %27, i32 1)
  %28 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool22 = icmp ne %struct._GdkPixbuf* %28, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.10
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %29, %struct._GdkPixbuf** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.10
  %call25 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GString* %call25, %struct._GString** %icon_name, align 8
  %30 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %31 = load i8*, i8** %mime_type.addr, align 8
  %32 = load i8*, i8** %separator, align 8
  %33 = load i8*, i8** %mime_type.addr, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %33 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %call29 = call %struct._GString* @g_string_append_len(%struct._GString* %30, i8* %31, i64 %sub.ptr.sub28)
  %34 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %icon_theme, align 8
  %35 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %str30 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str30, align 8
  %37 = load i32, i32* %pixel_size.addr, align 4
  %call31 = call %struct._GdkPixbuf* @gtk_icon_theme_load_icon(%struct._GtkIconTheme* %34, i8* %36, i32 %37, i32 0, %struct._GError** null)
  store %struct._GdkPixbuf* %call31, %struct._GdkPixbuf** %pixbuf, align 8
  %38 = load %struct._GString*, %struct._GString** %icon_name, align 8
  %call32 = call i8* @g_string_free(%struct._GString* %38, i32 1)
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %39, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.9, %if.then
  %40 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %40
}

declare %struct._GdkPixbuf* @gtk_icon_theme_load_icon(%struct._GtkIconTheme*, i8*, i32, i32, %struct._GError**) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._GtkIconTheme* @gtk_icon_theme_get_default() #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
