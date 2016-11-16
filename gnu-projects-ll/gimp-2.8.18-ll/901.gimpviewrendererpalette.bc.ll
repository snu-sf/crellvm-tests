; ModuleID = './app/widgets/gimpviewrendererpalette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererPaletteClass = type { %struct._GimpViewRendererClass }
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
%struct._GimpViewRendererPalette = type { %struct._GimpViewRenderer, i32, i32, i32, i32, i32, i32 }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }

@gimp_view_renderer_palette_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpViewRendererPalette\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_renderer_palette_set_cell_size = private unnamed_addr constant [41 x i8] c"gimp_view_renderer_palette_set_cell_size\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"GIMP_IS_VIEW_RENDERER_PALETTE (renderer)\00", align 1
@__func__.gimp_view_renderer_palette_set_draw_grid = private unnamed_addr constant [41 x i8] c"gimp_view_renderer_palette_set_draw_grid\00", align 1
@gimp_view_renderer_palette_parent_class = internal global i8* null, align 8
@GimpViewRendererPalette_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_palette_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_palette_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_palette_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_palette_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererPalette*)* @gimp_view_renderer_palette_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_palette_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_palette_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_palette_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_palette_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererPalette_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererPalette_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererPaletteClass*
  call void @gimp_view_renderer_palette_class_init(%struct._GimpViewRendererPaletteClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_palette_init(%struct._GimpViewRendererPalette* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererPalette*, align 8
  store %struct._GimpViewRendererPalette* %renderer, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %0 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %cell_size = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %0, i32 0, i32 1
  store i32 4, i32* %cell_size, align 4
  %1 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %draw_grid = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %1, i32 0, i32 2
  store i32 0, i32* %draw_grid, align 4
  %2 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %2, i32 0, i32 5
  store i32 16, i32* %columns, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_palette_set_cell_size(%struct._GimpViewRendererPalette* %renderer, i32 %cell_size) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererPalette*, align 8
  %cell_size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRendererPalette* %renderer, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  store i32 %cell_size, i32* %cell_size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRendererPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_palette_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_view_renderer_palette_set_cell_size, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %cell_size.addr, align 4
  %14 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %cell_size11 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %14, i32 0, i32 1
  %15 = load i32, i32* %cell_size11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %cell_size.addr, align 4
  %17 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %cell_size14 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %17, i32 0, i32 1
  store i32 %16, i32* %cell_size14, align 4
  %18 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %19 = bitcast %struct._GimpViewRendererPalette* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_view_renderer_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_palette_set_draw_grid(%struct._GimpViewRendererPalette* %renderer, i32 %draw_grid) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererPalette*, align 8
  %draw_grid.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRendererPalette* %renderer, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  store i32 %draw_grid, i32* %draw_grid.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRendererPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_palette_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_view_renderer_palette_set_draw_grid, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %draw_grid.addr, align 4
  %14 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %draw_grid11 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %14, i32 0, i32 2
  %15 = load i32, i32* %draw_grid11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %draw_grid.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %draw_grid15 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %17, i32 0, i32 2
  store i32 %cond, i32* %draw_grid15, align 4
  %18 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer.addr, align 8
  %19 = bitcast %struct._GimpViewRendererPalette* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_renderer_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_palette_class_init(%struct._GimpViewRendererPaletteClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererPaletteClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererPaletteClass* %klass, %struct._GimpViewRendererPaletteClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererPaletteClass*, %struct._GimpViewRendererPaletteClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererPaletteClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpViewRendererPaletteClass*, %struct._GimpViewRendererPaletteClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpViewRendererPaletteClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_view_renderer_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %5, %struct._GimpViewRendererClass** %renderer_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_view_renderer_palette_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %7, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_palette_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_palette_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_view_renderer_palette_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 6
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_palette_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %renderpal = alloca %struct._GimpViewRendererPalette*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %row = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %cell_width = alloca double, align 8
  %grid_width = alloca i32, align 4
  %dest_stride = alloca i32, align 4
  %y = alloca i32, align 4
  %n_columns = alloca i32, align 4
  %n_columns27 = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i8*, align 8
  %entry149 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_palette_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererPalette*
  store %struct._GimpViewRendererPalette* %2, %struct._GimpViewRendererPalette** %renderpal, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPalette*
  store %struct._GimpPalette* %6, %struct._GimpPalette** %palette, align 8
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call4 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %7)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %8, i32 0, i32 2
  %9 = load i32, i32* %draw_grid, align 4
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %grid_width, align 4
  %10 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_size = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %10, i32 0, i32 1
  %11 = load i32, i32* %cell_size, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.else.26

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call7 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %12)
  store i32 %call7, i32* %n_columns, align 4
  %13 = load i32, i32* %n_columns, align 4
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %14 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_size10 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %14, i32 0, i32 1
  %15 = load i32, i32* %cell_size10, align 4
  %conv = sitofp i32 %15 to double
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %grid_width, align 4
  %sub = sub nsw i32 %17, %18
  %conv11 = sitofp i32 %sub to double
  %19 = load i32, i32* %n_columns, align 4
  %conv12 = sitofp i32 %19 to double
  %div = fdiv double %conv11, %conv12
  %cmp13 = fcmp ogt double %conv, %div
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %20 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_size15 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %20, i32 0, i32 1
  %21 = load i32, i32* %cell_size15, align 4
  %conv16 = sitofp i32 %21 to double
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 4
  %23 = load i32, i32* %width17, align 4
  %24 = load i32, i32* %grid_width, align 4
  %sub18 = sub nsw i32 %23, %24
  %conv19 = sitofp i32 %sub18 to double
  %25 = load i32, i32* %n_columns, align 4
  %conv20 = sitofp i32 %25 to double
  %div21 = fdiv double %conv19, %conv20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi double [ %conv16, %cond.true ], [ %div21, %cond.false ]
  store double %cond22, double* %cell_width, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.6
  %26 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_size23 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %26, i32 0, i32 1
  %27 = load i32, i32* %cell_size23, align 4
  %conv24 = sitofp i32 %27 to double
  store double %conv24, double* %cell_width, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %cond.end
  br label %if.end.43

if.else.26:                                       ; preds = %if.end
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call28 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %28)
  store i32 %call28, i32* %n_columns27, align 4
  %29 = load i32, i32* %n_columns27, align 4
  %cmp29 = icmp sgt i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.else.26
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width32 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %30, i32 0, i32 4
  %31 = load i32, i32* %width32, align 4
  %32 = load i32, i32* %grid_width, align 4
  %sub33 = sub nsw i32 %31, %32
  %conv34 = sitofp i32 %sub33 to double
  %33 = load i32, i32* %n_columns27, align 4
  %conv35 = sitofp i32 %33 to double
  %div36 = fdiv double %conv34, %conv35
  store double %div36, double* %cell_width, align 8
  br label %if.end.42

if.else.37:                                       ; preds = %if.else.26
  %34 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width38 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %34, i32 0, i32 4
  %35 = load i32, i32* %width38, align 4
  %36 = load i32, i32* %grid_width, align 4
  %sub39 = sub nsw i32 %35, %36
  %conv40 = sitofp i32 %sub39 to double
  %div41 = fdiv double %conv40, 1.600000e+01
  store double %div41, double* %cell_width, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.37, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.25
  %37 = load double, double* %cell_width, align 8
  %cmp44 = fcmp ogt double 4.000000e+00, %37
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.end.43
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.end.43
  %38 = load double, double* %cell_width, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi double [ 4.000000e+00, %cond.true.46 ], [ %38, %cond.false.47 ]
  store double %cond49, double* %cell_width, align 8
  %39 = load double, double* %cell_width, align 8
  %conv50 = fptosi double %39 to i32
  %40 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width51 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %40, i32 0, i32 3
  store i32 %conv50, i32* %cell_width51, align 4
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width52 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %41, i32 0, i32 4
  %42 = load i32, i32* %width52, align 4
  %43 = load i32, i32* %grid_width, align 4
  %sub53 = sub nsw i32 %42, %43
  %conv54 = sitofp i32 %sub53 to double
  %44 = load double, double* %cell_width, align 8
  %div55 = fdiv double %conv54, %44
  %conv56 = fptosi double %div55 to i32
  %45 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %45, i32 0, i32 5
  store i32 %conv56, i32* %columns, align 4
  %46 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call57 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %46)
  %47 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %columns58 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %47, i32 0, i32 5
  %48 = load i32, i32* %columns58, align 4
  %div59 = sdiv i32 %call57, %48
  %49 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %rows = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %49, i32 0, i32 6
  store i32 %div59, i32* %rows, align 4
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call60 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %50)
  %51 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %columns61 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %51, i32 0, i32 5
  %52 = load i32, i32* %columns61, align 4
  %rem = srem i32 %call60, %52
  %tobool62 = icmp ne i32 %rem, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %cond.end.48
  %53 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %rows64 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %53, i32 0, i32 6
  %54 = load i32, i32* %rows64, align 4
  %add = add nsw i32 %54, 1
  store i32 %add, i32* %rows64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %cond.end.48
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %55, i32 0, i32 5
  %56 = load i32, i32* %height, align 4
  %57 = load i32, i32* %grid_width, align 4
  %sub66 = sub nsw i32 %56, %57
  %58 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %rows67 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %58, i32 0, i32 6
  %59 = load i32, i32* %rows67, align 4
  %div68 = sdiv i32 %sub66, %59
  %cmp69 = icmp sgt i32 4, %div68
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.end.65
  br label %cond.end.77

cond.false.72:                                    ; preds = %if.end.65
  %60 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height73 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %60, i32 0, i32 5
  %61 = load i32, i32* %height73, align 4
  %62 = load i32, i32* %grid_width, align 4
  %sub74 = sub nsw i32 %61, %62
  %63 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %rows75 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %63, i32 0, i32 6
  %64 = load i32, i32* %rows75, align 4
  %div76 = sdiv i32 %sub74, %64
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.72, %cond.true.71
  %cond78 = phi i32 [ 4, %cond.true.71 ], [ %div76, %cond.false.72 ]
  %65 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %65, i32 0, i32 4
  store i32 %cond78, i32* %cell_height, align 4
  %66 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid79 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %66, i32 0, i32 2
  %67 = load i32, i32* %draw_grid79, align 4
  %tobool80 = icmp ne i32 %67, 0
  br i1 %tobool80, label %if.end.93, label %if.then.81

if.then.81:                                       ; preds = %cond.end.77
  %68 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height82 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %68, i32 0, i32 4
  %69 = load i32, i32* %cell_height82, align 4
  %70 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width83 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %70, i32 0, i32 3
  %71 = load i32, i32* %cell_width83, align 4
  %cmp84 = icmp slt i32 %69, %71
  br i1 %cmp84, label %cond.true.86, label %cond.false.88

cond.true.86:                                     ; preds = %if.then.81
  %72 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height87 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %72, i32 0, i32 4
  %73 = load i32, i32* %cell_height87, align 4
  br label %cond.end.90

cond.false.88:                                    ; preds = %if.then.81
  %74 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width89 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %74, i32 0, i32 3
  %75 = load i32, i32* %cell_width89, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.86
  %cond91 = phi i32 [ %73, %cond.true.86 ], [ %75, %cond.false.88 ]
  %76 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height92 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %76, i32 0, i32 4
  store i32 %cond91, i32* %cell_height92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end.90, %cond.end.77
  %77 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call94 = call %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %77)
  store %struct._GList* %call94, %struct._GList** %list, align 8
  %78 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %78, i32 0, i32 10
  %79 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool95 = icmp ne %struct._cairo_surface* %79, null
  br i1 %tobool95, label %if.end.101, label %if.then.96

if.then.96:                                       ; preds = %if.end.93
  %80 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width97 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %80, i32 0, i32 4
  %81 = load i32, i32* %width97, align 4
  %82 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height98 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %82, i32 0, i32 5
  %83 = load i32, i32* %height98, align 4
  %call99 = call %struct._cairo_surface* @cairo_image_surface_create(i32 1, i32 %81, i32 %83)
  %84 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface100 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %84, i32 0, i32 10
  store %struct._cairo_surface* %call99, %struct._cairo_surface** %surface100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %if.end.93
  %85 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface102 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %85, i32 0, i32 10
  %86 = load %struct._cairo_surface*, %struct._cairo_surface** %surface102, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %86)
  %87 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width103 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %87, i32 0, i32 4
  %88 = load i32, i32* %width103, align 4
  %mul = mul nsw i32 %88, 4
  %conv104 = sext i32 %mul to i64
  %call105 = call noalias i8* @g_malloc_n(i64 %conv104, i64 1)
  store i8* %call105, i8** %row, align 8
  %89 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface106 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %89, i32 0, i32 10
  %90 = load %struct._cairo_surface*, %struct._cairo_surface** %surface106, align 8
  %call107 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %90)
  store i8* %call107, i8** %dest, align 8
  %91 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface108 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %91, i32 0, i32 10
  %92 = load %struct._cairo_surface*, %struct._cairo_surface** %surface108, align 8
  %call109 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %92)
  store i32 %call109, i32* %dest_stride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.198, %if.end.101
  %93 = load i32, i32* %y, align 4
  %94 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height110 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %94, i32 0, i32 5
  %95 = load i32, i32* %height110, align 4
  %cmp111 = icmp slt i32 %93, %95
  br i1 %cmp111, label %for.body, label %for.end.200

for.body:                                         ; preds = %for.cond
  %96 = load i32, i32* %y, align 4
  %97 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height113 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %97, i32 0, i32 4
  %98 = load i32, i32* %cell_height113, align 4
  %rem114 = srem i32 %96, %98
  %cmp115 = icmp eq i32 %rem114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.180

if.then.117:                                      ; preds = %for.body
  store i32 0, i32* %n, align 4
  %99 = load i8*, i8** %row, align 8
  store i8* %99, i8** %d, align 8
  %100 = load i8*, i8** %row, align 8
  %101 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid118 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %101, i32 0, i32 2
  %102 = load i32, i32* %draw_grid118, align 4
  %tobool119 = icmp ne i32 %102, 0
  %cond120 = select i1 %tobool119, i32 0, i32 255
  %103 = trunc i32 %cond120 to i8
  %104 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width121 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %104, i32 0, i32 4
  %105 = load i32, i32* %width121, align 4
  %mul122 = mul nsw i32 %105, 4
  %conv123 = sext i32 %mul122 to i64
  call void @llvm.memset.p0i8.i64(i8* %100, i8 %103, i64 %conv123, i32 1, i1 false)
  %106 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid124 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %106, i32 0, i32 2
  %107 = load i32, i32* %draw_grid124, align 4
  %tobool125 = icmp ne i32 %107, 0
  %cond126 = select i1 %tobool125, i32 0, i32 255
  %conv127 = trunc i32 %cond126 to i8
  store i8 %conv127, i8* %b, align 1
  store i8 %conv127, i8* %g, align 1
  store i8 %conv127, i8* %r, align 1
  store i32 0, i32* %x, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc, %if.then.117
  %108 = load i32, i32* %x, align 4
  %109 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width129 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %109, i32 0, i32 4
  %110 = load i32, i32* %width129, align 4
  %cmp130 = icmp slt i32 %108, %110
  br i1 %cmp130, label %for.body.132, label %for.end

for.body.132:                                     ; preds = %for.cond.128
  %111 = load i32, i32* %x, align 4
  %112 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width133 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %112, i32 0, i32 3
  %113 = load i32, i32* %cell_width133, align 4
  %rem134 = srem i32 %111, %113
  %cmp135 = icmp eq i32 %rem134, 0
  br i1 %cmp135, label %if.then.137, label %if.end.161

if.then.137:                                      ; preds = %for.body.132
  %114 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool138 = icmp ne %struct._GList* %114, null
  br i1 %tobool138, label %land.lhs.true, label %if.else.155

land.lhs.true:                                    ; preds = %if.then.137
  %115 = load i32, i32* %n, align 4
  %116 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %columns139 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %116, i32 0, i32 5
  %117 = load i32, i32* %columns139, align 4
  %cmp140 = icmp slt i32 %115, %117
  br i1 %cmp140, label %land.lhs.true.142, label %if.else.155

land.lhs.true.142:                                ; preds = %land.lhs.true
  %118 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width143 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %118, i32 0, i32 4
  %119 = load i32, i32* %width143, align 4
  %120 = load i32, i32* %x, align 4
  %sub144 = sub nsw i32 %119, %120
  %121 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width145 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %121, i32 0, i32 3
  %122 = load i32, i32* %cell_width145, align 4
  %cmp146 = icmp sge i32 %sub144, %122
  br i1 %cmp146, label %if.then.148, label %if.else.155

if.then.148:                                      ; preds = %land.lhs.true.142
  %123 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %123, i32 0, i32 0
  %124 = load i8*, i8** %data, align 8
  %125 = bitcast i8* %124 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %125, %struct._GimpPaletteEntry** %entry149, align 8
  %126 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool150 = icmp ne %struct._GList* %126, null
  br i1 %tobool150, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %if.then.148
  %127 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %127, i32 0, i32 1
  %128 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.153

cond.false.152:                                   ; preds = %if.then.148
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.151
  %cond154 = phi %struct._GList* [ %128, %cond.true.151 ], [ null, %cond.false.152 ]
  store %struct._GList* %cond154, %struct._GList** %list, align 8
  %129 = load i32, i32* %n, align 4
  %inc = add nsw i32 %129, 1
  store i32 %inc, i32* %n, align 4
  %130 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry149, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %130, i32 0, i32 0
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  br label %if.end.160

if.else.155:                                      ; preds = %land.lhs.true.142, %land.lhs.true, %if.then.137
  %131 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid156 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %131, i32 0, i32 2
  %132 = load i32, i32* %draw_grid156, align 4
  %tobool157 = icmp ne i32 %132, 0
  %cond158 = select i1 %tobool157, i32 0, i32 255
  %conv159 = trunc i32 %cond158 to i8
  store i8 %conv159, i8* %b, align 1
  store i8 %conv159, i8* %g, align 1
  store i8 %conv159, i8* %r, align 1
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.155, %cond.end.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %for.body.132
  %133 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid162 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %133, i32 0, i32 2
  %134 = load i32, i32* %draw_grid162, align 4
  %tobool163 = icmp ne i32 %134, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.172

land.lhs.true.164:                                ; preds = %if.end.161
  %135 = load i32, i32* %x, align 4
  %136 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_width165 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %136, i32 0, i32 3
  %137 = load i32, i32* %cell_width165, align 4
  %rem166 = srem i32 %135, %137
  %cmp167 = icmp eq i32 %rem166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %land.lhs.true.164
  br label %do.body

do.body:                                          ; preds = %if.then.169
  %138 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %138, i64 0
  store i8 0, i8* %arrayidx, align 1
  %139 = load i8*, i8** %d, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %139, i64 1
  store i8 0, i8* %arrayidx170, align 1
  %140 = load i8*, i8** %d, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %140, i64 2
  store i8 0, i8* %arrayidx171, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.178

if.else.172:                                      ; preds = %land.lhs.true.164, %if.end.161
  br label %do.body.173

do.body.173:                                      ; preds = %if.else.172
  %141 = load i8, i8* %b, align 1
  %142 = load i8*, i8** %d, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %141, i8* %arrayidx174, align 1
  %143 = load i8, i8* %g, align 1
  %144 = load i8*, i8** %d, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %143, i8* %arrayidx175, align 1
  %145 = load i8, i8* %r, align 1
  %146 = load i8*, i8** %d, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %146, i64 2
  store i8 %145, i8* %arrayidx176, align 1
  br label %do.end.177

do.end.177:                                       ; preds = %do.body.173
  br label %if.end.178

if.end.178:                                       ; preds = %do.end.177, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.178
  %147 = load i32, i32* %x, align 4
  %inc179 = add nsw i32 %147, 1
  store i32 %inc179, i32* %x, align 4
  %148 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %148, i64 4
  store i8* %add.ptr, i8** %d, align 8
  br label %for.cond.128

for.end:                                          ; preds = %for.cond.128
  br label %if.end.180

if.end.180:                                       ; preds = %for.end, %for.body
  %149 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %draw_grid181 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %149, i32 0, i32 2
  %150 = load i32, i32* %draw_grid181, align 4
  %tobool182 = icmp ne i32 %150, 0
  br i1 %tobool182, label %land.lhs.true.183, label %if.else.192

land.lhs.true.183:                                ; preds = %if.end.180
  %151 = load i32, i32* %y, align 4
  %152 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderpal, align 8
  %cell_height184 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %152, i32 0, i32 4
  %153 = load i32, i32* %cell_height184, align 4
  %rem185 = srem i32 %151, %153
  %cmp186 = icmp eq i32 %rem185, 0
  br i1 %cmp186, label %if.then.188, label %if.else.192

if.then.188:                                      ; preds = %land.lhs.true.183
  %154 = load i8*, i8** %dest, align 8
  %155 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width189 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %155, i32 0, i32 4
  %156 = load i32, i32* %width189, align 4
  %mul190 = mul nsw i32 %156, 4
  %conv191 = sext i32 %mul190 to i64
  call void @llvm.memset.p0i8.i64(i8* %154, i8 0, i64 %conv191, i32 1, i1 false)
  br label %if.end.196

if.else.192:                                      ; preds = %land.lhs.true.183, %if.end.180
  %157 = load i8*, i8** %dest, align 8
  %158 = load i8*, i8** %row, align 8
  %159 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width193 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %159, i32 0, i32 4
  %160 = load i32, i32* %width193, align 4
  %mul194 = mul nsw i32 %160, 4
  %conv195 = sext i32 %mul194 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 %conv195, i32 1, i1 false)
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.192, %if.then.188
  %161 = load i32, i32* %dest_stride, align 4
  %162 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %161 to i64
  %add.ptr197 = getelementptr inbounds i8, i8* %162, i64 %idx.ext
  store i8* %add.ptr197, i8** %dest, align 8
  br label %for.inc.198

for.inc.198:                                      ; preds = %if.end.196
  %163 = load i32, i32* %y, align 4
  %inc199 = add nsw i32 %163, 1
  store i32 %inc199, i32* %y, align 4
  br label %for.cond

for.end.200:                                      ; preds = %for.cond
  %164 = load i8*, i8** %row, align 8
  call void @g_free(i8* %164)
  %165 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface201 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %165, i32 0, i32 10
  %166 = load %struct._cairo_surface*, %struct._cairo_surface** %surface201, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %166)
  %167 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %167, i32 0, i32 15
  store i32 0, i32* %needs_render, align 4
  br label %return

return:                                           ; preds = %for.end.200, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

declare i32 @gimp_palette_get_columns(%struct._GimpPalette*) #1

declare %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @g_free(i8*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

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
