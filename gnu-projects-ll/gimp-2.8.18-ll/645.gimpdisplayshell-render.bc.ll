; ModuleID = './app/display/gimpdisplayshell-render.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._TileManager = type opaque
%struct._RenderInfo = type { %struct._TileManager*, i8*, i32, i8*, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct._GimpPickable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._Tile = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_render = private unnamed_addr constant [26 x i8] c"gimp_display_shell_render\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"w > 0 && h > 0\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: unsupported projection type (%d)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"gimpdisplayshell-render.c\00", align 1
@__func__.render_image_tile_fault = private unnamed_addr constant [24 x i8] c"render_image_tile_fault\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tile[4] != NULL\00", align 1
@tile_buf = internal global [1024 x i8] zeroinitializer, align 16
@__func__.render_image_tile_fault_nearest = private unnamed_addr constant [32 x i8] c"render_image_tile_fault_nearest\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tile != NULL\00", align 1
@__func__.render_image_tile_fault_one_row = private unnamed_addr constant [32 x i8] c"render_image_tile_fault_one_row\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"tile[0] != NULL\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"bpp=%i not implemented as box filter\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_render(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %projection = alloca %struct._GimpProjection*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %info = alloca %struct._RenderInfo, align 8
  %type = alloca i32, align 4
  %level = alloca i32, align 4
  %premult = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sub = alloca %struct._cairo_surface*, align 8
  %disp_xoffset = alloca i32, align 4
  %disp_yoffset = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_render, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp12 = icmp ne %struct._cairo* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_render, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %w.addr, align 4
  %cmp18 = icmp sgt i32 %14, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.22

land.lhs.true.19:                                 ; preds = %do.body.17
  %15 = load i32, i32* %h.addr, align 4
  %cmp20 = icmp sgt i32 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.19
  br label %if.end.23

if.else.22:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_render, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call25 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %17)
  store %struct._GimpImage* %call25, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %18)
  store %struct._GimpProjection* %call26, %struct._GimpProjection** %projection, align 8
  %19 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 13
  %21 = load double, double* %scale_x, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 14
  %23 = load double, double* %scale_y, align 8
  %call27 = call i32 @gimp_projection_get_level(%struct._GimpProjection* %19, double %21, double %23)
  store i32 %call27, i32* %level, align 4
  %24 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %25 = load i32, i32* %level, align 4
  %call28 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %24, i32 %25, i32* %premult)
  store %struct._TileManager* %call28, %struct._TileManager** %tiles, align 8
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %w.addr, align 4
  %30 = load i32, i32* %h.addr, align 4
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 45
  %32 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface, align 8
  %33 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %34 = load i32, i32* %level, align 4
  %35 = load i32, i32* %premult, align 4
  call void @gimp_display_shell_render_info_init(%struct._RenderInfo* %info, %struct._GimpDisplayShell* %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct._cairo_surface* %32, %struct._TileManager* %33, i32 %34, i32 %35)
  %36 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %37 = bitcast %struct._GimpProjection* %36 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_pickable_interface_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call29)
  %38 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpPickable*
  %call31 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %38)
  store i32 %call31, i32* %type, align 4
  %39 = load i32, i32* %type, align 4
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %do.end.24
  call void @render_image_rgb_a(%struct._RenderInfo* %info)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end.24
  call void @render_image_gray_a(%struct._RenderInfo* %info)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.24
  %40 = load i32, i32* %type, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_render, i32 0, i32 0), i32 %40)
  br label %do.body.33

do.body.33:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_render, i32 0, i32 0), i8* null) #9
  unreachable

do.end.34:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.34, %sw.bb.32, %sw.bb
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %filter_stack = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 77
  %42 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack, align 8
  %tobool35 = icmp ne %struct._GimpColorDisplayStack* %42, null
  br i1 %tobool35, label %if.then.36, label %if.end.50

if.then.36:                                       ; preds = %sw.epilog
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 45
  %44 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface38, align 8
  store %struct._cairo_surface* %44, %struct._cairo_surface** %sub, align 8
  %45 = load i32, i32* %w.addr, align 4
  %cmp39 = icmp ne i32 %45, 256
  br i1 %cmp39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.36
  %46 = load i32, i32* %h.addr, align 4
  %cmp40 = icmp ne i32 %46, 256
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.36
  %47 = load %struct._cairo_surface*, %struct._cairo_surface** %sub, align 8
  %call42 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %47)
  %48 = load i32, i32* %w.addr, align 4
  %49 = load i32, i32* %h.addr, align 4
  %call43 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %call42, i32 0, i32 %48, i32 %49, i32 1024)
  store %struct._cairo_surface* %call43, %struct._cairo_surface** %sub, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %lor.lhs.false
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %filter_stack45 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 77
  %51 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack45, align 8
  %52 = load %struct._cairo_surface*, %struct._cairo_surface** %sub, align 8
  call void @gimp_color_display_stack_convert_surface(%struct._GimpColorDisplayStack* %51, %struct._cairo_surface* %52)
  %53 = load %struct._cairo_surface*, %struct._cairo_surface** %sub, align 8
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface46 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 45
  %55 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface46, align 8
  %cmp47 = icmp ne %struct._cairo_surface* %53, %55
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  %56 = load %struct._cairo_surface*, %struct._cairo_surface** %sub, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %56)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %sw.epilog
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface51 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 45
  %58 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface51, align 8
  %59 = load i32, i32* %w.addr, align 4
  %60 = load i32, i32* %h.addr, align 4
  call void @cairo_surface_mark_dirty_rectangle(%struct._cairo_surface* %58, i32 0, i32 0, i32 %59, i32 %60)
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 98
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  %tobool52 = icmp ne %struct._GimpDrawable* %62, null
  br i1 %tobool52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.end.50
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_surface = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %63, i32 0, i32 46
  %64 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface, align 8
  %tobool54 = icmp ne %struct._cairo_surface* %64, null
  br i1 %tobool54, label %if.end.58, label %if.then.55

if.then.55:                                       ; preds = %if.then.53
  %call56 = call %struct._cairo_surface* @cairo_image_surface_create(i32 2, i32 256, i32 256)
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_surface57 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %65, i32 0, i32 46
  store %struct._cairo_surface* %call56, %struct._cairo_surface** %mask_surface57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.then.53
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 98
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask59, align 8
  %call60 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %67)
  store %struct._TileManager* %call60, %struct._TileManager** %tiles, align 8
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %69 = load i32, i32* %x.addr, align 4
  %70 = load i32, i32* %y.addr, align 4
  %71 = load i32, i32* %w.addr, align 4
  %72 = load i32, i32* %h.addr, align 4
  %73 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_surface61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %73, i32 0, i32 46
  %74 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface61, align 8
  %75 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @gimp_display_shell_render_info_init(%struct._RenderInfo* %info, %struct._GimpDisplayShell* %68, i32 %69, i32 %70, i32 %71, i32 %72, %struct._cairo_surface* %74, %struct._TileManager* %75, i32 0, i32 0)
  call void @render_image_alpha(%struct._RenderInfo* %info)
  %76 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_surface62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %76, i32 0, i32 46
  %77 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface62, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %77)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.58, %if.end.50
  %78 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %78)
  %79 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_get_disp_offset(%struct._GimpDisplayShell* %79, i32* %disp_xoffset, i32* %disp_yoffset)
  %80 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %81 = load i32, i32* %x.addr, align 4
  %82 = load i32, i32* %disp_xoffset, align 4
  %add = add nsw i32 %81, %82
  %conv = sitofp i32 %add to double
  %83 = load i32, i32* %y.addr, align 4
  %84 = load i32, i32* %disp_yoffset, align 4
  %add66 = add nsw i32 %83, %84
  %conv67 = sitofp i32 %add66 to double
  %85 = load i32, i32* %w.addr, align 4
  %conv68 = sitofp i32 %85 to double
  %86 = load i32, i32* %h.addr, align 4
  %conv69 = sitofp i32 %86 to double
  call void @cairo_rectangle(%struct._cairo* %80, double %conv, double %conv67, double %conv68, double %conv69)
  %87 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %87)
  %88 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %89 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface70 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %89, i32 0, i32 45
  %90 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface70, align 8
  %91 = load i32, i32* %x.addr, align 4
  %92 = load i32, i32* %disp_xoffset, align 4
  %add71 = add nsw i32 %91, %92
  %conv72 = sitofp i32 %add71 to double
  %93 = load i32, i32* %y.addr, align 4
  %94 = load i32, i32* %disp_yoffset, align 4
  %add73 = add nsw i32 %93, %94
  %conv74 = sitofp i32 %add73 to double
  call void @cairo_set_source_surface(%struct._cairo* %88, %struct._cairo_surface* %90, double %conv72, double %conv74)
  %95 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_paint(%struct._cairo* %95)
  %96 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask75 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %96, i32 0, i32 98
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask75, align 8
  %tobool76 = icmp ne %struct._GimpDrawable* %97, null
  br i1 %tobool76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.end.63
  %98 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %99 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_color = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %99, i32 0, i32 99
  call void @gimp_cairo_set_source_rgba(%struct._cairo* %98, %struct._GimpRGB* %mask_color)
  %100 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_surface78 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %101, i32 0, i32 46
  %102 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface78, align 8
  %103 = load i32, i32* %x.addr, align 4
  %104 = load i32, i32* %disp_xoffset, align 4
  %add79 = add nsw i32 %103, %104
  %conv80 = sitofp i32 %add79 to double
  %105 = load i32, i32* %y.addr, align 4
  %106 = load i32, i32* %disp_yoffset, align 4
  %add81 = add nsw i32 %105, %106
  %conv82 = sitofp i32 %add81 to double
  call void @cairo_mask_surface(%struct._cairo* %100, %struct._cairo_surface* %102, double %conv80, double %conv82)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.77, %if.end.63
  %107 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %107)
  br label %return

return:                                           ; preds = %if.end.83, %if.else.22, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

declare i32 @gimp_projection_get_level(%struct._GimpProjection*, double, double) #3

declare %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection*, i32, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_render_info_init(%struct._RenderInfo* %info, %struct._GimpDisplayShell* %shell, i32 %x, i32 %y, i32 %w, i32 %h, %struct._cairo_surface* %dest, %struct._TileManager* %tiles, i32 %level, i32 %is_premult) #0 {
entry:
  %info.addr = alloca %struct._RenderInfo*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dest.addr = alloca %struct._cairo_surface*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %level.addr = alloca i32, align 4
  %is_premult.addr = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store %struct._cairo_surface* %dest, %struct._cairo_surface** %dest.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %is_premult, i32* %is_premult.addr, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_get_render_start_offset(%struct._GimpDisplayShell* %0, i32* %offset_x, i32* %offset_y)
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %1, %2
  %3 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %3, i32 0, i32 4
  store i32 %add, i32* %x1, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %offset_y, align 4
  %add2 = add nsw i32 %4, %5
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 5
  store i32 %add2, i32* %y3, align 4
  %7 = load i32, i32* %w.addr, align 4
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w4 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 6
  store i32 %7, i32* %w4, align 4
  %9 = load i32, i32* %h.addr, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %h5 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 7
  store i32 %9, i32* %h5, align 4
  %11 = load %struct._cairo_surface*, %struct._cairo_surface** %dest.addr, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %11)
  %12 = load %struct._cairo_surface*, %struct._cairo_surface** %dest.addr, align 8
  %call = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %12)
  %13 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest6 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %13, i32 0, i32 3
  store i8* %call, i8** %dest6, align 8
  %14 = load %struct._cairo_surface*, %struct._cairo_surface** %dest.addr, align 8
  %call7 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %14)
  %15 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest_bpl = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %15, i32 0, i32 14
  store i32 %call7, i32* %dest_bpl, align 4
  %16 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %17 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %17, i32 0, i32 0
  store %struct._TileManager* %16, %struct._TileManager** %src_tiles, align 8
  %18 = load i32, i32* %is_premult.addr, align 4
  %19 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_is_premult = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %19, i32 0, i32 2
  store i32 %18, i32* %src_is_premult, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 13
  %21 = load double, double* %scale_x, align 8
  %22 = load i32, i32* %level.addr, align 4
  %shl = shl i32 1, %22
  %conv = sitofp i32 %shl to double
  %mul = fmul double %21, %conv
  %23 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %scalex = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %23, i32 0, i32 8
  store double %mul, double* %scalex, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 14
  %25 = load double, double* %scale_y, align 8
  %26 = load i32, i32* %level.addr, align 4
  %shl8 = shl i32 1, %26
  %conv9 = sitofp i32 %shl8 to double
  %mul10 = fmul double %25, %conv9
  %27 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %scaley = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %27, i32 0, i32 9
  store double %mul10, double* %scaley, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 13
  %29 = load double, double* %scale_x11, align 8
  %30 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scalex = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %30, i32 0, i32 10
  store double %29, double* %full_scalex, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 14
  %32 = load double, double* %scale_y12, align 8
  %33 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scaley = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %33, i32 0, i32 11
  store double %32, double* %full_scaley, align 8
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 20
  %35 = load i32, i32* %x_dest_inc, align 4
  %36 = load i32, i32* %level.addr, align 4
  %shr = ashr i32 %35, %36
  %37 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc13 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %37, i32 0, i32 16
  store i32 %shr, i32* %x_dest_inc13, align 4
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 18
  %39 = load i32, i32* %x_src_dec, align 4
  %40 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec14 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %40, i32 0, i32 17
  store i32 %39, i32* %x_src_dec14, align 4
  %41 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc15 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %41, i32 0, i32 16
  %42 = load i32, i32* %x_dest_inc15, align 4
  %conv16 = sext i32 %42 to i64
  %43 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x17 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %43, i32 0, i32 4
  %44 = load i32, i32* %x17, align 4
  %conv18 = sext i32 %44 to i64
  %mul19 = mul nsw i64 %conv16, %conv18
  %45 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc20 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %45, i32 0, i32 16
  %46 = load i32, i32* %x_dest_inc20, align 4
  %div = sdiv i32 %46, 2
  %conv21 = sext i32 %div to i64
  %add22 = add nsw i64 %mul19, %conv21
  %47 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %47, i32 0, i32 18
  store i64 %add22, i64* %dx_start, align 8
  %48 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start23 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %48, i32 0, i32 18
  %49 = load i64, i64* %dx_start23, align 8
  %50 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec24 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %50, i32 0, i32 17
  %51 = load i32, i32* %x_src_dec24, align 4
  %conv25 = sext i32 %51 to i64
  %div26 = sdiv i64 %49, %conv25
  %conv27 = trunc i64 %div26 to i32
  %52 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %52, i32 0, i32 12
  store i32 %conv27, i32* %src_x, align 4
  %53 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start28 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %53, i32 0, i32 18
  %54 = load i64, i64* %dx_start28, align 8
  %55 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec29 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %55, i32 0, i32 17
  %56 = load i32, i32* %x_src_dec29, align 4
  %conv30 = sext i32 %56 to i64
  %rem = srem i64 %54, %conv30
  %57 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start31 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %57, i32 0, i32 18
  store i64 %rem, i64* %dx_start31, align 8
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 21
  %59 = load i32, i32* %y_dest_inc, align 4
  %60 = load i32, i32* %level.addr, align 4
  %shr32 = ashr i32 %59, %60
  %61 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc33 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %61, i32 0, i32 19
  store i32 %shr32, i32* %y_dest_inc33, align 4
  %62 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %62, i32 0, i32 19
  %63 = load i32, i32* %y_src_dec, align 4
  %64 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec34 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %64, i32 0, i32 20
  store i32 %63, i32* %y_src_dec34, align 4
  %65 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc35 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %65, i32 0, i32 19
  %66 = load i32, i32* %y_dest_inc35, align 4
  %conv36 = sext i32 %66 to i64
  %67 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y37 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %67, i32 0, i32 5
  %68 = load i32, i32* %y37, align 4
  %conv38 = sext i32 %68 to i64
  %mul39 = mul nsw i64 %conv36, %conv38
  %69 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc40 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %69, i32 0, i32 19
  %70 = load i32, i32* %y_dest_inc40, align 4
  %div41 = sdiv i32 %70, 2
  %conv42 = sext i32 %div41 to i64
  %add43 = add nsw i64 %mul39, %conv42
  %71 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %71, i32 0, i32 21
  store i64 %add43, i64* %dy_start, align 8
  %72 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start44 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %72, i32 0, i32 21
  %73 = load i64, i64* %dy_start44, align 8
  %74 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec45 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %74, i32 0, i32 20
  %75 = load i32, i32* %y_src_dec45, align 4
  %conv46 = sext i32 %75 to i64
  %div47 = sdiv i64 %73, %conv46
  %conv48 = trunc i64 %div47 to i32
  %76 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %76, i32 0, i32 13
  store i32 %conv48, i32* %src_y, align 4
  %77 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start49 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %77, i32 0, i32 21
  %78 = load i64, i64* %dy_start49, align 8
  %79 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec50 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %79, i32 0, i32 20
  %80 = load i32, i32* %y_src_dec50, align 4
  %conv51 = sext i32 %80 to i64
  %rem52 = srem i64 %78, %conv51
  %81 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start53 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %81, i32 0, i32 21
  store i64 %rem52, i64* %dy_start53, align 8
  %82 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec54 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %82, i32 0, i32 17
  %83 = load i32, i32* %x_src_dec54, align 4
  %84 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %84, i32 0, i32 22
  store i32 %83, i32* %footprint_x, align 4
  %85 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %85, i32 0, i32 24
  store i32 0, i32* %footshift_x, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %86 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x55 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %86, i32 0, i32 22
  %87 = load i32, i32* %footprint_x55, align 4
  %cmp = icmp sgt i32 %87, 512
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %88 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x57 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %88, i32 0, i32 22
  %89 = load i32, i32* %footprint_x57, align 4
  %shr58 = ashr i32 %89, 1
  store i32 %shr58, i32* %footprint_x57, align 4
  %90 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x59 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %90, i32 0, i32 24
  %91 = load i32, i32* %footshift_x59, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %footshift_x59, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.64, %while.end
  %92 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x61 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %92, i32 0, i32 22
  %93 = load i32, i32* %footprint_x61, align 4
  %cmp62 = icmp slt i32 %93, 256
  br i1 %cmp62, label %while.body.64, label %while.end.68

while.body.64:                                    ; preds = %while.cond.60
  %94 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x65 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %94, i32 0, i32 22
  %95 = load i32, i32* %footprint_x65, align 4
  %shl66 = shl i32 %95, 1
  store i32 %shl66, i32* %footprint_x65, align 4
  %96 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x67 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %96, i32 0, i32 24
  %97 = load i32, i32* %footshift_x67, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %footshift_x67, align 4
  br label %while.cond.60

while.end.68:                                     ; preds = %while.cond.60
  %98 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec69 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %98, i32 0, i32 20
  %99 = load i32, i32* %y_src_dec69, align 4
  %100 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %100, i32 0, i32 23
  store i32 %99, i32* %footprint_y, align 4
  %101 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %101, i32 0, i32 25
  store i32 0, i32* %footshift_y, align 4
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.74, %while.end.68
  %102 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y71 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %102, i32 0, i32 23
  %103 = load i32, i32* %footprint_y71, align 4
  %cmp72 = icmp sgt i32 %103, 512
  br i1 %cmp72, label %while.body.74, label %while.end.79

while.body.74:                                    ; preds = %while.cond.70
  %104 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y75 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %104, i32 0, i32 23
  %105 = load i32, i32* %footprint_y75, align 4
  %shr76 = ashr i32 %105, 1
  store i32 %shr76, i32* %footprint_y75, align 4
  %106 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y77 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %106, i32 0, i32 25
  %107 = load i32, i32* %footshift_y77, align 4
  %dec78 = add nsw i32 %107, -1
  store i32 %dec78, i32* %footshift_y77, align 4
  br label %while.cond.70

while.end.79:                                     ; preds = %while.cond.70
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.84, %while.end.79
  %108 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y81 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %108, i32 0, i32 23
  %109 = load i32, i32* %footprint_y81, align 4
  %cmp82 = icmp slt i32 %109, 256
  br i1 %cmp82, label %while.body.84, label %while.end.89

while.body.84:                                    ; preds = %while.cond.80
  %110 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y85 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %110, i32 0, i32 23
  %111 = load i32, i32* %footprint_y85, align 4
  %shl86 = shl i32 %111, 1
  store i32 %shl86, i32* %footprint_y85, align 4
  %112 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y87 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %112, i32 0, i32 25
  %113 = load i32, i32* %footshift_y87, align 4
  %inc88 = add nsw i32 %113, 1
  store i32 %inc88, i32* %footshift_y87, align 4
  br label %while.cond.80

while.end.89:                                     ; preds = %while.cond.80
  %114 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %114, i32 0, i32 1
  %115 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %115, i32 0, i32 2
  %116 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %zoom_quality = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %116, i32 0, i32 28
  %117 = load i32, i32* %zoom_quality, align 4
  switch i32 %117, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %while.end.89
  %118 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %zoom_quality90 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %118, i32 0, i32 15
  store i32 1, i32* %zoom_quality90, align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %while.end.89
  %119 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %zoom_quality92 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %119, i32 0, i32 15
  store i32 2, i32* %zoom_quality92, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.89, %sw.bb.91, %sw.bb
  ret void
}

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @render_image_rgb_a(%struct._RenderInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._RenderInfo*, align 8
  %y = alloca i32, align 4
  %ye = alloca i32, align 4
  %x = alloca i32, align 4
  %xe = alloca i32, align 4
  %src5 = alloca i8*, align 8
  %dest = alloca i32*, align 8
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %y1, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 5
  %3 = load i32, i32* %y2, align 4
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %h = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %ye, align 4
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 4
  %7 = load i32, i32* %x3, align 4
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 6
  %9 = load i32, i32* %w, align 4
  %add4 = add nsw i32 %7, %9
  store i32 %add4, i32* %xe, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 21
  %11 = load i64, i64* %dy_start, align 8
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 26
  store i64 %11, i64* %dy, align 8
  %13 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call = call i8* @render_image_tile_fault(%struct._RenderInfo* %13)
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 1
  store i8* %call, i8** %src, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.42
  %15 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src6 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %15, i32 0, i32 1
  %16 = load i8*, i8** %src6, align 8
  store i8* %16, i8** %src5, align 8
  %17 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest7 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %17, i32 0, i32 3
  %18 = load i8*, i8** %dest7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %dest, align 8
  %20 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x8 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %20, i32 0, i32 4
  %21 = load i32, i32* %x8, align 4
  store i32 %21, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %xe, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %src5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %shl = shl i32 %conv, 24
  %26 = load i8*, i8** %src5, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %27 to i32
  %shl11 = shl i32 %conv10, 16
  %or = or i32 %shl, %shl11
  %28 = load i8*, i8** %src5, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %29 to i32
  %shl14 = shl i32 %conv13, 8
  %or15 = or i32 %or, %shl14
  %30 = load i8*, i8** %src5, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %31 to i32
  %or18 = or i32 %or15, %conv17
  %32 = load i32*, i32** %dest, align 8
  store i32 %or18, i32* %32, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %x, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %x, align 4
  %34 = load i8*, i8** %src5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %add.ptr, i8** %src5, align 8
  %35 = load i32*, i32** %dest, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %y, align 4
  %inc19 = add nsw i32 %36, 1
  store i32 %inc19, i32* %y, align 4
  %37 = load i32, i32* %ye, align 4
  %cmp20 = icmp eq i32 %inc19, %37
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  %38 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest_bpl = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %38, i32 0, i32 14
  %39 = load i32, i32* %dest_bpl, align 4
  %40 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest22 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %40, i32 0, i32 3
  %41 = load i8*, i8** %dest22, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr23, i8** %dest22, align 8
  %42 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %42, i32 0, i32 19
  %43 = load i32, i32* %y_dest_inc, align 4
  %conv24 = sext i32 %43 to i64
  %44 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy25 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %44, i32 0, i32 26
  %45 = load i64, i64* %dy25, align 8
  %add26 = add nsw i64 %45, %conv24
  store i64 %add26, i64* %dy25, align 8
  %46 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy27 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %46, i32 0, i32 26
  %47 = load i64, i64* %dy27, align 8
  %48 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %48, i32 0, i32 20
  %49 = load i32, i32* %y_src_dec, align 4
  %conv28 = sext i32 %49 to i64
  %div = sdiv i64 %47, %conv28
  %50 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %50, i32 0, i32 13
  %51 = load i32, i32* %src_y, align 4
  %conv29 = sext i32 %51 to i64
  %add30 = add nsw i64 %conv29, %div
  %conv31 = trunc i64 %add30 to i32
  store i32 %conv31, i32* %src_y, align 4
  %52 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy32 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %52, i32 0, i32 26
  %53 = load i64, i64* %dy32, align 8
  %54 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec33 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %54, i32 0, i32 20
  %55 = load i32, i32* %y_src_dec33, align 4
  %conv34 = sext i32 %55 to i64
  %rem = srem i64 %53, %conv34
  %56 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy35 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %56, i32 0, i32 26
  store i64 %rem, i64* %dy35, align 8
  %57 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y36 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %57, i32 0, i32 13
  %58 = load i32, i32* %src_y36, align 4
  %cmp37 = icmp sge i32 %58, 0
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end
  %59 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call40 = call i8* @render_image_tile_fault(%struct._RenderInfo* %59)
  %60 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src41 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %60, i32 0, i32 1
  store i8* %call40, i8** %src41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end
  br label %while.body

while.end:                                        ; preds = %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_image_gray_a(%struct._RenderInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._RenderInfo*, align 8
  %y = alloca i32, align 4
  %ye = alloca i32, align 4
  %x = alloca i32, align 4
  %xe = alloca i32, align 4
  %src5 = alloca i8*, align 8
  %dest = alloca i32*, align 8
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %y1, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 5
  %3 = load i32, i32* %y2, align 4
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %h = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %ye, align 4
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 4
  %7 = load i32, i32* %x3, align 4
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 6
  %9 = load i32, i32* %w, align 4
  %add4 = add nsw i32 %7, %9
  store i32 %add4, i32* %xe, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 21
  %11 = load i64, i64* %dy_start, align 8
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 26
  store i64 %11, i64* %dy, align 8
  %13 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call = call i8* @render_image_tile_fault(%struct._RenderInfo* %13)
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 1
  store i8* %call, i8** %src, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %15 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src6 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %15, i32 0, i32 1
  %16 = load i8*, i8** %src6, align 8
  store i8* %16, i8** %src5, align 8
  %17 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest7 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %17, i32 0, i32 3
  %18 = load i8*, i8** %dest7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %dest, align 8
  %20 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x8 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %20, i32 0, i32 4
  %21 = load i32, i32* %x8, align 4
  store i32 %21, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %xe, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %src5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %shl = shl i32 %conv, 24
  %26 = load i8*, i8** %src5, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %27 to i32
  %shl11 = shl i32 %conv10, 16
  %or = or i32 %shl, %shl11
  %28 = load i8*, i8** %src5, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %29 to i32
  %shl14 = shl i32 %conv13, 8
  %or15 = or i32 %or, %shl14
  %30 = load i8*, i8** %src5, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %31 to i32
  %or18 = or i32 %or15, %conv17
  %32 = load i32*, i32** %dest, align 8
  store i32 %or18, i32* %32, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %x, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %x, align 4
  %34 = load i8*, i8** %src5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr, i8** %src5, align 8
  %35 = load i32*, i32** %dest, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %y, align 4
  %inc19 = add nsw i32 %36, 1
  store i32 %inc19, i32* %y, align 4
  %37 = load i32, i32* %ye, align 4
  %cmp20 = icmp eq i32 %inc19, %37
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  %38 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest_bpl = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %38, i32 0, i32 14
  %39 = load i32, i32* %dest_bpl, align 4
  %40 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest22 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %40, i32 0, i32 3
  %41 = load i8*, i8** %dest22, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr23, i8** %dest22, align 8
  %42 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %42, i32 0, i32 19
  %43 = load i32, i32* %y_dest_inc, align 4
  %conv24 = sext i32 %43 to i64
  %44 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy25 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %44, i32 0, i32 26
  %45 = load i64, i64* %dy25, align 8
  %add26 = add nsw i64 %45, %conv24
  store i64 %add26, i64* %dy25, align 8
  %46 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy27 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %46, i32 0, i32 26
  %47 = load i64, i64* %dy27, align 8
  %48 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %48, i32 0, i32 20
  %49 = load i32, i32* %y_src_dec, align 4
  %conv28 = sext i32 %49 to i64
  %div = sdiv i64 %47, %conv28
  %50 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %50, i32 0, i32 13
  %51 = load i32, i32* %src_y, align 4
  %conv29 = sext i32 %51 to i64
  %add30 = add nsw i64 %conv29, %div
  %conv31 = trunc i64 %add30 to i32
  store i32 %conv31, i32* %src_y, align 4
  %52 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy32 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %52, i32 0, i32 26
  %53 = load i64, i64* %dy32, align 8
  %54 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec33 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %54, i32 0, i32 20
  %55 = load i32, i32* %y_src_dec33, align 4
  %conv34 = sext i32 %55 to i64
  %rem = srem i64 %53, %conv34
  %56 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy35 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %56, i32 0, i32 26
  store i64 %rem, i64* %dy35, align 8
  %57 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call36 = call i8* @render_image_tile_fault(%struct._RenderInfo* %57)
  %58 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src37 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %58, i32 0, i32 1
  store i8* %call36, i8** %src37, align 8
  br label %while.body

while.end:                                        ; preds = %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #3

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #3

declare void @gimp_color_display_stack_convert_surface(%struct._GimpColorDisplayStack*, %struct._cairo_surface*) #3

declare void @cairo_surface_destroy(%struct._cairo_surface*) #3

declare void @cairo_surface_mark_dirty_rectangle(%struct._cairo_surface*, i32, i32, i32, i32) #3

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

; Function Attrs: nounwind uwtable
define internal void @render_image_alpha(%struct._RenderInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._RenderInfo*, align 8
  %y = alloca i32, align 4
  %ye = alloca i32, align 4
  %x = alloca i32, align 4
  %xe = alloca i32, align 4
  %src5 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %y1, align 4
  store i32 %1, i32* %y, align 4
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 5
  %3 = load i32, i32* %y2, align 4
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %h = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %ye, align 4
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 4
  %7 = load i32, i32* %x3, align 4
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 6
  %9 = load i32, i32* %w, align 4
  %add4 = add nsw i32 %7, %9
  store i32 %add4, i32* %xe, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 21
  %11 = load i64, i64* %dy_start, align 8
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 26
  store i64 %11, i64* %dy, align 8
  %13 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call = call i8* @render_image_tile_fault(%struct._RenderInfo* %13)
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 1
  store i8* %call, i8** %src, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %15 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src6 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %15, i32 0, i32 1
  %16 = load i8*, i8** %src6, align 8
  store i8* %16, i8** %src5, align 8
  %17 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest7 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %17, i32 0, i32 3
  %18 = load i8*, i8** %dest7, align 8
  store i8* %18, i8** %dest, align 8
  %19 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x8 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %19, i32 0, i32 4
  %20 = load i32, i32* %x8, align 4
  store i32 %20, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %xe, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %src5, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %sub = sub nsw i32 255, %conv
  %conv9 = trunc i32 %sub to i8
  %25 = load i8*, i8** %dest, align 8
  store i8 %conv9, i8* %25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %x, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %x, align 4
  %27 = load i8*, i8** %src5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %src5, align 8
  %28 = load i8*, i8** %dest, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr10, i8** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %29, 1
  store i32 %inc11, i32* %y, align 4
  %30 = load i32, i32* %ye, align 4
  %cmp12 = icmp eq i32 %inc11, %30
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  %31 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest_bpl = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %31, i32 0, i32 14
  %32 = load i32, i32* %dest_bpl, align 4
  %33 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dest14 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %33, i32 0, i32 3
  %34 = load i8*, i8** %dest14, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %dest14, align 8
  %35 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %35, i32 0, i32 19
  %36 = load i32, i32* %y_dest_inc, align 4
  %conv15 = sext i32 %36 to i64
  %37 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy16 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %37, i32 0, i32 26
  %38 = load i64, i64* %dy16, align 8
  %add17 = add nsw i64 %38, %conv15
  store i64 %add17, i64* %dy16, align 8
  %39 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy18 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %39, i32 0, i32 26
  %40 = load i64, i64* %dy18, align 8
  %41 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %41, i32 0, i32 20
  %42 = load i32, i32* %y_src_dec, align 4
  %conv19 = sext i32 %42 to i64
  %div = sdiv i64 %40, %conv19
  %43 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %43, i32 0, i32 13
  %44 = load i32, i32* %src_y, align 4
  %conv20 = sext i32 %44 to i64
  %add21 = add nsw i64 %conv20, %div
  %conv22 = trunc i64 %add21 to i32
  store i32 %conv22, i32* %src_y, align 4
  %45 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy23 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %45, i32 0, i32 26
  %46 = load i64, i64* %dy23, align 8
  %47 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %y_src_dec24 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %47, i32 0, i32 20
  %48 = load i32, i32* %y_src_dec24, align 4
  %conv25 = sext i32 %48 to i64
  %rem = srem i64 %46, %conv25
  %49 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy26 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %49, i32 0, i32 26
  store i64 %rem, i64* %dy26, align 8
  %50 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call27 = call i8* @render_image_tile_fault(%struct._RenderInfo* %50)
  %51 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src28 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %51, i32 0, i32 1
  store i8* %call27, i8** %src28, align 8
  br label %while.body

while.end:                                        ; preds = %if.then
  ret void
}

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #3

declare void @cairo_save(%struct._cairo*) #3

declare void @gimp_display_shell_scroll_get_disp_offset(%struct._GimpDisplayShell*, i32*, i32*) #3

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #3

declare void @cairo_clip(%struct._cairo*) #3

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #3

declare void @cairo_paint(%struct._cairo*) #3

declare void @gimp_cairo_set_source_rgba(%struct._cairo*, %struct._GimpRGB*) #3

declare void @cairo_mask_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #3

declare void @cairo_restore(%struct._cairo*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @render_image_tile_fault(%struct._RenderInfo* %info) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._RenderInfo*, align 8
  %tile = alloca [9 x %struct._Tile*], align 16
  %src = alloca [9 x i8*], align 16
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %tilex0 = alloca i32, align 4
  %tilex1 = alloca i32, align 4
  %tilexL = alloca i32, align 4
  %bpp = alloca i32, align 4
  %dx = alloca i32, align 4
  %src_x = alloca i32, align 4
  %skipped = alloca i32, align 4
  %left_weight = alloca i32, align 4
  %center_weight = alloca i32, align 4
  %right_weight = alloca i32, align 4
  %top_weight = alloca i32, align 4
  %middle_weight = alloca i32, align 4
  %bottom_weight = alloca i32, align 4
  %source_width = alloca i32, align 4
  %source_height = alloca i32, align 4
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 0
  %1 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %1)
  store i32 %call, i32* %source_width, align 4
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 0
  %3 = load %struct._TileManager*, %struct._TileManager** %src_tiles1, align 8
  %call2 = call i32 @tile_manager_height(%struct._TileManager* %3)
  store i32 %call2, i32* %source_height, align 4
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %zoom_quality = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 15
  %5 = load i32, i32* %zoom_quality, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %scalex = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 8
  %7 = load double, double* %scalex, align 8
  %cmp = fcmp oeq double %7, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.4

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %scaley = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 9
  %9 = load double, double* %scaley, align 8
  %cmp3 = fcmp oeq double %9, 1.000000e+00
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scalex = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 10
  %11 = load double, double* %full_scalex, align 8
  %cmp5 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false.12

land.lhs.true.6:                                  ; preds = %lor.lhs.false.4
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scaley = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 11
  %13 = load double, double* %full_scaley, align 8
  %cmp7 = fcmp ogt double %13, 1.000000e+00
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.12

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %zoom_quality9 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 15
  %15 = load i32, i32* %zoom_quality9, align 4
  %and10 = and i32 %15, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %land.lhs.true.8, %land.lhs.true.6, %lor.lhs.false.4
  %16 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scalex13 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %16, i32 0, i32 10
  %17 = load double, double* %full_scalex13, align 8
  %cmp14 = fcmp oge double %17, 2.000000e+00
  br i1 %cmp14, label %land.lhs.true.15, label %lor.lhs.false.18

land.lhs.true.15:                                 ; preds = %lor.lhs.false.12
  %18 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %full_scaley16 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %18, i32 0, i32 11
  %19 = load double, double* %full_scaley16, align 8
  %cmp17 = fcmp oge double %19, 2.000000e+00
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %land.lhs.true.15, %lor.lhs.false.12
  %20 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles19 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %20, i32 0, i32 0
  %21 = load %struct._TileManager*, %struct._TileManager** %src_tiles19, align 8
  %call20 = call i32 @tile_manager_bpp(%struct._TileManager* %21)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.18, %land.lhs.true.15, %land.lhs.true.8, %land.lhs.true, %entry
  %22 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call22 = call i8* @render_image_tile_fault_nearest(%struct._RenderInfo* %22)
  store i8* %call22, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.18
  %23 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %23, i32 0, i32 13
  %24 = load i32, i32* %src_y, align 4
  %and23 = and i32 %24, -64
  %25 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y24 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %25, i32 0, i32 13
  %26 = load i32, i32* %src_y24, align 4
  %add = add nsw i32 %26, 1
  %and25 = and i32 %add, -64
  %cmp26 = icmp eq i32 %and23, %and25
  br i1 %cmp26, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %if.else
  %27 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y28 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %27, i32 0, i32 13
  %28 = load i32, i32* %src_y28, align 4
  %and29 = and i32 %28, -64
  %29 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y30 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %29, i32 0, i32 13
  %30 = load i32, i32* %src_y30, align 4
  %sub = sub nsw i32 %30, 1
  %and31 = and i32 %sub, -64
  %cmp32 = icmp eq i32 %and29, %and31
  br i1 %cmp32, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %land.lhs.true.27
  %31 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y34 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %31, i32 0, i32 13
  %32 = load i32, i32* %src_y34, align 4
  %add35 = add nsw i32 %32, 1
  %33 = load i32, i32* %source_height, align 4
  %cmp36 = icmp ult i32 %add35, %33
  br i1 %cmp36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %land.lhs.true.33
  %34 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %call38 = call i8* @render_image_tile_fault_one_row(%struct._RenderInfo* %34)
  store i8* %call38, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.33, %land.lhs.true.27, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end
  %35 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %35, i32 0, i32 23
  %36 = load i32, i32* %footprint_y, align 4
  %div = sdiv i32 %36, 2
  %conv = sext i32 %div to i64
  %37 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %37, i32 0, i32 25
  %38 = load i32, i32* %footshift_y, align 4
  %cmp40 = icmp sgt i32 %38, 0
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %39 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %39, i32 0, i32 26
  %40 = load i64, i64* %dy, align 8
  %41 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y42 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %41, i32 0, i32 25
  %42 = load i32, i32* %footshift_y42, align 4
  %sh_prom = zext i32 %42 to i64
  %shl = shl i64 %40, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %43 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy43 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %43, i32 0, i32 26
  %44 = load i64, i64* %dy43, align 8
  %45 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y44 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %45, i32 0, i32 25
  %46 = load i32, i32* %footshift_y44, align 4
  %sub45 = sub nsw i32 0, %46
  %sh_prom46 = zext i32 %sub45 to i64
  %shr = ashr i64 %44, %sh_prom46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %shr, %cond.false ]
  %cmp47 = icmp sgt i64 %conv, %cond
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end
  %47 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y50 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %47, i32 0, i32 23
  %48 = load i32, i32* %footprint_y50, align 4
  %div51 = sdiv i32 %48, 2
  %conv52 = sext i32 %div51 to i64
  br label %cond.end.70

cond.false.53:                                    ; preds = %cond.end
  %49 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y54 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %49, i32 0, i32 25
  %50 = load i32, i32* %footshift_y54, align 4
  %cmp55 = icmp sgt i32 %50, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.62

cond.true.57:                                     ; preds = %cond.false.53
  %51 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy58 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %51, i32 0, i32 26
  %52 = load i64, i64* %dy58, align 8
  %53 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y59 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %53, i32 0, i32 25
  %54 = load i32, i32* %footshift_y59, align 4
  %sh_prom60 = zext i32 %54 to i64
  %shl61 = shl i64 %52, %sh_prom60
  br label %cond.end.68

cond.false.62:                                    ; preds = %cond.false.53
  %55 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy63 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %55, i32 0, i32 26
  %56 = load i64, i64* %dy63, align 8
  %57 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y64 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %57, i32 0, i32 25
  %58 = load i32, i32* %footshift_y64, align 4
  %sub65 = sub nsw i32 0, %58
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %56, %sh_prom66
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.62, %cond.true.57
  %cond69 = phi i64 [ %shl61, %cond.true.57 ], [ %shr67, %cond.false.62 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.49
  %cond71 = phi i64 [ %conv52, %cond.true.49 ], [ %cond69, %cond.end.68 ]
  %59 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y72 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %59, i32 0, i32 25
  %60 = load i32, i32* %footshift_y72, align 4
  %cmp73 = icmp sgt i32 %60, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %cond.end.70
  %61 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy76 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %61, i32 0, i32 26
  %62 = load i64, i64* %dy76, align 8
  %63 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y77 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %63, i32 0, i32 25
  %64 = load i32, i32* %footshift_y77, align 4
  %sh_prom78 = zext i32 %64 to i64
  %shl79 = shl i64 %62, %sh_prom78
  br label %cond.end.86

cond.false.80:                                    ; preds = %cond.end.70
  %65 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy81 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %65, i32 0, i32 26
  %66 = load i64, i64* %dy81, align 8
  %67 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y82 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %67, i32 0, i32 25
  %68 = load i32, i32* %footshift_y82, align 4
  %sub83 = sub nsw i32 0, %68
  %sh_prom84 = zext i32 %sub83 to i64
  %shr85 = ashr i64 %66, %sh_prom84
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.80, %cond.true.75
  %cond87 = phi i64 [ %shl79, %cond.true.75 ], [ %shr85, %cond.false.80 ]
  %sub88 = sub nsw i64 %cond71, %cond87
  %conv89 = trunc i64 %sub88 to i32
  store i32 %conv89, i32* %top_weight, align 4
  %69 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y90 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %69, i32 0, i32 23
  %70 = load i32, i32* %footprint_y90, align 4
  %div91 = sdiv i32 %70, 2
  %conv92 = sext i32 %div91 to i64
  %71 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y93 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %71, i32 0, i32 25
  %72 = load i32, i32* %footshift_y93, align 4
  %cmp94 = icmp sgt i32 %72, 0
  br i1 %cmp94, label %cond.true.96, label %cond.false.101

cond.true.96:                                     ; preds = %cond.end.86
  %73 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy97 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %73, i32 0, i32 26
  %74 = load i64, i64* %dy97, align 8
  %75 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y98 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %75, i32 0, i32 25
  %76 = load i32, i32* %footshift_y98, align 4
  %sh_prom99 = zext i32 %76 to i64
  %shl100 = shl i64 %74, %sh_prom99
  br label %cond.end.107

cond.false.101:                                   ; preds = %cond.end.86
  %77 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy102 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %77, i32 0, i32 26
  %78 = load i64, i64* %dy102, align 8
  %79 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y103 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %79, i32 0, i32 25
  %80 = load i32, i32* %footshift_y103, align 4
  %sub104 = sub nsw i32 0, %80
  %sh_prom105 = zext i32 %sub104 to i64
  %shr106 = ashr i64 %78, %sh_prom105
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.101, %cond.true.96
  %cond108 = phi i64 [ %shl100, %cond.true.96 ], [ %shr106, %cond.false.101 ]
  %cmp109 = icmp sgt i64 %conv92, %cond108
  br i1 %cmp109, label %cond.true.111, label %cond.false.115

cond.true.111:                                    ; preds = %cond.end.107
  %81 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y112 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %81, i32 0, i32 23
  %82 = load i32, i32* %footprint_y112, align 4
  %div113 = sdiv i32 %82, 2
  %conv114 = sext i32 %div113 to i64
  br label %cond.end.132

cond.false.115:                                   ; preds = %cond.end.107
  %83 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y116 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %83, i32 0, i32 25
  %84 = load i32, i32* %footshift_y116, align 4
  %cmp117 = icmp sgt i32 %84, 0
  br i1 %cmp117, label %cond.true.119, label %cond.false.124

cond.true.119:                                    ; preds = %cond.false.115
  %85 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy120 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %85, i32 0, i32 26
  %86 = load i64, i64* %dy120, align 8
  %87 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y121 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %87, i32 0, i32 25
  %88 = load i32, i32* %footshift_y121, align 4
  %sh_prom122 = zext i32 %88 to i64
  %shl123 = shl i64 %86, %sh_prom122
  br label %cond.end.130

cond.false.124:                                   ; preds = %cond.false.115
  %89 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy125 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %89, i32 0, i32 26
  %90 = load i64, i64* %dy125, align 8
  %91 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y126 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %91, i32 0, i32 25
  %92 = load i32, i32* %footshift_y126, align 4
  %sub127 = sub nsw i32 0, %92
  %sh_prom128 = zext i32 %sub127 to i64
  %shr129 = ashr i64 %90, %sh_prom128
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.124, %cond.true.119
  %cond131 = phi i64 [ %shl123, %cond.true.119 ], [ %shr129, %cond.false.124 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.111
  %cond133 = phi i64 [ %conv114, %cond.true.111 ], [ %cond131, %cond.end.130 ]
  %93 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y134 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %93, i32 0, i32 23
  %94 = load i32, i32* %footprint_y134, align 4
  %div135 = sdiv i32 %94, 2
  %conv136 = sext i32 %div135 to i64
  %sub137 = sub nsw i64 %cond133, %conv136
  %conv138 = trunc i64 %sub137 to i32
  store i32 %conv138, i32* %bottom_weight, align 4
  %95 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y139 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %95, i32 0, i32 23
  %96 = load i32, i32* %footprint_y139, align 4
  %97 = load i32, i32* %top_weight, align 4
  %sub140 = sub i32 %96, %97
  %98 = load i32, i32* %bottom_weight, align 4
  %sub141 = sub i32 %sub140, %98
  store i32 %sub141, i32* %middle_weight, align 4
  %99 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles142 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %99, i32 0, i32 0
  %100 = load %struct._TileManager*, %struct._TileManager** %src_tiles142, align 8
  %101 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x143 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %101, i32 0, i32 12
  %102 = load i32, i32* %src_x143, align 4
  %103 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y144 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %103, i32 0, i32 13
  %104 = load i32, i32* %src_y144, align 4
  %call145 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %100, i32 %102, i32 %104, i32 1, i32 0)
  %arrayidx = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  store %struct._Tile* %call145, %struct._Tile** %arrayidx, align 8
  %105 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles146 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %105, i32 0, i32 0
  %106 = load %struct._TileManager*, %struct._TileManager** %src_tiles146, align 8
  %107 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x147 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %107, i32 0, i32 12
  %108 = load i32, i32* %src_x147, align 4
  %109 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y148 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %109, i32 0, i32 13
  %110 = load i32, i32* %src_y148, align 4
  %add149 = add nsw i32 %110, 1
  %call150 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %106, i32 %108, i32 %add149, i32 1, i32 0)
  %arrayidx151 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  store %struct._Tile* %call150, %struct._Tile** %arrayidx151, align 8
  %111 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles152 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %111, i32 0, i32 0
  %112 = load %struct._TileManager*, %struct._TileManager** %src_tiles152, align 8
  %113 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x153 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %113, i32 0, i32 12
  %114 = load i32, i32* %src_x153, align 4
  %115 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y154 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %115, i32 0, i32 13
  %116 = load i32, i32* %src_y154, align 4
  %sub155 = sub nsw i32 %116, 1
  %call156 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %112, i32 %114, i32 %sub155, i32 1, i32 0)
  %arrayidx157 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  store %struct._Tile* %call156, %struct._Tile** %arrayidx157, align 8
  %117 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles158 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %117, i32 0, i32 0
  %118 = load %struct._TileManager*, %struct._TileManager** %src_tiles158, align 8
  %119 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x159 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %119, i32 0, i32 12
  %120 = load i32, i32* %src_x159, align 4
  %add160 = add nsw i32 %120, 1
  %121 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y161 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %121, i32 0, i32 13
  %122 = load i32, i32* %src_y161, align 4
  %call162 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %118, i32 %add160, i32 %122, i32 1, i32 0)
  %arrayidx163 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  store %struct._Tile* %call162, %struct._Tile** %arrayidx163, align 8
  %123 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles164 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %123, i32 0, i32 0
  %124 = load %struct._TileManager*, %struct._TileManager** %src_tiles164, align 8
  %125 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x165 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %125, i32 0, i32 12
  %126 = load i32, i32* %src_x165, align 4
  %add166 = add nsw i32 %126, 1
  %127 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y167 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %127, i32 0, i32 13
  %128 = load i32, i32* %src_y167, align 4
  %add168 = add nsw i32 %128, 1
  %call169 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %124, i32 %add166, i32 %add168, i32 1, i32 0)
  %arrayidx170 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  store %struct._Tile* %call169, %struct._Tile** %arrayidx170, align 8
  %129 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles171 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %129, i32 0, i32 0
  %130 = load %struct._TileManager*, %struct._TileManager** %src_tiles171, align 8
  %131 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x172 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %131, i32 0, i32 12
  %132 = load i32, i32* %src_x172, align 4
  %add173 = add nsw i32 %132, 1
  %133 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y174 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %133, i32 0, i32 13
  %134 = load i32, i32* %src_y174, align 4
  %sub175 = sub nsw i32 %134, 1
  %call176 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %130, i32 %add173, i32 %sub175, i32 1, i32 0)
  %arrayidx177 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  store %struct._Tile* %call176, %struct._Tile** %arrayidx177, align 8
  %135 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles178 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %135, i32 0, i32 0
  %136 = load %struct._TileManager*, %struct._TileManager** %src_tiles178, align 8
  %137 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x179 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %137, i32 0, i32 12
  %138 = load i32, i32* %src_x179, align 4
  %sub180 = sub nsw i32 %138, 1
  %139 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y181 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %139, i32 0, i32 13
  %140 = load i32, i32* %src_y181, align 4
  %call182 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %136, i32 %sub180, i32 %140, i32 1, i32 0)
  %arrayidx183 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  store %struct._Tile* %call182, %struct._Tile** %arrayidx183, align 8
  %141 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles184 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %141, i32 0, i32 0
  %142 = load %struct._TileManager*, %struct._TileManager** %src_tiles184, align 8
  %143 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x185 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %143, i32 0, i32 12
  %144 = load i32, i32* %src_x185, align 4
  %sub186 = sub nsw i32 %144, 1
  %145 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y187 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %145, i32 0, i32 13
  %146 = load i32, i32* %src_y187, align 4
  %add188 = add nsw i32 %146, 1
  %call189 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %142, i32 %sub186, i32 %add188, i32 1, i32 0)
  %arrayidx190 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  store %struct._Tile* %call189, %struct._Tile** %arrayidx190, align 8
  %147 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles191 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %147, i32 0, i32 0
  %148 = load %struct._TileManager*, %struct._TileManager** %src_tiles191, align 8
  %149 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x192 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %149, i32 0, i32 12
  %150 = load i32, i32* %src_x192, align 4
  %sub193 = sub nsw i32 %150, 1
  %151 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y194 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %151, i32 0, i32 13
  %152 = load i32, i32* %src_y194, align 4
  %sub195 = sub nsw i32 %152, 1
  %call196 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %148, i32 %sub193, i32 %sub195, i32 1, i32 0)
  %arrayidx197 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  store %struct._Tile* %call196, %struct._Tile** %arrayidx197, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.132
  %arrayidx198 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  %153 = load %struct._Tile*, %struct._Tile** %arrayidx198, align 8
  %cmp199 = icmp ne %struct._Tile* %153, null
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %do.body
  br label %if.end.203

if.else.202:                                      ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.render_image_tile_fault, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

if.end.203:                                       ; preds = %if.then.201
  br label %do.end

do.end:                                           ; preds = %if.end.203
  %arrayidx204 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  %154 = load %struct._Tile*, %struct._Tile** %arrayidx204, align 8
  %155 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x205 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %155, i32 0, i32 12
  %156 = load i32, i32* %src_x205, align 4
  %157 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y206 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %157, i32 0, i32 13
  %158 = load i32, i32* %src_y206, align 4
  %call207 = call i8* @tile_data_pointer(%struct._Tile* %154, i32 %156, i32 %158)
  %arrayidx208 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  store i8* %call207, i8** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %159 = load %struct._Tile*, %struct._Tile** %arrayidx209, align 8
  %tobool210 = icmp ne %struct._Tile* %159, null
  br i1 %tobool210, label %if.then.211, label %if.else.218

if.then.211:                                      ; preds = %do.end
  %arrayidx212 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %160 = load %struct._Tile*, %struct._Tile** %arrayidx212, align 8
  %161 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x213 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %161, i32 0, i32 12
  %162 = load i32, i32* %src_x213, align 4
  %add214 = add nsw i32 %162, 1
  %163 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y215 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %163, i32 0, i32 13
  %164 = load i32, i32* %src_y215, align 4
  %call216 = call i8* @tile_data_pointer(%struct._Tile* %160, i32 %add214, i32 %164)
  %arrayidx217 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %call216, i8** %arrayidx217, align 8
  br label %if.end.221

if.else.218:                                      ; preds = %do.end
  %arrayidx219 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %165 = load i8*, i8** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %165, i8** %arrayidx220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.211
  %arrayidx222 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %166 = load %struct._Tile*, %struct._Tile** %arrayidx222, align 8
  %tobool223 = icmp ne %struct._Tile* %166, null
  br i1 %tobool223, label %if.then.224, label %if.else.231

if.then.224:                                      ; preds = %if.end.221
  %arrayidx225 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %167 = load %struct._Tile*, %struct._Tile** %arrayidx225, align 8
  %168 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x226 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %168, i32 0, i32 12
  %169 = load i32, i32* %src_x226, align 4
  %170 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y227 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %170, i32 0, i32 13
  %171 = load i32, i32* %src_y227, align 4
  %add228 = add nsw i32 %171, 1
  %call229 = call i8* @tile_data_pointer(%struct._Tile* %167, i32 %169, i32 %add228)
  %arrayidx230 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %call229, i8** %arrayidx230, align 8
  br label %if.end.234

if.else.231:                                      ; preds = %if.end.221
  %arrayidx232 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %172 = load i8*, i8** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %172, i8** %arrayidx233, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.231, %if.then.224
  %arrayidx235 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %173 = load %struct._Tile*, %struct._Tile** %arrayidx235, align 8
  %tobool236 = icmp ne %struct._Tile* %173, null
  br i1 %tobool236, label %if.then.237, label %if.else.244

if.then.237:                                      ; preds = %if.end.234
  %arrayidx238 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %174 = load %struct._Tile*, %struct._Tile** %arrayidx238, align 8
  %175 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x239 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %175, i32 0, i32 12
  %176 = load i32, i32* %src_x239, align 4
  %177 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y240 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %177, i32 0, i32 13
  %178 = load i32, i32* %src_y240, align 4
  %sub241 = sub nsw i32 %178, 1
  %call242 = call i8* @tile_data_pointer(%struct._Tile* %174, i32 %176, i32 %sub241)
  %arrayidx243 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %call242, i8** %arrayidx243, align 8
  br label %if.end.247

if.else.244:                                      ; preds = %if.end.234
  %arrayidx245 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %179 = load i8*, i8** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %179, i8** %arrayidx246, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.244, %if.then.237
  %arrayidx248 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %180 = load %struct._Tile*, %struct._Tile** %arrayidx248, align 8
  %tobool249 = icmp ne %struct._Tile* %180, null
  br i1 %tobool249, label %if.then.250, label %if.else.258

if.then.250:                                      ; preds = %if.end.247
  %arrayidx251 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %181 = load %struct._Tile*, %struct._Tile** %arrayidx251, align 8
  %182 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x252 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %182, i32 0, i32 12
  %183 = load i32, i32* %src_x252, align 4
  %add253 = add nsw i32 %183, 1
  %184 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y254 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %184, i32 0, i32 13
  %185 = load i32, i32* %src_y254, align 4
  %add255 = add nsw i32 %185, 1
  %call256 = call i8* @tile_data_pointer(%struct._Tile* %181, i32 %add253, i32 %add255)
  %arrayidx257 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %call256, i8** %arrayidx257, align 8
  br label %if.end.261

if.else.258:                                      ; preds = %if.end.247
  %arrayidx259 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  %186 = load i8*, i8** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %186, i8** %arrayidx260, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.250
  %arrayidx262 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %187 = load %struct._Tile*, %struct._Tile** %arrayidx262, align 8
  %tobool263 = icmp ne %struct._Tile* %187, null
  br i1 %tobool263, label %if.then.264, label %if.else.272

if.then.264:                                      ; preds = %if.end.261
  %arrayidx265 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %188 = load %struct._Tile*, %struct._Tile** %arrayidx265, align 8
  %189 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x266 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %189, i32 0, i32 12
  %190 = load i32, i32* %src_x266, align 4
  %sub267 = sub nsw i32 %190, 1
  %191 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y268 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %191, i32 0, i32 13
  %192 = load i32, i32* %src_y268, align 4
  %sub269 = sub nsw i32 %192, 1
  %call270 = call i8* @tile_data_pointer(%struct._Tile* %188, i32 %sub267, i32 %sub269)
  %arrayidx271 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %call270, i8** %arrayidx271, align 8
  br label %if.end.275

if.else.272:                                      ; preds = %if.end.261
  %arrayidx273 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %193 = load i8*, i8** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %193, i8** %arrayidx274, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.272, %if.then.264
  %arrayidx276 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %194 = load %struct._Tile*, %struct._Tile** %arrayidx276, align 8
  %tobool277 = icmp ne %struct._Tile* %194, null
  br i1 %tobool277, label %if.then.278, label %if.else.286

if.then.278:                                      ; preds = %if.end.275
  %arrayidx279 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %195 = load %struct._Tile*, %struct._Tile** %arrayidx279, align 8
  %196 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x280 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %196, i32 0, i32 12
  %197 = load i32, i32* %src_x280, align 4
  %add281 = add nsw i32 %197, 1
  %198 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y282 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %198, i32 0, i32 13
  %199 = load i32, i32* %src_y282, align 4
  %sub283 = sub nsw i32 %199, 1
  %call284 = call i8* @tile_data_pointer(%struct._Tile* %195, i32 %add281, i32 %sub283)
  %arrayidx285 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %call284, i8** %arrayidx285, align 8
  br label %if.end.289

if.else.286:                                      ; preds = %if.end.275
  %arrayidx287 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %200 = load i8*, i8** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %200, i8** %arrayidx288, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.286, %if.then.278
  %arrayidx290 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %201 = load %struct._Tile*, %struct._Tile** %arrayidx290, align 8
  %tobool291 = icmp ne %struct._Tile* %201, null
  br i1 %tobool291, label %if.then.292, label %if.else.299

if.then.292:                                      ; preds = %if.end.289
  %arrayidx293 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %202 = load %struct._Tile*, %struct._Tile** %arrayidx293, align 8
  %203 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x294 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %203, i32 0, i32 12
  %204 = load i32, i32* %src_x294, align 4
  %sub295 = sub nsw i32 %204, 1
  %205 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y296 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %205, i32 0, i32 13
  %206 = load i32, i32* %src_y296, align 4
  %call297 = call i8* @tile_data_pointer(%struct._Tile* %202, i32 %sub295, i32 %206)
  %arrayidx298 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %call297, i8** %arrayidx298, align 8
  br label %if.end.302

if.else.299:                                      ; preds = %if.end.289
  %arrayidx300 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %207 = load i8*, i8** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %207, i8** %arrayidx301, align 8
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.299, %if.then.292
  %arrayidx303 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %208 = load %struct._Tile*, %struct._Tile** %arrayidx303, align 8
  %tobool304 = icmp ne %struct._Tile* %208, null
  br i1 %tobool304, label %if.then.305, label %if.else.313

if.then.305:                                      ; preds = %if.end.302
  %arrayidx306 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %209 = load %struct._Tile*, %struct._Tile** %arrayidx306, align 8
  %210 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x307 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %210, i32 0, i32 12
  %211 = load i32, i32* %src_x307, align 4
  %sub308 = sub nsw i32 %211, 1
  %212 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y309 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %212, i32 0, i32 13
  %213 = load i32, i32* %src_y309, align 4
  %add310 = add nsw i32 %213, 1
  %call311 = call i8* @tile_data_pointer(%struct._Tile* %209, i32 %sub308, i32 %add310)
  %arrayidx312 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %call311, i8** %arrayidx312, align 8
  br label %if.end.316

if.else.313:                                      ; preds = %if.end.302
  %arrayidx314 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %214 = load i8*, i8** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %214, i8** %arrayidx315, align 8
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.313, %if.then.305
  %215 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles317 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %215, i32 0, i32 0
  %216 = load %struct._TileManager*, %struct._TileManager** %src_tiles317, align 8
  %call318 = call i32 @tile_manager_bpp(%struct._TileManager* %216)
  store i32 %call318, i32* %bpp, align 4
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %dest, align 8
  %217 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %217, i32 0, i32 18
  %218 = load i64, i64* %dx_start, align 8
  %conv319 = trunc i64 %218 to i32
  store i32 %conv319, i32* %dx, align 4
  %219 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x320 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %219, i32 0, i32 12
  %220 = load i32, i32* %src_x320, align 4
  store i32 %220, i32* %src_x, align 4
  %221 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %221, i32 0, i32 6
  %222 = load i32, i32* %w, align 4
  store i32 %222, i32* %width, align 4
  %223 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x321 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %223, i32 0, i32 12
  %224 = load i32, i32* %src_x321, align 4
  %div322 = sdiv i32 %224, 64
  store i32 %div322, i32* %tilex0, align 4
  %225 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x323 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %225, i32 0, i32 12
  %226 = load i32, i32* %src_x323, align 4
  %add324 = add nsw i32 %226, 1
  %div325 = sdiv i32 %add324, 64
  store i32 %div325, i32* %tilex1, align 4
  %227 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x326 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %227, i32 0, i32 12
  %228 = load i32, i32* %src_x326, align 4
  %sub327 = sub nsw i32 %228, 1
  %div328 = sdiv i32 %sub327, 64
  store i32 %div328, i32* %tilexL, align 4
  br label %do.body.329

do.body.329:                                      ; preds = %do.cond, %if.end.316
  %229 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %229, i32 0, i32 22
  %230 = load i32, i32* %footprint_x, align 4
  %div330 = sdiv i32 %230, 2
  %231 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %231, i32 0, i32 24
  %232 = load i32, i32* %footshift_x, align 4
  %cmp331 = icmp sgt i32 %232, 0
  br i1 %cmp331, label %cond.true.333, label %cond.false.336

cond.true.333:                                    ; preds = %do.body.329
  %233 = load i32, i32* %dx, align 4
  %234 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x334 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %234, i32 0, i32 24
  %235 = load i32, i32* %footshift_x334, align 4
  %shl335 = shl i32 %233, %235
  br label %cond.end.340

cond.false.336:                                   ; preds = %do.body.329
  %236 = load i32, i32* %dx, align 4
  %237 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x337 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %237, i32 0, i32 24
  %238 = load i32, i32* %footshift_x337, align 4
  %sub338 = sub nsw i32 0, %238
  %shr339 = ashr i32 %236, %sub338
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.336, %cond.true.333
  %cond341 = phi i32 [ %shl335, %cond.true.333 ], [ %shr339, %cond.false.336 ]
  %cmp342 = icmp sgt i32 %div330, %cond341
  br i1 %cmp342, label %cond.true.344, label %cond.false.347

cond.true.344:                                    ; preds = %cond.end.340
  %239 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x345 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %239, i32 0, i32 22
  %240 = load i32, i32* %footprint_x345, align 4
  %div346 = sdiv i32 %240, 2
  br label %cond.end.360

cond.false.347:                                   ; preds = %cond.end.340
  %241 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x348 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %241, i32 0, i32 24
  %242 = load i32, i32* %footshift_x348, align 4
  %cmp349 = icmp sgt i32 %242, 0
  br i1 %cmp349, label %cond.true.351, label %cond.false.354

cond.true.351:                                    ; preds = %cond.false.347
  %243 = load i32, i32* %dx, align 4
  %244 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x352 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %244, i32 0, i32 24
  %245 = load i32, i32* %footshift_x352, align 4
  %shl353 = shl i32 %243, %245
  br label %cond.end.358

cond.false.354:                                   ; preds = %cond.false.347
  %246 = load i32, i32* %dx, align 4
  %247 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x355 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %247, i32 0, i32 24
  %248 = load i32, i32* %footshift_x355, align 4
  %sub356 = sub nsw i32 0, %248
  %shr357 = ashr i32 %246, %sub356
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.354, %cond.true.351
  %cond359 = phi i32 [ %shl353, %cond.true.351 ], [ %shr357, %cond.false.354 ]
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.end.358, %cond.true.344
  %cond361 = phi i32 [ %div346, %cond.true.344 ], [ %cond359, %cond.end.358 ]
  %249 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x362 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %249, i32 0, i32 24
  %250 = load i32, i32* %footshift_x362, align 4
  %cmp363 = icmp sgt i32 %250, 0
  br i1 %cmp363, label %cond.true.365, label %cond.false.368

cond.true.365:                                    ; preds = %cond.end.360
  %251 = load i32, i32* %dx, align 4
  %252 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x366 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %252, i32 0, i32 24
  %253 = load i32, i32* %footshift_x366, align 4
  %shl367 = shl i32 %251, %253
  br label %cond.end.372

cond.false.368:                                   ; preds = %cond.end.360
  %254 = load i32, i32* %dx, align 4
  %255 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x369 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %255, i32 0, i32 24
  %256 = load i32, i32* %footshift_x369, align 4
  %sub370 = sub nsw i32 0, %256
  %shr371 = ashr i32 %254, %sub370
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.368, %cond.true.365
  %cond373 = phi i32 [ %shl367, %cond.true.365 ], [ %shr371, %cond.false.368 ]
  %sub374 = sub nsw i32 %cond361, %cond373
  store i32 %sub374, i32* %left_weight, align 4
  %257 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x375 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %257, i32 0, i32 22
  %258 = load i32, i32* %footprint_x375, align 4
  %div376 = sdiv i32 %258, 2
  %259 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x377 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %259, i32 0, i32 24
  %260 = load i32, i32* %footshift_x377, align 4
  %cmp378 = icmp sgt i32 %260, 0
  br i1 %cmp378, label %cond.true.380, label %cond.false.383

cond.true.380:                                    ; preds = %cond.end.372
  %261 = load i32, i32* %dx, align 4
  %262 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x381 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %262, i32 0, i32 24
  %263 = load i32, i32* %footshift_x381, align 4
  %shl382 = shl i32 %261, %263
  br label %cond.end.387

cond.false.383:                                   ; preds = %cond.end.372
  %264 = load i32, i32* %dx, align 4
  %265 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x384 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %265, i32 0, i32 24
  %266 = load i32, i32* %footshift_x384, align 4
  %sub385 = sub nsw i32 0, %266
  %shr386 = ashr i32 %264, %sub385
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.383, %cond.true.380
  %cond388 = phi i32 [ %shl382, %cond.true.380 ], [ %shr386, %cond.false.383 ]
  %cmp389 = icmp sgt i32 %div376, %cond388
  br i1 %cmp389, label %cond.true.391, label %cond.false.394

cond.true.391:                                    ; preds = %cond.end.387
  %267 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x392 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %267, i32 0, i32 22
  %268 = load i32, i32* %footprint_x392, align 4
  %div393 = sdiv i32 %268, 2
  br label %cond.end.407

cond.false.394:                                   ; preds = %cond.end.387
  %269 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x395 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %269, i32 0, i32 24
  %270 = load i32, i32* %footshift_x395, align 4
  %cmp396 = icmp sgt i32 %270, 0
  br i1 %cmp396, label %cond.true.398, label %cond.false.401

cond.true.398:                                    ; preds = %cond.false.394
  %271 = load i32, i32* %dx, align 4
  %272 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x399 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %272, i32 0, i32 24
  %273 = load i32, i32* %footshift_x399, align 4
  %shl400 = shl i32 %271, %273
  br label %cond.end.405

cond.false.401:                                   ; preds = %cond.false.394
  %274 = load i32, i32* %dx, align 4
  %275 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x402 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %275, i32 0, i32 24
  %276 = load i32, i32* %footshift_x402, align 4
  %sub403 = sub nsw i32 0, %276
  %shr404 = ashr i32 %274, %sub403
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.401, %cond.true.398
  %cond406 = phi i32 [ %shl400, %cond.true.398 ], [ %shr404, %cond.false.401 ]
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.end.405, %cond.true.391
  %cond408 = phi i32 [ %div393, %cond.true.391 ], [ %cond406, %cond.end.405 ]
  %277 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x409 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %277, i32 0, i32 22
  %278 = load i32, i32* %footprint_x409, align 4
  %div410 = sdiv i32 %278, 2
  %sub411 = sub nsw i32 %cond408, %div410
  store i32 %sub411, i32* %right_weight, align 4
  %279 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x412 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %279, i32 0, i32 22
  %280 = load i32, i32* %footprint_x412, align 4
  %281 = load i32, i32* %left_weight, align 4
  %sub413 = sub i32 %280, %281
  %282 = load i32, i32* %right_weight, align 4
  %sub414 = sub i32 %sub413, %282
  store i32 %sub414, i32* %center_weight, align 4
  %283 = load i32, i32* %src_x, align 4
  %add415 = add nsw i32 %283, 1
  %284 = load i32, i32* %source_width, align 4
  %cmp416 = icmp uge i32 %add415, %284
  br i1 %cmp416, label %if.then.418, label %if.end.425

if.then.418:                                      ; preds = %cond.end.407
  %arrayidx419 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %285 = load i8*, i8** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %285, i8** %arrayidx420, align 8
  %arrayidx421 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %286 = load i8*, i8** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %286, i8** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %287 = load i8*, i8** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %287, i8** %arrayidx424, align 8
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.418, %cond.end.407
  %288 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y426 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %288, i32 0, i32 13
  %289 = load i32, i32* %src_y426, align 4
  %add427 = add nsw i32 %289, 1
  %290 = load i32, i32* %source_height, align 4
  %cmp428 = icmp uge i32 %add427, %290
  br i1 %cmp428, label %if.then.430, label %if.end.437

if.then.430:                                      ; preds = %if.end.425
  %arrayidx431 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  %291 = load i8*, i8** %arrayidx431, align 8
  %arrayidx432 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %291, i8** %arrayidx432, align 8
  %arrayidx433 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %292 = load i8*, i8** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %292, i8** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  %293 = load i8*, i8** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %293, i8** %arrayidx436, align 8
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.430, %if.end.425
  %294 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_is_premult = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %294, i32 0, i32 2
  %295 = load i32, i32* %src_is_premult, align 4
  %tobool438 = icmp ne i32 %295, 0
  br i1 %tobool438, label %if.then.439, label %if.else.440

if.then.439:                                      ; preds = %if.end.437
  %296 = load i32, i32* %left_weight, align 4
  %297 = load i32, i32* %center_weight, align 4
  %298 = load i32, i32* %right_weight, align 4
  %299 = load i32, i32* %top_weight, align 4
  %300 = load i32, i32* %middle_weight, align 4
  %301 = load i32, i32* %bottom_weight, align 4
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i32 0
  %302 = load i8*, i8** %dest, align 8
  %303 = load i32, i32* %bpp, align 4
  call void @box_filter(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i8** %arraydecay, i8* %302, i32 %303)
  br label %if.end.442

if.else.440:                                      ; preds = %if.end.437
  %304 = load i32, i32* %left_weight, align 4
  %305 = load i32, i32* %center_weight, align 4
  %306 = load i32, i32* %right_weight, align 4
  %307 = load i32, i32* %top_weight, align 4
  %308 = load i32, i32* %middle_weight, align 4
  %309 = load i32, i32* %bottom_weight, align 4
  %arraydecay441 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i32 0
  %310 = load i8*, i8** %dest, align 8
  %311 = load i32, i32* %bpp, align 4
  call void @box_filter_premult(i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i8** %arraydecay441, i8* %310, i32 %311)
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.440, %if.then.439
  %312 = load i32, i32* %bpp, align 4
  %313 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %312 to i64
  %add.ptr = getelementptr inbounds i8, i8* %313, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %314 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %314, i32 0, i32 16
  %315 = load i32, i32* %x_dest_inc, align 4
  %316 = load i32, i32* %dx, align 4
  %add443 = add nsw i32 %316, %315
  store i32 %add443, i32* %dx, align 4
  %317 = load i32, i32* %dx, align 4
  %318 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %318, i32 0, i32 17
  %319 = load i32, i32* %x_src_dec, align 4
  %div444 = sdiv i32 %317, %319
  store i32 %div444, i32* %skipped, align 4
  %320 = load i32, i32* %skipped, align 4
  %tobool445 = icmp ne i32 %320, 0
  br i1 %tobool445, label %if.then.446, label %if.end.724

if.then.446:                                      ; preds = %if.end.442
  %321 = load i32, i32* %skipped, align 4
  %322 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec447 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %322, i32 0, i32 17
  %323 = load i32, i32* %x_src_dec447, align 4
  %mul = mul nsw i32 %321, %323
  %324 = load i32, i32* %dx, align 4
  %sub448 = sub nsw i32 %324, %mul
  store i32 %sub448, i32* %dx, align 4
  %arrayidx449 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  %325 = load i8*, i8** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %326 = load i8*, i8** %arrayidx450, align 8
  %cmp451 = icmp ne i8* %325, %326
  br i1 %cmp451, label %if.then.453, label %if.else.458

if.then.453:                                      ; preds = %if.then.446
  %327 = load i32, i32* %skipped, align 4
  %328 = load i32, i32* %bpp, align 4
  %mul454 = mul nsw i32 %327, %328
  %arrayidx455 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  %329 = load i8*, i8** %arrayidx455, align 8
  %idx.ext456 = sext i32 %mul454 to i64
  %add.ptr457 = getelementptr inbounds i8, i8* %329, i64 %idx.ext456
  store i8* %add.ptr457, i8** %arrayidx455, align 8
  br label %if.end.459

if.else.458:                                      ; preds = %if.then.446
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.459

if.end.459:                                       ; preds = %if.else.458, %if.then.453
  %arrayidx460 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  %330 = load i8*, i8** %arrayidx460, align 8
  %arrayidx461 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %331 = load i8*, i8** %arrayidx461, align 8
  %cmp462 = icmp ne i8* %330, %331
  br i1 %cmp462, label %if.then.464, label %if.else.469

if.then.464:                                      ; preds = %if.end.459
  %332 = load i32, i32* %skipped, align 4
  %333 = load i32, i32* %bpp, align 4
  %mul465 = mul nsw i32 %332, %333
  %arrayidx466 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  %334 = load i8*, i8** %arrayidx466, align 8
  %idx.ext467 = sext i32 %mul465 to i64
  %add.ptr468 = getelementptr inbounds i8, i8* %334, i64 %idx.ext467
  store i8* %add.ptr468, i8** %arrayidx466, align 8
  br label %if.end.470

if.else.469:                                      ; preds = %if.end.459
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.else.469, %if.then.464
  %arrayidx471 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  %335 = load i8*, i8** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %336 = load i8*, i8** %arrayidx472, align 8
  %cmp473 = icmp ne i8* %335, %336
  br i1 %cmp473, label %if.then.475, label %if.else.480

if.then.475:                                      ; preds = %if.end.470
  %337 = load i32, i32* %skipped, align 4
  %338 = load i32, i32* %bpp, align 4
  %mul476 = mul nsw i32 %337, %338
  %arrayidx477 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  %339 = load i8*, i8** %arrayidx477, align 8
  %idx.ext478 = sext i32 %mul476 to i64
  %add.ptr479 = getelementptr inbounds i8, i8* %339, i64 %idx.ext478
  store i8* %add.ptr479, i8** %arrayidx477, align 8
  br label %if.end.481

if.else.480:                                      ; preds = %if.end.470
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.480, %if.then.475
  %340 = load i32, i32* %skipped, align 4
  %341 = load i32, i32* %bpp, align 4
  %mul482 = mul nsw i32 %340, %341
  %arrayidx483 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %342 = load i8*, i8** %arrayidx483, align 8
  %idx.ext484 = sext i32 %mul482 to i64
  %add.ptr485 = getelementptr inbounds i8, i8* %342, i64 %idx.ext484
  store i8* %add.ptr485, i8** %arrayidx483, align 8
  %343 = load i32, i32* %skipped, align 4
  %344 = load i32, i32* %bpp, align 4
  %mul486 = mul nsw i32 %343, %344
  %arrayidx487 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %345 = load i8*, i8** %arrayidx487, align 8
  %idx.ext488 = sext i32 %mul486 to i64
  %add.ptr489 = getelementptr inbounds i8, i8* %345, i64 %idx.ext488
  store i8* %add.ptr489, i8** %arrayidx487, align 8
  %346 = load i32, i32* %skipped, align 4
  %347 = load i32, i32* %bpp, align 4
  %mul490 = mul nsw i32 %346, %347
  %arrayidx491 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %348 = load i8*, i8** %arrayidx491, align 8
  %idx.ext492 = sext i32 %mul490 to i64
  %add.ptr493 = getelementptr inbounds i8, i8* %348, i64 %idx.ext492
  store i8* %add.ptr493, i8** %arrayidx491, align 8
  %349 = load i32, i32* %skipped, align 4
  %350 = load i32, i32* %bpp, align 4
  %mul494 = mul nsw i32 %349, %350
  %arrayidx495 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  %351 = load i8*, i8** %arrayidx495, align 8
  %idx.ext496 = sext i32 %mul494 to i64
  %add.ptr497 = getelementptr inbounds i8, i8* %351, i64 %idx.ext496
  store i8* %add.ptr497, i8** %arrayidx495, align 8
  %352 = load i32, i32* %skipped, align 4
  %353 = load i32, i32* %bpp, align 4
  %mul498 = mul nsw i32 %352, %353
  %arrayidx499 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  %354 = load i8*, i8** %arrayidx499, align 8
  %idx.ext500 = sext i32 %mul498 to i64
  %add.ptr501 = getelementptr inbounds i8, i8* %354, i64 %idx.ext500
  store i8* %add.ptr501, i8** %arrayidx499, align 8
  %355 = load i32, i32* %skipped, align 4
  %356 = load i32, i32* %bpp, align 4
  %mul502 = mul nsw i32 %355, %356
  %arrayidx503 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  %357 = load i8*, i8** %arrayidx503, align 8
  %idx.ext504 = sext i32 %mul502 to i64
  %add.ptr505 = getelementptr inbounds i8, i8* %357, i64 %idx.ext504
  store i8* %add.ptr505, i8** %arrayidx503, align 8
  %358 = load i32, i32* %skipped, align 4
  %359 = load i32, i32* %src_x, align 4
  %add506 = add nsw i32 %359, %358
  store i32 %add506, i32* %src_x, align 4
  %360 = load i32, i32* %src_x, align 4
  %div507 = sdiv i32 %360, 64
  %361 = load i32, i32* %tilex0, align 4
  %cmp508 = icmp ne i32 %div507, %361
  br i1 %cmp508, label %if.then.510, label %if.end.569

if.then.510:                                      ; preds = %if.end.481
  %arrayidx511 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  %362 = load %struct._Tile*, %struct._Tile** %arrayidx511, align 8
  call void @tile_release(%struct._Tile* %362, i32 0)
  %arrayidx512 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %363 = load %struct._Tile*, %struct._Tile** %arrayidx512, align 8
  %tobool513 = icmp ne %struct._Tile* %363, null
  br i1 %tobool513, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %if.then.510
  %arrayidx515 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %364 = load %struct._Tile*, %struct._Tile** %arrayidx515, align 8
  call void @tile_release(%struct._Tile* %364, i32 0)
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %if.then.510
  %arrayidx517 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %365 = load %struct._Tile*, %struct._Tile** %arrayidx517, align 8
  %tobool518 = icmp ne %struct._Tile* %365, null
  br i1 %tobool518, label %if.then.519, label %if.end.521

if.then.519:                                      ; preds = %if.end.516
  %arrayidx520 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %366 = load %struct._Tile*, %struct._Tile** %arrayidx520, align 8
  call void @tile_release(%struct._Tile* %366, i32 0)
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.519, %if.end.516
  %367 = load i32, i32* %tilex0, align 4
  %add522 = add nsw i32 %367, 1
  store i32 %add522, i32* %tilex0, align 4
  %368 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles523 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %368, i32 0, i32 0
  %369 = load %struct._TileManager*, %struct._TileManager** %src_tiles523, align 8
  %370 = load i32, i32* %src_x, align 4
  %371 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y524 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %371, i32 0, i32 13
  %372 = load i32, i32* %src_y524, align 4
  %call525 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %369, i32 %370, i32 %372, i32 1, i32 0)
  %arrayidx526 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  store %struct._Tile* %call525, %struct._Tile** %arrayidx526, align 8
  %373 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles527 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %373, i32 0, i32 0
  %374 = load %struct._TileManager*, %struct._TileManager** %src_tiles527, align 8
  %375 = load i32, i32* %src_x, align 4
  %376 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y528 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %376, i32 0, i32 13
  %377 = load i32, i32* %src_y528, align 4
  %add529 = add nsw i32 %377, 1
  %call530 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %374, i32 %375, i32 %add529, i32 1, i32 0)
  %arrayidx531 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  store %struct._Tile* %call530, %struct._Tile** %arrayidx531, align 8
  %378 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles532 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %378, i32 0, i32 0
  %379 = load %struct._TileManager*, %struct._TileManager** %src_tiles532, align 8
  %380 = load i32, i32* %src_x, align 4
  %381 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y533 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %381, i32 0, i32 13
  %382 = load i32, i32* %src_y533, align 4
  %sub534 = sub nsw i32 %382, 1
  %call535 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %379, i32 %380, i32 %sub534, i32 1, i32 0)
  %arrayidx536 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  store %struct._Tile* %call535, %struct._Tile** %arrayidx536, align 8
  %arrayidx537 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  %383 = load %struct._Tile*, %struct._Tile** %arrayidx537, align 8
  %tobool538 = icmp ne %struct._Tile* %383, null
  br i1 %tobool538, label %if.end.540, label %if.then.539

if.then.539:                                      ; preds = %if.end.521
  br label %done

if.end.540:                                       ; preds = %if.end.521
  %arrayidx541 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 4
  %384 = load %struct._Tile*, %struct._Tile** %arrayidx541, align 8
  %385 = load i32, i32* %src_x, align 4
  %386 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y542 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %386, i32 0, i32 13
  %387 = load i32, i32* %src_y542, align 4
  %call543 = call i8* @tile_data_pointer(%struct._Tile* %384, i32 %385, i32 %387)
  %arrayidx544 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  store i8* %call543, i8** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %388 = load %struct._Tile*, %struct._Tile** %arrayidx545, align 8
  %tobool546 = icmp ne %struct._Tile* %388, null
  br i1 %tobool546, label %if.else.550, label %if.then.547

if.then.547:                                      ; preds = %if.end.540
  %arrayidx548 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %389 = load i8*, i8** %arrayidx548, align 8
  %arrayidx549 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %389, i8** %arrayidx549, align 8
  br label %if.end.556

if.else.550:                                      ; preds = %if.end.540
  %arrayidx551 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 7
  %390 = load %struct._Tile*, %struct._Tile** %arrayidx551, align 8
  %391 = load i32, i32* %src_x, align 4
  %392 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y552 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %392, i32 0, i32 13
  %393 = load i32, i32* %src_y552, align 4
  %add553 = add nsw i32 %393, 1
  %call554 = call i8* @tile_data_pointer(%struct._Tile* %390, i32 %391, i32 %add553)
  %arrayidx555 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %call554, i8** %arrayidx555, align 8
  br label %if.end.556

if.end.556:                                       ; preds = %if.else.550, %if.then.547
  %arrayidx557 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %394 = load %struct._Tile*, %struct._Tile** %arrayidx557, align 8
  %tobool558 = icmp ne %struct._Tile* %394, null
  br i1 %tobool558, label %if.else.562, label %if.then.559

if.then.559:                                      ; preds = %if.end.556
  %arrayidx560 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %395 = load i8*, i8** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %395, i8** %arrayidx561, align 8
  br label %if.end.568

if.else.562:                                      ; preds = %if.end.556
  %arrayidx563 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 1
  %396 = load %struct._Tile*, %struct._Tile** %arrayidx563, align 8
  %397 = load i32, i32* %src_x, align 4
  %398 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y564 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %398, i32 0, i32 13
  %399 = load i32, i32* %src_y564, align 4
  %sub565 = sub nsw i32 %399, 1
  %call566 = call i8* @tile_data_pointer(%struct._Tile* %396, i32 %397, i32 %sub565)
  %arrayidx567 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %call566, i8** %arrayidx567, align 8
  br label %if.end.568

if.end.568:                                       ; preds = %if.else.562, %if.then.559
  br label %if.end.569

if.end.569:                                       ; preds = %if.end.568, %if.end.481
  %400 = load i32, i32* %src_x, align 4
  %add570 = add nsw i32 %400, 1
  %div571 = sdiv i32 %add570, 64
  %401 = load i32, i32* %tilex1, align 4
  %cmp572 = icmp ne i32 %div571, %401
  br i1 %cmp572, label %if.then.574, label %if.end.646

if.then.574:                                      ; preds = %if.end.569
  %arrayidx575 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %402 = load %struct._Tile*, %struct._Tile** %arrayidx575, align 8
  %tobool576 = icmp ne %struct._Tile* %402, null
  br i1 %tobool576, label %if.then.577, label %if.end.579

if.then.577:                                      ; preds = %if.then.574
  %arrayidx578 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %403 = load %struct._Tile*, %struct._Tile** %arrayidx578, align 8
  call void @tile_release(%struct._Tile* %403, i32 0)
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.577, %if.then.574
  %arrayidx580 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %404 = load %struct._Tile*, %struct._Tile** %arrayidx580, align 8
  %tobool581 = icmp ne %struct._Tile* %404, null
  br i1 %tobool581, label %if.then.582, label %if.end.584

if.then.582:                                      ; preds = %if.end.579
  %arrayidx583 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %405 = load %struct._Tile*, %struct._Tile** %arrayidx583, align 8
  call void @tile_release(%struct._Tile* %405, i32 0)
  br label %if.end.584

if.end.584:                                       ; preds = %if.then.582, %if.end.579
  %arrayidx585 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %406 = load %struct._Tile*, %struct._Tile** %arrayidx585, align 8
  %tobool586 = icmp ne %struct._Tile* %406, null
  br i1 %tobool586, label %if.then.587, label %if.end.589

if.then.587:                                      ; preds = %if.end.584
  %arrayidx588 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %407 = load %struct._Tile*, %struct._Tile** %arrayidx588, align 8
  call void @tile_release(%struct._Tile* %407, i32 0)
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.587, %if.end.584
  %408 = load i32, i32* %tilex1, align 4
  %add590 = add nsw i32 %408, 1
  store i32 %add590, i32* %tilex1, align 4
  %409 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles591 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %409, i32 0, i32 0
  %410 = load %struct._TileManager*, %struct._TileManager** %src_tiles591, align 8
  %411 = load i32, i32* %src_x, align 4
  %add592 = add nsw i32 %411, 1
  %412 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y593 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %412, i32 0, i32 13
  %413 = load i32, i32* %src_y593, align 4
  %call594 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %410, i32 %add592, i32 %413, i32 1, i32 0)
  %arrayidx595 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  store %struct._Tile* %call594, %struct._Tile** %arrayidx595, align 8
  %414 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles596 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %414, i32 0, i32 0
  %415 = load %struct._TileManager*, %struct._TileManager** %src_tiles596, align 8
  %416 = load i32, i32* %src_x, align 4
  %add597 = add nsw i32 %416, 1
  %417 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y598 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %417, i32 0, i32 13
  %418 = load i32, i32* %src_y598, align 4
  %add599 = add nsw i32 %418, 1
  %call600 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %415, i32 %add597, i32 %add599, i32 1, i32 0)
  %arrayidx601 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  store %struct._Tile* %call600, %struct._Tile** %arrayidx601, align 8
  %419 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles602 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %419, i32 0, i32 0
  %420 = load %struct._TileManager*, %struct._TileManager** %src_tiles602, align 8
  %421 = load i32, i32* %src_x, align 4
  %add603 = add nsw i32 %421, 1
  %422 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y604 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %422, i32 0, i32 13
  %423 = load i32, i32* %src_y604, align 4
  %sub605 = sub nsw i32 %423, 1
  %call606 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %420, i32 %add603, i32 %sub605, i32 1, i32 0)
  %arrayidx607 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  store %struct._Tile* %call606, %struct._Tile** %arrayidx607, align 8
  %arrayidx608 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %424 = load %struct._Tile*, %struct._Tile** %arrayidx608, align 8
  %tobool609 = icmp ne %struct._Tile* %424, null
  br i1 %tobool609, label %if.else.613, label %if.then.610

if.then.610:                                      ; preds = %if.end.589
  %arrayidx611 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %425 = load i8*, i8** %arrayidx611, align 8
  %arrayidx612 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %425, i8** %arrayidx612, align 8
  br label %if.end.619

if.else.613:                                      ; preds = %if.end.589
  %arrayidx614 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 5
  %426 = load %struct._Tile*, %struct._Tile** %arrayidx614, align 8
  %427 = load i32, i32* %src_x, align 4
  %add615 = add nsw i32 %427, 1
  %428 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y616 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %428, i32 0, i32 13
  %429 = load i32, i32* %src_y616, align 4
  %call617 = call i8* @tile_data_pointer(%struct._Tile* %426, i32 %add615, i32 %429)
  %arrayidx618 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %call617, i8** %arrayidx618, align 8
  br label %if.end.619

if.end.619:                                       ; preds = %if.else.613, %if.then.610
  %arrayidx620 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %430 = load %struct._Tile*, %struct._Tile** %arrayidx620, align 8
  %tobool621 = icmp ne %struct._Tile* %430, null
  br i1 %tobool621, label %if.else.625, label %if.then.622

if.then.622:                                      ; preds = %if.end.619
  %arrayidx623 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %431 = load i8*, i8** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %431, i8** %arrayidx624, align 8
  br label %if.end.632

if.else.625:                                      ; preds = %if.end.619
  %arrayidx626 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 8
  %432 = load %struct._Tile*, %struct._Tile** %arrayidx626, align 8
  %433 = load i32, i32* %src_x, align 4
  %add627 = add nsw i32 %433, 1
  %434 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y628 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %434, i32 0, i32 13
  %435 = load i32, i32* %src_y628, align 4
  %add629 = add nsw i32 %435, 1
  %call630 = call i8* @tile_data_pointer(%struct._Tile* %432, i32 %add627, i32 %add629)
  %arrayidx631 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %call630, i8** %arrayidx631, align 8
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.625, %if.then.622
  %arrayidx633 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %436 = load %struct._Tile*, %struct._Tile** %arrayidx633, align 8
  %tobool634 = icmp ne %struct._Tile* %436, null
  br i1 %tobool634, label %if.else.638, label %if.then.635

if.then.635:                                      ; preds = %if.end.632
  %arrayidx636 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %437 = load i8*, i8** %arrayidx636, align 8
  %arrayidx637 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %437, i8** %arrayidx637, align 8
  br label %if.end.645

if.else.638:                                      ; preds = %if.end.632
  %arrayidx639 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 2
  %438 = load %struct._Tile*, %struct._Tile** %arrayidx639, align 8
  %439 = load i32, i32* %src_x, align 4
  %add640 = add nsw i32 %439, 1
  %440 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y641 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %440, i32 0, i32 13
  %441 = load i32, i32* %src_y641, align 4
  %sub642 = sub nsw i32 %441, 1
  %call643 = call i8* @tile_data_pointer(%struct._Tile* %438, i32 %add640, i32 %sub642)
  %arrayidx644 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %call643, i8** %arrayidx644, align 8
  br label %if.end.645

if.end.645:                                       ; preds = %if.else.638, %if.then.635
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.end.569
  %442 = load i32, i32* %src_x, align 4
  %sub647 = sub nsw i32 %442, 1
  %div648 = sdiv i32 %sub647, 64
  %443 = load i32, i32* %tilexL, align 4
  %cmp649 = icmp ne i32 %div648, %443
  br i1 %cmp649, label %if.then.651, label %if.end.723

if.then.651:                                      ; preds = %if.end.646
  %arrayidx652 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %444 = load %struct._Tile*, %struct._Tile** %arrayidx652, align 8
  %tobool653 = icmp ne %struct._Tile* %444, null
  br i1 %tobool653, label %if.then.654, label %if.end.656

if.then.654:                                      ; preds = %if.then.651
  %arrayidx655 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %445 = load %struct._Tile*, %struct._Tile** %arrayidx655, align 8
  call void @tile_release(%struct._Tile* %445, i32 0)
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.654, %if.then.651
  %arrayidx657 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %446 = load %struct._Tile*, %struct._Tile** %arrayidx657, align 8
  %tobool658 = icmp ne %struct._Tile* %446, null
  br i1 %tobool658, label %if.then.659, label %if.end.661

if.then.659:                                      ; preds = %if.end.656
  %arrayidx660 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %447 = load %struct._Tile*, %struct._Tile** %arrayidx660, align 8
  call void @tile_release(%struct._Tile* %447, i32 0)
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.659, %if.end.656
  %arrayidx662 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %448 = load %struct._Tile*, %struct._Tile** %arrayidx662, align 8
  %tobool663 = icmp ne %struct._Tile* %448, null
  br i1 %tobool663, label %if.then.664, label %if.end.666

if.then.664:                                      ; preds = %if.end.661
  %arrayidx665 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %449 = load %struct._Tile*, %struct._Tile** %arrayidx665, align 8
  call void @tile_release(%struct._Tile* %449, i32 0)
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.664, %if.end.661
  %450 = load i32, i32* %tilexL, align 4
  %add667 = add nsw i32 %450, 1
  store i32 %add667, i32* %tilexL, align 4
  %451 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles668 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %451, i32 0, i32 0
  %452 = load %struct._TileManager*, %struct._TileManager** %src_tiles668, align 8
  %453 = load i32, i32* %src_x, align 4
  %sub669 = sub nsw i32 %453, 1
  %454 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y670 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %454, i32 0, i32 13
  %455 = load i32, i32* %src_y670, align 4
  %sub671 = sub nsw i32 %455, 1
  %call672 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %452, i32 %sub669, i32 %sub671, i32 1, i32 0)
  %arrayidx673 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  store %struct._Tile* %call672, %struct._Tile** %arrayidx673, align 8
  %456 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles674 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %456, i32 0, i32 0
  %457 = load %struct._TileManager*, %struct._TileManager** %src_tiles674, align 8
  %458 = load i32, i32* %src_x, align 4
  %sub675 = sub nsw i32 %458, 1
  %459 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y676 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %459, i32 0, i32 13
  %460 = load i32, i32* %src_y676, align 4
  %call677 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %457, i32 %sub675, i32 %460, i32 1, i32 0)
  %arrayidx678 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  store %struct._Tile* %call677, %struct._Tile** %arrayidx678, align 8
  %461 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles679 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %461, i32 0, i32 0
  %462 = load %struct._TileManager*, %struct._TileManager** %src_tiles679, align 8
  %463 = load i32, i32* %src_x, align 4
  %sub680 = sub nsw i32 %463, 1
  %464 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y681 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %464, i32 0, i32 13
  %465 = load i32, i32* %src_y681, align 4
  %add682 = add nsw i32 %465, 1
  %call683 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %462, i32 %sub680, i32 %add682, i32 1, i32 0)
  %arrayidx684 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  store %struct._Tile* %call683, %struct._Tile** %arrayidx684, align 8
  %arrayidx685 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %466 = load %struct._Tile*, %struct._Tile** %arrayidx685, align 8
  %tobool686 = icmp ne %struct._Tile* %466, null
  br i1 %tobool686, label %if.else.690, label %if.then.687

if.then.687:                                      ; preds = %if.end.666
  %arrayidx688 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %467 = load i8*, i8** %arrayidx688, align 8
  %arrayidx689 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %467, i8** %arrayidx689, align 8
  br label %if.end.696

if.else.690:                                      ; preds = %if.end.666
  %arrayidx691 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 3
  %468 = load %struct._Tile*, %struct._Tile** %arrayidx691, align 8
  %469 = load i32, i32* %src_x, align 4
  %sub692 = sub nsw i32 %469, 1
  %470 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y693 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %470, i32 0, i32 13
  %471 = load i32, i32* %src_y693, align 4
  %call694 = call i8* @tile_data_pointer(%struct._Tile* %468, i32 %sub692, i32 %471)
  %arrayidx695 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %call694, i8** %arrayidx695, align 8
  br label %if.end.696

if.end.696:                                       ; preds = %if.else.690, %if.then.687
  %arrayidx697 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %472 = load %struct._Tile*, %struct._Tile** %arrayidx697, align 8
  %tobool698 = icmp ne %struct._Tile* %472, null
  br i1 %tobool698, label %if.else.702, label %if.then.699

if.then.699:                                      ; preds = %if.end.696
  %arrayidx700 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %473 = load i8*, i8** %arrayidx700, align 8
  %arrayidx701 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %473, i8** %arrayidx701, align 8
  br label %if.end.709

if.else.702:                                      ; preds = %if.end.696
  %arrayidx703 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 6
  %474 = load %struct._Tile*, %struct._Tile** %arrayidx703, align 8
  %475 = load i32, i32* %src_x, align 4
  %sub704 = sub nsw i32 %475, 1
  %476 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y705 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %476, i32 0, i32 13
  %477 = load i32, i32* %src_y705, align 4
  %add706 = add nsw i32 %477, 1
  %call707 = call i8* @tile_data_pointer(%struct._Tile* %474, i32 %sub704, i32 %add706)
  %arrayidx708 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %call707, i8** %arrayidx708, align 8
  br label %if.end.709

if.end.709:                                       ; preds = %if.else.702, %if.then.699
  %arrayidx710 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %478 = load %struct._Tile*, %struct._Tile** %arrayidx710, align 8
  %tobool711 = icmp ne %struct._Tile* %478, null
  br i1 %tobool711, label %if.else.715, label %if.then.712

if.then.712:                                      ; preds = %if.end.709
  %arrayidx713 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %479 = load i8*, i8** %arrayidx713, align 8
  %arrayidx714 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %479, i8** %arrayidx714, align 8
  br label %if.end.722

if.else.715:                                      ; preds = %if.end.709
  %arrayidx716 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 0
  %480 = load %struct._Tile*, %struct._Tile** %arrayidx716, align 8
  %481 = load i32, i32* %src_x, align 4
  %sub717 = sub nsw i32 %481, 1
  %482 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y718 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %482, i32 0, i32 13
  %483 = load i32, i32* %src_y718, align 4
  %sub719 = sub nsw i32 %483, 1
  %call720 = call i8* @tile_data_pointer(%struct._Tile* %480, i32 %sub717, i32 %sub719)
  %arrayidx721 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %call720, i8** %arrayidx721, align 8
  br label %if.end.722

if.end.722:                                       ; preds = %if.else.715, %if.then.712
  br label %if.end.723

if.end.723:                                       ; preds = %if.end.722, %if.end.646
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %if.end.442
  br label %do.cond

do.cond:                                          ; preds = %if.end.724
  %484 = load i32, i32* %width, align 4
  %dec = add nsw i32 %484, -1
  store i32 %dec, i32* %width, align 4
  %tobool725 = icmp ne i32 %dec, 0
  br i1 %tobool725, label %do.body.329, label %do.end.726

do.end.726:                                       ; preds = %do.cond
  br label %done

done:                                             ; preds = %do.end.726, %if.then.539
  store i32 0, i32* %dx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %done
  %485 = load i32, i32* %dx, align 4
  %cmp727 = icmp slt i32 %485, 9
  br i1 %cmp727, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %486 = load i32, i32* %dx, align 4
  %idxprom = sext i32 %486 to i64
  %arrayidx729 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 %idxprom
  %487 = load %struct._Tile*, %struct._Tile** %arrayidx729, align 8
  %tobool730 = icmp ne %struct._Tile* %487, null
  br i1 %tobool730, label %if.then.731, label %if.end.734

if.then.731:                                      ; preds = %for.body
  %488 = load i32, i32* %dx, align 4
  %idxprom732 = sext i32 %488 to i64
  %arrayidx733 = getelementptr inbounds [9 x %struct._Tile*], [9 x %struct._Tile*]* %tile, i32 0, i64 %idxprom732
  %489 = load %struct._Tile*, %struct._Tile** %arrayidx733, align 8
  call void @tile_release(%struct._Tile* %489, i32 0)
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.731, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.734
  %490 = load i32, i32* %dx, align 4
  %inc = add nsw i32 %490, 1
  store i32 %inc, i32* %dx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.202, %if.then.37, %if.then
  %491 = load i8*, i8** %retval
  ret i8* %491
}

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define internal i8* @render_image_tile_fault_nearest(%struct._RenderInfo* %info) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._RenderInfo*, align 8
  %tile = alloca %struct._Tile*, align 8
  %src = alloca i8*, align 8
  %d = alloca i8*, align 8
  %width = alloca i32, align 4
  %tilex = alloca i32, align 4
  %bpp = alloca i32, align 4
  %src_x = alloca i32, align 4
  %dx = alloca i64, align 8
  %s = alloca i8*, align 8
  %skipped = alloca i32, align 4
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 0
  %1 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x1 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 12
  %3 = load i32, i32* %src_x1, align 4
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 13
  %5 = load i32, i32* %src_y, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %1, i32 %3, i32 %5, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %cmp = icmp ne %struct._Tile* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.render_image_tile_fault_nearest, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 12
  %9 = load i32, i32* %src_x2, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 13
  %11 = load i32, i32* %src_y3, align 4
  %call4 = call i8* @tile_data_pointer(%struct._Tile* %7, i32 %9, i32 %11)
  store i8* %call4, i8** %src, align 8
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles5 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 0
  %13 = load %struct._TileManager*, %struct._TileManager** %src_tiles5, align 8
  %call6 = call i32 @tile_manager_bpp(%struct._TileManager* %13)
  store i32 %call6, i32* %bpp, align 4
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 18
  %15 = load i64, i64* %dx_start, align 8
  store i64 %15, i64* %dx, align 8
  %16 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %16, i32 0, i32 6
  %17 = load i32, i32* %w, align 4
  store i32 %17, i32* %width, align 4
  %18 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x7 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %18, i32 0, i32 12
  %19 = load i32, i32* %src_x7, align 4
  store i32 %19, i32* %src_x, align 4
  %20 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x8 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %20, i32 0, i32 12
  %21 = load i32, i32* %src_x8, align 4
  %div = sdiv i32 %21, 64
  store i32 %div, i32* %tilex, align 4
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %d, align 8
  br label %do.body.9

do.body.9:                                        ; preds = %do.cond, %do.end
  %22 = load i8*, i8** %src, align 8
  store i8* %22, i8** %s, align 8
  %23 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_is_premult = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %23, i32 0, i32 2
  %24 = load i32, i32* %src_is_premult, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.10, label %if.else.21

if.then.10:                                       ; preds = %do.body.9
  %25 = load i32, i32* %bpp, align 4
  switch i32 %25, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.12
    i32 2, label %sw.bb.15
    i32 1, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.then.10
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %d, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr11, i8** %d, align 8
  store i8 %27, i8* %28, align 1
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %if.then.10, %sw.bb
  %29 = load i8*, i8** %s, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr13, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %d, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr14, i8** %d, align 8
  store i8 %30, i8* %31, align 1
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %if.then.10, %sw.bb.12
  %32 = load i8*, i8** %s, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr16, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %d, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr17, i8** %d, align 8
  store i8 %33, i8* %34, align 1
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.then.10, %sw.bb.15
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr19, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %d, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr20, i8** %d, align 8
  store i8 %36, i8* %37, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.18, %if.then.10
  br label %if.end.73

if.else.21:                                       ; preds = %do.body.9
  %38 = load i32, i32* %bpp, align 4
  switch i32 %38, label %sw.epilog.72 [
    i32 4, label %sw.bb.22
    i32 3, label %sw.bb.48
    i32 2, label %sw.bb.55
    i32 1, label %sw.bb.69
  ]

sw.bb.22:                                         ; preds = %if.else.21
  %39 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %40 to i32
  %41 = load i8*, i8** %s, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %42 to i32
  %add = add nsw i32 %conv24, 1
  %mul = mul nsw i32 %conv, %add
  %shr = ashr i32 %mul, 8
  %conv25 = trunc i32 %shr to i8
  %43 = load i8*, i8** %d, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %conv25, i8* %arrayidx26, align 1
  %44 = load i8*, i8** %s, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %45 to i32
  %46 = load i8*, i8** %s, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %47 to i32
  %add31 = add nsw i32 %conv30, 1
  %mul32 = mul nsw i32 %conv28, %add31
  %shr33 = ashr i32 %mul32, 8
  %conv34 = trunc i32 %shr33 to i8
  %48 = load i8*, i8** %d, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv34, i8* %arrayidx35, align 1
  %49 = load i8*, i8** %s, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %49, i64 2
  %50 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %50 to i32
  %51 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %52 to i32
  %add40 = add nsw i32 %conv39, 1
  %mul41 = mul nsw i32 %conv37, %add40
  %shr42 = ashr i32 %mul41, 8
  %conv43 = trunc i32 %shr42 to i8
  %53 = load i8*, i8** %d, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %conv43, i8* %arrayidx44, align 1
  %54 = load i8*, i8** %s, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %54, i64 3
  %55 = load i8, i8* %arrayidx45, align 1
  %56 = load i8*, i8** %d, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %56, i64 3
  store i8 %55, i8* %arrayidx46, align 1
  %57 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr, i8** %d, align 8
  %58 = load i8*, i8** %s, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %add.ptr47, i8** %s, align 8
  br label %sw.epilog.72

sw.bb.48:                                         ; preds = %if.else.21
  %59 = load i8*, i8** %s, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %d, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr50, i8** %d, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr51, i8** %s, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %d, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr52, i8** %d, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %s, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr53, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %d, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr54, i8** %d, align 8
  store i8 %66, i8* %67, align 1
  br label %sw.epilog.72

sw.bb.55:                                         ; preds = %if.else.21
  %68 = load i8*, i8** %s, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %69 to i32
  %70 = load i8*, i8** %s, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %71 to i32
  %add60 = add nsw i32 %conv59, 1
  %mul61 = mul nsw i32 %conv57, %add60
  %shr62 = ashr i32 %mul61, 8
  %conv63 = trunc i32 %shr62 to i8
  %72 = load i8*, i8** %d, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %conv63, i8* %arrayidx64, align 1
  %73 = load i8*, i8** %s, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load i8, i8* %arrayidx65, align 1
  %75 = load i8*, i8** %d, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %74, i8* %arrayidx66, align 1
  %76 = load i8*, i8** %d, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %add.ptr67, i8** %d, align 8
  %77 = load i8*, i8** %s, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %add.ptr68, i8** %s, align 8
  br label %sw.epilog.72

sw.bb.69:                                         ; preds = %if.else.21
  %78 = load i8*, i8** %s, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr70, i8** %s, align 8
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %d, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr71, i8** %d, align 8
  store i8 %79, i8* %80, align 1
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %if.else.21, %sw.bb.69, %sw.bb.55, %sw.bb.48, %sw.bb.22
  br label %if.end.73

if.end.73:                                        ; preds = %sw.epilog.72, %sw.epilog
  %81 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %81, i32 0, i32 16
  %82 = load i32, i32* %x_dest_inc, align 4
  %conv74 = sext i32 %82 to i64
  %83 = load i64, i64* %dx, align 8
  %add75 = add nsw i64 %83, %conv74
  store i64 %add75, i64* %dx, align 8
  %84 = load i64, i64* %dx, align 8
  %85 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %85, i32 0, i32 17
  %86 = load i32, i32* %x_src_dec, align 4
  %conv76 = sext i32 %86 to i64
  %div77 = sdiv i64 %84, %conv76
  %conv78 = trunc i64 %div77 to i32
  store i32 %conv78, i32* %skipped, align 4
  %87 = load i32, i32* %skipped, align 4
  %tobool79 = icmp ne i32 %87, 0
  br i1 %tobool79, label %if.then.80, label %if.end.101

if.then.80:                                       ; preds = %if.end.73
  %88 = load i32, i32* %skipped, align 4
  %89 = load i32, i32* %bpp, align 4
  %mul81 = mul nsw i32 %88, %89
  %90 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %mul81 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %90, i64 %idx.ext
  store i8* %add.ptr82, i8** %src, align 8
  %91 = load i32, i32* %skipped, align 4
  %92 = load i32, i32* %src_x, align 4
  %add83 = add nsw i32 %92, %91
  store i32 %add83, i32* %src_x, align 4
  %93 = load i32, i32* %skipped, align 4
  %94 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec84 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %94, i32 0, i32 17
  %95 = load i32, i32* %x_src_dec84, align 4
  %mul85 = mul nsw i32 %93, %95
  %conv86 = sext i32 %mul85 to i64
  %96 = load i64, i64* %dx, align 8
  %sub = sub nsw i64 %96, %conv86
  store i64 %sub, i64* %dx, align 8
  %97 = load i32, i32* %src_x, align 4
  %div87 = sdiv i32 %97, 64
  %98 = load i32, i32* %tilex, align 4
  %cmp88 = icmp ne i32 %div87, %98
  br i1 %cmp88, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %if.then.80
  %99 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %99, i32 0)
  %100 = load i32, i32* %tilex, align 4
  %add91 = add nsw i32 %100, 1
  store i32 %add91, i32* %tilex, align 4
  %101 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles92 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %101, i32 0, i32 0
  %102 = load %struct._TileManager*, %struct._TileManager** %src_tiles92, align 8
  %103 = load i32, i32* %src_x, align 4
  %104 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y93 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %104, i32 0, i32 13
  %105 = load i32, i32* %src_y93, align 4
  %call94 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %102, i32 %103, i32 %105, i32 1, i32 0)
  store %struct._Tile* %call94, %struct._Tile** %tile, align 8
  %106 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool95 = icmp ne %struct._Tile* %106, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.90
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

if.end.97:                                        ; preds = %if.then.90
  %107 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %108 = load i32, i32* %src_x, align 4
  %109 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y98 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %109, i32 0, i32 13
  %110 = load i32, i32* %src_y98, align 4
  %call99 = call i8* @tile_data_pointer(%struct._Tile* %107, i32 %108, i32 %110)
  store i8* %call99, i8** %src, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.97, %if.then.80
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.73
  br label %do.cond

do.cond:                                          ; preds = %if.end.101
  %111 = load i32, i32* %width, align 4
  %dec = add nsw i32 %111, -1
  store i32 %dec, i32* %width, align 4
  %tobool102 = icmp ne i32 %dec, 0
  br i1 %tobool102, label %do.body.9, label %do.end.103

do.end.103:                                       ; preds = %do.cond
  %112 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %112, i32 0)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %do.end.103, %if.then.96, %if.else
  %113 = load i8*, i8** %retval
  ret i8* %113
}

; Function Attrs: nounwind uwtable
define internal i8* @render_image_tile_fault_one_row(%struct._RenderInfo* %info) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._RenderInfo*, align 8
  %tile = alloca [3 x %struct._Tile*], align 16
  %src = alloca [9 x i8*], align 16
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %tilex0 = alloca i32, align 4
  %tilex1 = alloca i32, align 4
  %tilexL = alloca i32, align 4
  %bpp = alloca i32, align 4
  %dx = alloca i32, align 4
  %src_x = alloca i32, align 4
  %skipped = alloca i32, align 4
  %left_weight = alloca i32, align 4
  %center_weight = alloca i32, align 4
  %right_weight = alloca i32, align 4
  %top_weight = alloca i32, align 4
  %middle_weight = alloca i32, align 4
  %bottom_weight = alloca i32, align 4
  %source_width = alloca i32, align 4
  store %struct._RenderInfo* %info, %struct._RenderInfo** %info.addr, align 8
  %0 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i32 0, i32 0
  %1 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %1)
  store i32 %call, i32* %source_width, align 4
  %2 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 23
  %3 = load i32, i32* %footprint_y, align 4
  %div = sdiv i32 %3, 2
  %conv = sext i32 %div to i64
  %4 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %4, i32 0, i32 25
  %5 = load i32, i32* %footshift_y, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %6, i32 0, i32 26
  %7 = load i64, i64* %dy, align 8
  %8 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %8, i32 0, i32 25
  %9 = load i32, i32* %footshift_y2, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 %7, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 26
  %11 = load i64, i64* %dy3, align 8
  %12 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y4 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %12, i32 0, i32 25
  %13 = load i32, i32* %footshift_y4, align 4
  %sub = sub nsw i32 0, %13
  %sh_prom5 = zext i32 %sub to i64
  %shr = ashr i64 %11, %sh_prom5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %shr, %cond.false ]
  %cmp6 = icmp sgt i64 %conv, %cond
  br i1 %cmp6, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %cond.end
  %14 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y9 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %14, i32 0, i32 23
  %15 = load i32, i32* %footprint_y9, align 4
  %div10 = sdiv i32 %15, 2
  %conv11 = sext i32 %div10 to i64
  br label %cond.end.29

cond.false.12:                                    ; preds = %cond.end
  %16 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y13 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %16, i32 0, i32 25
  %17 = load i32, i32* %footshift_y13, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %cond.true.16, label %cond.false.21

cond.true.16:                                     ; preds = %cond.false.12
  %18 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy17 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %18, i32 0, i32 26
  %19 = load i64, i64* %dy17, align 8
  %20 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y18 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %20, i32 0, i32 25
  %21 = load i32, i32* %footshift_y18, align 4
  %sh_prom19 = zext i32 %21 to i64
  %shl20 = shl i64 %19, %sh_prom19
  br label %cond.end.27

cond.false.21:                                    ; preds = %cond.false.12
  %22 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy22 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %22, i32 0, i32 26
  %23 = load i64, i64* %dy22, align 8
  %24 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y23 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %24, i32 0, i32 25
  %25 = load i32, i32* %footshift_y23, align 4
  %sub24 = sub nsw i32 0, %25
  %sh_prom25 = zext i32 %sub24 to i64
  %shr26 = ashr i64 %23, %sh_prom25
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.21, %cond.true.16
  %cond28 = phi i64 [ %shl20, %cond.true.16 ], [ %shr26, %cond.false.21 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.8
  %cond30 = phi i64 [ %conv11, %cond.true.8 ], [ %cond28, %cond.end.27 ]
  %26 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y31 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %26, i32 0, i32 25
  %27 = load i32, i32* %footshift_y31, align 4
  %cmp32 = icmp sgt i32 %27, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.39

cond.true.34:                                     ; preds = %cond.end.29
  %28 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy35 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %28, i32 0, i32 26
  %29 = load i64, i64* %dy35, align 8
  %30 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y36 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %30, i32 0, i32 25
  %31 = load i32, i32* %footshift_y36, align 4
  %sh_prom37 = zext i32 %31 to i64
  %shl38 = shl i64 %29, %sh_prom37
  br label %cond.end.45

cond.false.39:                                    ; preds = %cond.end.29
  %32 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy40 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %32, i32 0, i32 26
  %33 = load i64, i64* %dy40, align 8
  %34 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y41 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %34, i32 0, i32 25
  %35 = load i32, i32* %footshift_y41, align 4
  %sub42 = sub nsw i32 0, %35
  %sh_prom43 = zext i32 %sub42 to i64
  %shr44 = ashr i64 %33, %sh_prom43
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.39, %cond.true.34
  %cond46 = phi i64 [ %shl38, %cond.true.34 ], [ %shr44, %cond.false.39 ]
  %sub47 = sub nsw i64 %cond30, %cond46
  %conv48 = trunc i64 %sub47 to i32
  store i32 %conv48, i32* %top_weight, align 4
  %36 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y49 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %36, i32 0, i32 23
  %37 = load i32, i32* %footprint_y49, align 4
  %div50 = sdiv i32 %37, 2
  %conv51 = sext i32 %div50 to i64
  %38 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y52 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %38, i32 0, i32 25
  %39 = load i32, i32* %footshift_y52, align 4
  %cmp53 = icmp sgt i32 %39, 0
  br i1 %cmp53, label %cond.true.55, label %cond.false.60

cond.true.55:                                     ; preds = %cond.end.45
  %40 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy56 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %40, i32 0, i32 26
  %41 = load i64, i64* %dy56, align 8
  %42 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y57 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %42, i32 0, i32 25
  %43 = load i32, i32* %footshift_y57, align 4
  %sh_prom58 = zext i32 %43 to i64
  %shl59 = shl i64 %41, %sh_prom58
  br label %cond.end.66

cond.false.60:                                    ; preds = %cond.end.45
  %44 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy61 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %44, i32 0, i32 26
  %45 = load i64, i64* %dy61, align 8
  %46 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y62 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %46, i32 0, i32 25
  %47 = load i32, i32* %footshift_y62, align 4
  %sub63 = sub nsw i32 0, %47
  %sh_prom64 = zext i32 %sub63 to i64
  %shr65 = ashr i64 %45, %sh_prom64
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.60, %cond.true.55
  %cond67 = phi i64 [ %shl59, %cond.true.55 ], [ %shr65, %cond.false.60 ]
  %cmp68 = icmp sgt i64 %conv51, %cond67
  br i1 %cmp68, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %cond.end.66
  %48 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y71 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %48, i32 0, i32 23
  %49 = load i32, i32* %footprint_y71, align 4
  %div72 = sdiv i32 %49, 2
  %conv73 = sext i32 %div72 to i64
  br label %cond.end.91

cond.false.74:                                    ; preds = %cond.end.66
  %50 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y75 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %50, i32 0, i32 25
  %51 = load i32, i32* %footshift_y75, align 4
  %cmp76 = icmp sgt i32 %51, 0
  br i1 %cmp76, label %cond.true.78, label %cond.false.83

cond.true.78:                                     ; preds = %cond.false.74
  %52 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy79 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %52, i32 0, i32 26
  %53 = load i64, i64* %dy79, align 8
  %54 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y80 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %54, i32 0, i32 25
  %55 = load i32, i32* %footshift_y80, align 4
  %sh_prom81 = zext i32 %55 to i64
  %shl82 = shl i64 %53, %sh_prom81
  br label %cond.end.89

cond.false.83:                                    ; preds = %cond.false.74
  %56 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dy84 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %56, i32 0, i32 26
  %57 = load i64, i64* %dy84, align 8
  %58 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_y85 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %58, i32 0, i32 25
  %59 = load i32, i32* %footshift_y85, align 4
  %sub86 = sub nsw i32 0, %59
  %sh_prom87 = zext i32 %sub86 to i64
  %shr88 = ashr i64 %57, %sh_prom87
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.83, %cond.true.78
  %cond90 = phi i64 [ %shl82, %cond.true.78 ], [ %shr88, %cond.false.83 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.70
  %cond92 = phi i64 [ %conv73, %cond.true.70 ], [ %cond90, %cond.end.89 ]
  %60 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y93 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %60, i32 0, i32 23
  %61 = load i32, i32* %footprint_y93, align 4
  %div94 = sdiv i32 %61, 2
  %conv95 = sext i32 %div94 to i64
  %sub96 = sub nsw i64 %cond92, %conv95
  %conv97 = trunc i64 %sub96 to i32
  store i32 %conv97, i32* %bottom_weight, align 4
  %62 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_y98 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %62, i32 0, i32 23
  %63 = load i32, i32* %footprint_y98, align 4
  %64 = load i32, i32* %top_weight, align 4
  %sub99 = sub i32 %63, %64
  %65 = load i32, i32* %bottom_weight, align 4
  %sub100 = sub i32 %sub99, %65
  store i32 %sub100, i32* %middle_weight, align 4
  %66 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles101 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %66, i32 0, i32 0
  %67 = load %struct._TileManager*, %struct._TileManager** %src_tiles101, align 8
  %68 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x102 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %68, i32 0, i32 12
  %69 = load i32, i32* %src_x102, align 4
  %70 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %70, i32 0, i32 13
  %71 = load i32, i32* %src_y, align 4
  %call103 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %67, i32 %69, i32 %71, i32 1, i32 0)
  %arrayidx = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  store %struct._Tile* %call103, %struct._Tile** %arrayidx, align 8
  %72 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles104 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %72, i32 0, i32 0
  %73 = load %struct._TileManager*, %struct._TileManager** %src_tiles104, align 8
  %74 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x105 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %74, i32 0, i32 12
  %75 = load i32, i32* %src_x105, align 4
  %add = add nsw i32 %75, 1
  %76 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y106 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %76, i32 0, i32 13
  %77 = load i32, i32* %src_y106, align 4
  %call107 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %73, i32 %add, i32 %77, i32 1, i32 0)
  %arrayidx108 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  store %struct._Tile* %call107, %struct._Tile** %arrayidx108, align 8
  %78 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles109 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %78, i32 0, i32 0
  %79 = load %struct._TileManager*, %struct._TileManager** %src_tiles109, align 8
  %80 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x110 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %80, i32 0, i32 12
  %81 = load i32, i32* %src_x110, align 4
  %sub111 = sub nsw i32 %81, 1
  %82 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y112 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %82, i32 0, i32 13
  %83 = load i32, i32* %src_y112, align 4
  %call113 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %79, i32 %sub111, i32 %83, i32 1, i32 0)
  %arrayidx114 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  store %struct._Tile* %call113, %struct._Tile** %arrayidx114, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.91
  %arrayidx115 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %84 = load %struct._Tile*, %struct._Tile** %arrayidx115, align 8
  %cmp116 = icmp ne %struct._Tile* %84, null
  br i1 %cmp116, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.render_image_tile_fault_one_row, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arrayidx118 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %85 = load %struct._Tile*, %struct._Tile** %arrayidx118, align 8
  %86 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x119 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %86, i32 0, i32 12
  %87 = load i32, i32* %src_x119, align 4
  %88 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y120 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %88, i32 0, i32 13
  %89 = load i32, i32* %src_y120, align 4
  %call121 = call i8* @tile_data_pointer(%struct._Tile* %85, i32 %87, i32 %89)
  %arrayidx122 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  store i8* %call121, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %90 = load %struct._Tile*, %struct._Tile** %arrayidx123, align 8
  %91 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x124 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %91, i32 0, i32 12
  %92 = load i32, i32* %src_x124, align 4
  %93 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y125 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %93, i32 0, i32 13
  %94 = load i32, i32* %src_y125, align 4
  %add126 = add nsw i32 %94, 1
  %call127 = call i8* @tile_data_pointer(%struct._Tile* %90, i32 %92, i32 %add126)
  %arrayidx128 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %call127, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %95 = load %struct._Tile*, %struct._Tile** %arrayidx129, align 8
  %tobool = icmp ne %struct._Tile* %95, null
  br i1 %tobool, label %if.then.130, label %if.else.144

if.then.130:                                      ; preds = %do.end
  %arrayidx131 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %96 = load %struct._Tile*, %struct._Tile** %arrayidx131, align 8
  %97 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x132 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %97, i32 0, i32 12
  %98 = load i32, i32* %src_x132, align 4
  %add133 = add nsw i32 %98, 1
  %99 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y134 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %99, i32 0, i32 13
  %100 = load i32, i32* %src_y134, align 4
  %call135 = call i8* @tile_data_pointer(%struct._Tile* %96, i32 %add133, i32 %100)
  %arrayidx136 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %call135, i8** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %101 = load %struct._Tile*, %struct._Tile** %arrayidx137, align 8
  %102 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x138 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %102, i32 0, i32 12
  %103 = load i32, i32* %src_x138, align 4
  %add139 = add nsw i32 %103, 1
  %104 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y140 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %104, i32 0, i32 13
  %105 = load i32, i32* %src_y140, align 4
  %add141 = add nsw i32 %105, 1
  %call142 = call i8* @tile_data_pointer(%struct._Tile* %101, i32 %add139, i32 %add141)
  %arrayidx143 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %call142, i8** %arrayidx143, align 8
  br label %if.end.149

if.else.144:                                      ; preds = %do.end
  %arrayidx145 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %106 = load i8*, i8** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %106, i8** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  %107 = load i8*, i8** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %107, i8** %arrayidx148, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.144, %if.then.130
  %arrayidx150 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %108 = load %struct._Tile*, %struct._Tile** %arrayidx150, align 8
  %tobool151 = icmp ne %struct._Tile* %108, null
  br i1 %tobool151, label %if.then.152, label %if.else.159

if.then.152:                                      ; preds = %if.end.149
  %arrayidx153 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %109 = load %struct._Tile*, %struct._Tile** %arrayidx153, align 8
  %110 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x154 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %110, i32 0, i32 12
  %111 = load i32, i32* %src_x154, align 4
  %112 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y155 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %112, i32 0, i32 13
  %113 = load i32, i32* %src_y155, align 4
  %sub156 = sub nsw i32 %113, 1
  %call157 = call i8* @tile_data_pointer(%struct._Tile* %109, i32 %111, i32 %sub156)
  %arrayidx158 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %call157, i8** %arrayidx158, align 8
  br label %if.end.162

if.else.159:                                      ; preds = %if.end.149
  %arrayidx160 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %114 = load i8*, i8** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %114, i8** %arrayidx161, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.152
  %arrayidx163 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %115 = load %struct._Tile*, %struct._Tile** %arrayidx163, align 8
  %tobool164 = icmp ne %struct._Tile* %115, null
  br i1 %tobool164, label %if.then.165, label %if.else.173

if.then.165:                                      ; preds = %if.end.162
  %arrayidx166 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %116 = load %struct._Tile*, %struct._Tile** %arrayidx166, align 8
  %117 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x167 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %117, i32 0, i32 12
  %118 = load i32, i32* %src_x167, align 4
  %sub168 = sub nsw i32 %118, 1
  %119 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y169 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %119, i32 0, i32 13
  %120 = load i32, i32* %src_y169, align 4
  %sub170 = sub nsw i32 %120, 1
  %call171 = call i8* @tile_data_pointer(%struct._Tile* %116, i32 %sub168, i32 %sub170)
  %arrayidx172 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %call171, i8** %arrayidx172, align 8
  br label %if.end.176

if.else.173:                                      ; preds = %if.end.162
  %arrayidx174 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %121 = load i8*, i8** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %121, i8** %arrayidx175, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.then.165
  %arrayidx177 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %122 = load %struct._Tile*, %struct._Tile** %arrayidx177, align 8
  %tobool178 = icmp ne %struct._Tile* %122, null
  br i1 %tobool178, label %if.then.179, label %if.else.187

if.then.179:                                      ; preds = %if.end.176
  %arrayidx180 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %123 = load %struct._Tile*, %struct._Tile** %arrayidx180, align 8
  %124 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x181 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %124, i32 0, i32 12
  %125 = load i32, i32* %src_x181, align 4
  %add182 = add nsw i32 %125, 1
  %126 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y183 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %126, i32 0, i32 13
  %127 = load i32, i32* %src_y183, align 4
  %sub184 = sub nsw i32 %127, 1
  %call185 = call i8* @tile_data_pointer(%struct._Tile* %123, i32 %add182, i32 %sub184)
  %arrayidx186 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %call185, i8** %arrayidx186, align 8
  br label %if.end.190

if.else.187:                                      ; preds = %if.end.176
  %arrayidx188 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %128 = load i8*, i8** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %128, i8** %arrayidx189, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.179
  %arrayidx191 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %129 = load %struct._Tile*, %struct._Tile** %arrayidx191, align 8
  %tobool192 = icmp ne %struct._Tile* %129, null
  br i1 %tobool192, label %if.then.193, label %if.else.207

if.then.193:                                      ; preds = %if.end.190
  %arrayidx194 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %130 = load %struct._Tile*, %struct._Tile** %arrayidx194, align 8
  %131 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x195 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %131, i32 0, i32 12
  %132 = load i32, i32* %src_x195, align 4
  %sub196 = sub nsw i32 %132, 1
  %133 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y197 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %133, i32 0, i32 13
  %134 = load i32, i32* %src_y197, align 4
  %call198 = call i8* @tile_data_pointer(%struct._Tile* %130, i32 %sub196, i32 %134)
  %arrayidx199 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %call198, i8** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %135 = load %struct._Tile*, %struct._Tile** %arrayidx200, align 8
  %136 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x201 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %136, i32 0, i32 12
  %137 = load i32, i32* %src_x201, align 4
  %sub202 = sub nsw i32 %137, 1
  %138 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y203 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %138, i32 0, i32 13
  %139 = load i32, i32* %src_y203, align 4
  %add204 = add nsw i32 %139, 1
  %call205 = call i8* @tile_data_pointer(%struct._Tile* %135, i32 %sub202, i32 %add204)
  %arrayidx206 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %call205, i8** %arrayidx206, align 8
  br label %if.end.212

if.else.207:                                      ; preds = %if.end.190
  %arrayidx208 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %140 = load i8*, i8** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %140, i8** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %141 = load i8*, i8** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %141, i8** %arrayidx211, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.207, %if.then.193
  %142 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles213 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %142, i32 0, i32 0
  %143 = load %struct._TileManager*, %struct._TileManager** %src_tiles213, align 8
  %call214 = call i32 @tile_manager_bpp(%struct._TileManager* %143)
  store i32 %call214, i32* %bpp, align 4
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %dest, align 8
  %144 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %dx_start = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %144, i32 0, i32 18
  %145 = load i64, i64* %dx_start, align 8
  %conv215 = trunc i64 %145 to i32
  store i32 %conv215, i32* %dx, align 4
  %146 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x216 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %146, i32 0, i32 12
  %147 = load i32, i32* %src_x216, align 4
  store i32 %147, i32* %src_x, align 4
  %148 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %w = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %148, i32 0, i32 6
  %149 = load i32, i32* %w, align 4
  store i32 %149, i32* %width, align 4
  %150 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x217 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %150, i32 0, i32 12
  %151 = load i32, i32* %src_x217, align 4
  %div218 = sdiv i32 %151, 64
  store i32 %div218, i32* %tilex0, align 4
  %152 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x219 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %152, i32 0, i32 12
  %153 = load i32, i32* %src_x219, align 4
  %add220 = add nsw i32 %153, 1
  %div221 = sdiv i32 %add220, 64
  store i32 %div221, i32* %tilex1, align 4
  %154 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_x222 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %154, i32 0, i32 12
  %155 = load i32, i32* %src_x222, align 4
  %sub223 = sub nsw i32 %155, 1
  %div224 = sdiv i32 %sub223, 64
  store i32 %div224, i32* %tilexL, align 4
  br label %do.body.225

do.body.225:                                      ; preds = %do.cond, %if.end.212
  %156 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %156, i32 0, i32 22
  %157 = load i32, i32* %footprint_x, align 4
  %div226 = sdiv i32 %157, 2
  %158 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %158, i32 0, i32 24
  %159 = load i32, i32* %footshift_x, align 4
  %cmp227 = icmp sgt i32 %159, 0
  br i1 %cmp227, label %cond.true.229, label %cond.false.232

cond.true.229:                                    ; preds = %do.body.225
  %160 = load i32, i32* %dx, align 4
  %161 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x230 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %161, i32 0, i32 24
  %162 = load i32, i32* %footshift_x230, align 4
  %shl231 = shl i32 %160, %162
  br label %cond.end.236

cond.false.232:                                   ; preds = %do.body.225
  %163 = load i32, i32* %dx, align 4
  %164 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x233 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %164, i32 0, i32 24
  %165 = load i32, i32* %footshift_x233, align 4
  %sub234 = sub nsw i32 0, %165
  %shr235 = ashr i32 %163, %sub234
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.232, %cond.true.229
  %cond237 = phi i32 [ %shl231, %cond.true.229 ], [ %shr235, %cond.false.232 ]
  %cmp238 = icmp sgt i32 %div226, %cond237
  br i1 %cmp238, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %cond.end.236
  %166 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x241 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %166, i32 0, i32 22
  %167 = load i32, i32* %footprint_x241, align 4
  %div242 = sdiv i32 %167, 2
  br label %cond.end.256

cond.false.243:                                   ; preds = %cond.end.236
  %168 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x244 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %168, i32 0, i32 24
  %169 = load i32, i32* %footshift_x244, align 4
  %cmp245 = icmp sgt i32 %169, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.250

cond.true.247:                                    ; preds = %cond.false.243
  %170 = load i32, i32* %dx, align 4
  %171 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x248 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %171, i32 0, i32 24
  %172 = load i32, i32* %footshift_x248, align 4
  %shl249 = shl i32 %170, %172
  br label %cond.end.254

cond.false.250:                                   ; preds = %cond.false.243
  %173 = load i32, i32* %dx, align 4
  %174 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x251 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %174, i32 0, i32 24
  %175 = load i32, i32* %footshift_x251, align 4
  %sub252 = sub nsw i32 0, %175
  %shr253 = ashr i32 %173, %sub252
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.250, %cond.true.247
  %cond255 = phi i32 [ %shl249, %cond.true.247 ], [ %shr253, %cond.false.250 ]
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.end.254, %cond.true.240
  %cond257 = phi i32 [ %div242, %cond.true.240 ], [ %cond255, %cond.end.254 ]
  %176 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x258 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %176, i32 0, i32 24
  %177 = load i32, i32* %footshift_x258, align 4
  %cmp259 = icmp sgt i32 %177, 0
  br i1 %cmp259, label %cond.true.261, label %cond.false.264

cond.true.261:                                    ; preds = %cond.end.256
  %178 = load i32, i32* %dx, align 4
  %179 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x262 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %179, i32 0, i32 24
  %180 = load i32, i32* %footshift_x262, align 4
  %shl263 = shl i32 %178, %180
  br label %cond.end.268

cond.false.264:                                   ; preds = %cond.end.256
  %181 = load i32, i32* %dx, align 4
  %182 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x265 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %182, i32 0, i32 24
  %183 = load i32, i32* %footshift_x265, align 4
  %sub266 = sub nsw i32 0, %183
  %shr267 = ashr i32 %181, %sub266
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.264, %cond.true.261
  %cond269 = phi i32 [ %shl263, %cond.true.261 ], [ %shr267, %cond.false.264 ]
  %sub270 = sub nsw i32 %cond257, %cond269
  store i32 %sub270, i32* %left_weight, align 4
  %184 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x271 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %184, i32 0, i32 22
  %185 = load i32, i32* %footprint_x271, align 4
  %div272 = sdiv i32 %185, 2
  %186 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x273 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %186, i32 0, i32 24
  %187 = load i32, i32* %footshift_x273, align 4
  %cmp274 = icmp sgt i32 %187, 0
  br i1 %cmp274, label %cond.true.276, label %cond.false.279

cond.true.276:                                    ; preds = %cond.end.268
  %188 = load i32, i32* %dx, align 4
  %189 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x277 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %189, i32 0, i32 24
  %190 = load i32, i32* %footshift_x277, align 4
  %shl278 = shl i32 %188, %190
  br label %cond.end.283

cond.false.279:                                   ; preds = %cond.end.268
  %191 = load i32, i32* %dx, align 4
  %192 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x280 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %192, i32 0, i32 24
  %193 = load i32, i32* %footshift_x280, align 4
  %sub281 = sub nsw i32 0, %193
  %shr282 = ashr i32 %191, %sub281
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.279, %cond.true.276
  %cond284 = phi i32 [ %shl278, %cond.true.276 ], [ %shr282, %cond.false.279 ]
  %cmp285 = icmp sgt i32 %div272, %cond284
  br i1 %cmp285, label %cond.true.287, label %cond.false.290

cond.true.287:                                    ; preds = %cond.end.283
  %194 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x288 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %194, i32 0, i32 22
  %195 = load i32, i32* %footprint_x288, align 4
  %div289 = sdiv i32 %195, 2
  br label %cond.end.303

cond.false.290:                                   ; preds = %cond.end.283
  %196 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x291 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %196, i32 0, i32 24
  %197 = load i32, i32* %footshift_x291, align 4
  %cmp292 = icmp sgt i32 %197, 0
  br i1 %cmp292, label %cond.true.294, label %cond.false.297

cond.true.294:                                    ; preds = %cond.false.290
  %198 = load i32, i32* %dx, align 4
  %199 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x295 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %199, i32 0, i32 24
  %200 = load i32, i32* %footshift_x295, align 4
  %shl296 = shl i32 %198, %200
  br label %cond.end.301

cond.false.297:                                   ; preds = %cond.false.290
  %201 = load i32, i32* %dx, align 4
  %202 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footshift_x298 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %202, i32 0, i32 24
  %203 = load i32, i32* %footshift_x298, align 4
  %sub299 = sub nsw i32 0, %203
  %shr300 = ashr i32 %201, %sub299
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.297, %cond.true.294
  %cond302 = phi i32 [ %shl296, %cond.true.294 ], [ %shr300, %cond.false.297 ]
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.end.301, %cond.true.287
  %cond304 = phi i32 [ %div289, %cond.true.287 ], [ %cond302, %cond.end.301 ]
  %204 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x305 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %204, i32 0, i32 22
  %205 = load i32, i32* %footprint_x305, align 4
  %div306 = sdiv i32 %205, 2
  %sub307 = sub nsw i32 %cond304, %div306
  store i32 %sub307, i32* %right_weight, align 4
  %206 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %footprint_x308 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %206, i32 0, i32 22
  %207 = load i32, i32* %footprint_x308, align 4
  %208 = load i32, i32* %left_weight, align 4
  %sub309 = sub i32 %207, %208
  %209 = load i32, i32* %right_weight, align 4
  %sub310 = sub i32 %sub309, %209
  store i32 %sub310, i32* %center_weight, align 4
  %210 = load i32, i32* %src_x, align 4
  %add311 = add nsw i32 %210, 1
  %211 = load i32, i32* %source_width, align 4
  %cmp312 = icmp uge i32 %add311, %211
  br i1 %cmp312, label %if.then.314, label %if.end.321

if.then.314:                                      ; preds = %cond.end.303
  %arrayidx315 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %212 = load i8*, i8** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %212, i8** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %213 = load i8*, i8** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %213, i8** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %214 = load i8*, i8** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %214, i8** %arrayidx320, align 8
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.314, %cond.end.303
  %215 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_is_premult = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %215, i32 0, i32 2
  %216 = load i32, i32* %src_is_premult, align 4
  %tobool322 = icmp ne i32 %216, 0
  br i1 %tobool322, label %if.then.323, label %if.else.324

if.then.323:                                      ; preds = %if.end.321
  %217 = load i32, i32* %left_weight, align 4
  %218 = load i32, i32* %center_weight, align 4
  %219 = load i32, i32* %right_weight, align 4
  %220 = load i32, i32* %top_weight, align 4
  %221 = load i32, i32* %middle_weight, align 4
  %222 = load i32, i32* %bottom_weight, align 4
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i32 0
  %223 = load i8*, i8** %dest, align 8
  %224 = load i32, i32* %bpp, align 4
  call void @box_filter(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i8** %arraydecay, i8* %223, i32 %224)
  br label %if.end.326

if.else.324:                                      ; preds = %if.end.321
  %225 = load i32, i32* %left_weight, align 4
  %226 = load i32, i32* %center_weight, align 4
  %227 = load i32, i32* %right_weight, align 4
  %228 = load i32, i32* %top_weight, align 4
  %229 = load i32, i32* %middle_weight, align 4
  %230 = load i32, i32* %bottom_weight, align 4
  %arraydecay325 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i32 0
  %231 = load i8*, i8** %dest, align 8
  %232 = load i32, i32* %bpp, align 4
  call void @box_filter_premult(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i8** %arraydecay325, i8* %231, i32 %232)
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.324, %if.then.323
  %233 = load i32, i32* %bpp, align 4
  %234 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %233 to i64
  %add.ptr = getelementptr inbounds i8, i8* %234, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %235 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %235, i32 0, i32 16
  %236 = load i32, i32* %x_dest_inc, align 4
  %237 = load i32, i32* %dx, align 4
  %add327 = add nsw i32 %237, %236
  store i32 %add327, i32* %dx, align 4
  %238 = load i32, i32* %dx, align 4
  %239 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %239, i32 0, i32 17
  %240 = load i32, i32* %x_src_dec, align 4
  %div328 = sdiv i32 %238, %240
  store i32 %div328, i32* %skipped, align 4
  %241 = load i32, i32* %skipped, align 4
  %tobool329 = icmp ne i32 %241, 0
  br i1 %tobool329, label %if.then.330, label %if.end.510

if.then.330:                                      ; preds = %if.end.326
  %242 = load i32, i32* %skipped, align 4
  %243 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %x_src_dec331 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %243, i32 0, i32 17
  %244 = load i32, i32* %x_src_dec331, align 4
  %mul = mul nsw i32 %242, %244
  %245 = load i32, i32* %dx, align 4
  %sub332 = sub nsw i32 %245, %mul
  store i32 %sub332, i32* %dx, align 4
  %arrayidx333 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  %246 = load i8*, i8** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %247 = load i8*, i8** %arrayidx334, align 8
  %cmp335 = icmp ne i8* %246, %247
  br i1 %cmp335, label %if.then.337, label %if.else.342

if.then.337:                                      ; preds = %if.then.330
  %248 = load i32, i32* %skipped, align 4
  %249 = load i32, i32* %bpp, align 4
  %mul338 = mul nsw i32 %248, %249
  %arrayidx339 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  %250 = load i8*, i8** %arrayidx339, align 8
  %idx.ext340 = sext i32 %mul338 to i64
  %add.ptr341 = getelementptr inbounds i8, i8* %250, i64 %idx.ext340
  store i8* %add.ptr341, i8** %arrayidx339, align 8
  br label %if.end.343

if.else.342:                                      ; preds = %if.then.330
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.342, %if.then.337
  %arrayidx344 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  %251 = load i8*, i8** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %252 = load i8*, i8** %arrayidx345, align 8
  %cmp346 = icmp ne i8* %251, %252
  br i1 %cmp346, label %if.then.348, label %if.else.353

if.then.348:                                      ; preds = %if.end.343
  %253 = load i32, i32* %skipped, align 4
  %254 = load i32, i32* %bpp, align 4
  %mul349 = mul nsw i32 %253, %254
  %arrayidx350 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  %255 = load i8*, i8** %arrayidx350, align 8
  %idx.ext351 = sext i32 %mul349 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %255, i64 %idx.ext351
  store i8* %add.ptr352, i8** %arrayidx350, align 8
  br label %if.end.354

if.else.353:                                      ; preds = %if.end.343
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.353, %if.then.348
  %arrayidx355 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  %256 = load i8*, i8** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %257 = load i8*, i8** %arrayidx356, align 8
  %cmp357 = icmp ne i8* %256, %257
  br i1 %cmp357, label %if.then.359, label %if.else.364

if.then.359:                                      ; preds = %if.end.354
  %258 = load i32, i32* %skipped, align 4
  %259 = load i32, i32* %bpp, align 4
  %mul360 = mul nsw i32 %258, %259
  %arrayidx361 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  %260 = load i8*, i8** %arrayidx361, align 8
  %idx.ext362 = sext i32 %mul360 to i64
  %add.ptr363 = getelementptr inbounds i8, i8* %260, i64 %idx.ext362
  store i8* %add.ptr363, i8** %arrayidx361, align 8
  br label %if.end.365

if.else.364:                                      ; preds = %if.end.354
  store i32 -1, i32* %tilexL, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.364, %if.then.359
  %261 = load i32, i32* %skipped, align 4
  %262 = load i32, i32* %bpp, align 4
  %mul366 = mul nsw i32 %261, %262
  %arrayidx367 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %263 = load i8*, i8** %arrayidx367, align 8
  %idx.ext368 = sext i32 %mul366 to i64
  %add.ptr369 = getelementptr inbounds i8, i8* %263, i64 %idx.ext368
  store i8* %add.ptr369, i8** %arrayidx367, align 8
  %264 = load i32, i32* %skipped, align 4
  %265 = load i32, i32* %bpp, align 4
  %mul370 = mul nsw i32 %264, %265
  %arrayidx371 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %266 = load i8*, i8** %arrayidx371, align 8
  %idx.ext372 = sext i32 %mul370 to i64
  %add.ptr373 = getelementptr inbounds i8, i8* %266, i64 %idx.ext372
  store i8* %add.ptr373, i8** %arrayidx371, align 8
  %267 = load i32, i32* %skipped, align 4
  %268 = load i32, i32* %bpp, align 4
  %mul374 = mul nsw i32 %267, %268
  %arrayidx375 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %269 = load i8*, i8** %arrayidx375, align 8
  %idx.ext376 = sext i32 %mul374 to i64
  %add.ptr377 = getelementptr inbounds i8, i8* %269, i64 %idx.ext376
  store i8* %add.ptr377, i8** %arrayidx375, align 8
  %270 = load i32, i32* %skipped, align 4
  %271 = load i32, i32* %bpp, align 4
  %mul378 = mul nsw i32 %270, %271
  %arrayidx379 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  %272 = load i8*, i8** %arrayidx379, align 8
  %idx.ext380 = sext i32 %mul378 to i64
  %add.ptr381 = getelementptr inbounds i8, i8* %272, i64 %idx.ext380
  store i8* %add.ptr381, i8** %arrayidx379, align 8
  %273 = load i32, i32* %skipped, align 4
  %274 = load i32, i32* %bpp, align 4
  %mul382 = mul nsw i32 %273, %274
  %arrayidx383 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  %275 = load i8*, i8** %arrayidx383, align 8
  %idx.ext384 = sext i32 %mul382 to i64
  %add.ptr385 = getelementptr inbounds i8, i8* %275, i64 %idx.ext384
  store i8* %add.ptr385, i8** %arrayidx383, align 8
  %276 = load i32, i32* %skipped, align 4
  %277 = load i32, i32* %bpp, align 4
  %mul386 = mul nsw i32 %276, %277
  %arrayidx387 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  %278 = load i8*, i8** %arrayidx387, align 8
  %idx.ext388 = sext i32 %mul386 to i64
  %add.ptr389 = getelementptr inbounds i8, i8* %278, i64 %idx.ext388
  store i8* %add.ptr389, i8** %arrayidx387, align 8
  %279 = load i32, i32* %skipped, align 4
  %280 = load i32, i32* %src_x, align 4
  %add390 = add nsw i32 %280, %279
  store i32 %add390, i32* %src_x, align 4
  %281 = load i32, i32* %src_x, align 4
  %div391 = sdiv i32 %281, 64
  %282 = load i32, i32* %tilex0, align 4
  %cmp392 = icmp ne i32 %div391, %282
  br i1 %cmp392, label %if.then.394, label %if.end.419

if.then.394:                                      ; preds = %if.end.365
  %arrayidx395 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %283 = load %struct._Tile*, %struct._Tile** %arrayidx395, align 8
  call void @tile_release(%struct._Tile* %283, i32 0)
  %284 = load i32, i32* %tilex0, align 4
  %add396 = add nsw i32 %284, 1
  store i32 %add396, i32* %tilex0, align 4
  %285 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles397 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %285, i32 0, i32 0
  %286 = load %struct._TileManager*, %struct._TileManager** %src_tiles397, align 8
  %287 = load i32, i32* %src_x, align 4
  %288 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y398 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %288, i32 0, i32 13
  %289 = load i32, i32* %src_y398, align 4
  %call399 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %286, i32 %287, i32 %289, i32 1, i32 0)
  %arrayidx400 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  store %struct._Tile* %call399, %struct._Tile** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %290 = load %struct._Tile*, %struct._Tile** %arrayidx401, align 8
  %tobool402 = icmp ne %struct._Tile* %290, null
  br i1 %tobool402, label %if.end.404, label %if.then.403

if.then.403:                                      ; preds = %if.then.394
  br label %done

if.end.404:                                       ; preds = %if.then.394
  %arrayidx405 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %291 = load %struct._Tile*, %struct._Tile** %arrayidx405, align 8
  %292 = load i32, i32* %src_x, align 4
  %293 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y406 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %293, i32 0, i32 13
  %294 = load i32, i32* %src_y406, align 4
  %call407 = call i8* @tile_data_pointer(%struct._Tile* %291, i32 %292, i32 %294)
  %arrayidx408 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  store i8* %call407, i8** %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %295 = load %struct._Tile*, %struct._Tile** %arrayidx409, align 8
  %296 = load i32, i32* %src_x, align 4
  %297 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y410 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %297, i32 0, i32 13
  %298 = load i32, i32* %src_y410, align 4
  %add411 = add nsw i32 %298, 1
  %call412 = call i8* @tile_data_pointer(%struct._Tile* %295, i32 %296, i32 %add411)
  %arrayidx413 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  store i8* %call412, i8** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 0
  %299 = load %struct._Tile*, %struct._Tile** %arrayidx414, align 8
  %300 = load i32, i32* %src_x, align 4
  %301 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y415 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %301, i32 0, i32 13
  %302 = load i32, i32* %src_y415, align 4
  %sub416 = sub nsw i32 %302, 1
  %call417 = call i8* @tile_data_pointer(%struct._Tile* %299, i32 %300, i32 %sub416)
  %arrayidx418 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  store i8* %call417, i8** %arrayidx418, align 8
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.404, %if.end.365
  %303 = load i32, i32* %src_x, align 4
  %add420 = add nsw i32 %303, 1
  %div421 = sdiv i32 %add420, 64
  %304 = load i32, i32* %tilex1, align 4
  %cmp422 = icmp ne i32 %div421, %304
  br i1 %cmp422, label %if.then.424, label %if.end.464

if.then.424:                                      ; preds = %if.end.419
  %arrayidx425 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %305 = load %struct._Tile*, %struct._Tile** %arrayidx425, align 8
  %tobool426 = icmp ne %struct._Tile* %305, null
  br i1 %tobool426, label %if.then.427, label %if.end.429

if.then.427:                                      ; preds = %if.then.424
  %arrayidx428 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %306 = load %struct._Tile*, %struct._Tile** %arrayidx428, align 8
  call void @tile_release(%struct._Tile* %306, i32 0)
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.427, %if.then.424
  %307 = load i32, i32* %tilex1, align 4
  %add430 = add nsw i32 %307, 1
  store i32 %add430, i32* %tilex1, align 4
  %308 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles431 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %308, i32 0, i32 0
  %309 = load %struct._TileManager*, %struct._TileManager** %src_tiles431, align 8
  %310 = load i32, i32* %src_x, align 4
  %add432 = add nsw i32 %310, 1
  %311 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y433 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %311, i32 0, i32 13
  %312 = load i32, i32* %src_y433, align 4
  %call434 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %309, i32 %add432, i32 %312, i32 1, i32 0)
  %arrayidx435 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  store %struct._Tile* %call434, %struct._Tile** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %313 = load %struct._Tile*, %struct._Tile** %arrayidx436, align 8
  %tobool437 = icmp ne %struct._Tile* %313, null
  br i1 %tobool437, label %if.else.445, label %if.then.438

if.then.438:                                      ; preds = %if.end.429
  %arrayidx439 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %314 = load i8*, i8** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %314, i8** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %315 = load i8*, i8** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %315, i8** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %316 = load i8*, i8** %arrayidx443, align 8
  %arrayidx444 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %316, i8** %arrayidx444, align 8
  br label %if.end.463

if.else.445:                                      ; preds = %if.end.429
  %arrayidx446 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %317 = load %struct._Tile*, %struct._Tile** %arrayidx446, align 8
  %318 = load i32, i32* %src_x, align 4
  %add447 = add nsw i32 %318, 1
  %319 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y448 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %319, i32 0, i32 13
  %320 = load i32, i32* %src_y448, align 4
  %call449 = call i8* @tile_data_pointer(%struct._Tile* %317, i32 %add447, i32 %320)
  %arrayidx450 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 5
  store i8* %call449, i8** %arrayidx450, align 8
  %arrayidx451 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %321 = load %struct._Tile*, %struct._Tile** %arrayidx451, align 8
  %322 = load i32, i32* %src_x, align 4
  %add452 = add nsw i32 %322, 1
  %323 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y453 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %323, i32 0, i32 13
  %324 = load i32, i32* %src_y453, align 4
  %add454 = add nsw i32 %324, 1
  %call455 = call i8* @tile_data_pointer(%struct._Tile* %321, i32 %add452, i32 %add454)
  %arrayidx456 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 8
  store i8* %call455, i8** %arrayidx456, align 8
  %arrayidx457 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 1
  %325 = load %struct._Tile*, %struct._Tile** %arrayidx457, align 8
  %326 = load i32, i32* %src_x, align 4
  %add458 = add nsw i32 %326, 1
  %327 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y459 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %327, i32 0, i32 13
  %328 = load i32, i32* %src_y459, align 4
  %sub460 = sub nsw i32 %328, 1
  %call461 = call i8* @tile_data_pointer(%struct._Tile* %325, i32 %add458, i32 %sub460)
  %arrayidx462 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 2
  store i8* %call461, i8** %arrayidx462, align 8
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.445, %if.then.438
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.end.419
  %329 = load i32, i32* %src_x, align 4
  %sub465 = sub nsw i32 %329, 1
  %div466 = sdiv i32 %sub465, 64
  %330 = load i32, i32* %tilexL, align 4
  %cmp467 = icmp ne i32 %div466, %330
  br i1 %cmp467, label %if.then.469, label %if.end.509

if.then.469:                                      ; preds = %if.end.464
  %arrayidx470 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %331 = load %struct._Tile*, %struct._Tile** %arrayidx470, align 8
  %tobool471 = icmp ne %struct._Tile* %331, null
  br i1 %tobool471, label %if.then.472, label %if.end.474

if.then.472:                                      ; preds = %if.then.469
  %arrayidx473 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %332 = load %struct._Tile*, %struct._Tile** %arrayidx473, align 8
  call void @tile_release(%struct._Tile* %332, i32 0)
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.472, %if.then.469
  %333 = load i32, i32* %tilexL, align 4
  %add475 = add nsw i32 %333, 1
  store i32 %add475, i32* %tilexL, align 4
  %334 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_tiles476 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %334, i32 0, i32 0
  %335 = load %struct._TileManager*, %struct._TileManager** %src_tiles476, align 8
  %336 = load i32, i32* %src_x, align 4
  %sub477 = sub nsw i32 %336, 1
  %337 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y478 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %337, i32 0, i32 13
  %338 = load i32, i32* %src_y478, align 4
  %call479 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %335, i32 %sub477, i32 %338, i32 1, i32 0)
  %arrayidx480 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  store %struct._Tile* %call479, %struct._Tile** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %339 = load %struct._Tile*, %struct._Tile** %arrayidx481, align 8
  %tobool482 = icmp ne %struct._Tile* %339, null
  br i1 %tobool482, label %if.else.490, label %if.then.483

if.then.483:                                      ; preds = %if.end.474
  %arrayidx484 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 4
  %340 = load i8*, i8** %arrayidx484, align 8
  %arrayidx485 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %340, i8** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 7
  %341 = load i8*, i8** %arrayidx486, align 8
  %arrayidx487 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %341, i8** %arrayidx487, align 8
  %arrayidx488 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 1
  %342 = load i8*, i8** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %342, i8** %arrayidx489, align 8
  br label %if.end.508

if.else.490:                                      ; preds = %if.end.474
  %arrayidx491 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %343 = load %struct._Tile*, %struct._Tile** %arrayidx491, align 8
  %344 = load i32, i32* %src_x, align 4
  %sub492 = sub nsw i32 %344, 1
  %345 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y493 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %345, i32 0, i32 13
  %346 = load i32, i32* %src_y493, align 4
  %call494 = call i8* @tile_data_pointer(%struct._Tile* %343, i32 %sub492, i32 %346)
  %arrayidx495 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 3
  store i8* %call494, i8** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %347 = load %struct._Tile*, %struct._Tile** %arrayidx496, align 8
  %348 = load i32, i32* %src_x, align 4
  %sub497 = sub nsw i32 %348, 1
  %349 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y498 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %349, i32 0, i32 13
  %350 = load i32, i32* %src_y498, align 4
  %add499 = add nsw i32 %350, 1
  %call500 = call i8* @tile_data_pointer(%struct._Tile* %347, i32 %sub497, i32 %add499)
  %arrayidx501 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 6
  store i8* %call500, i8** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 2
  %351 = load %struct._Tile*, %struct._Tile** %arrayidx502, align 8
  %352 = load i32, i32* %src_x, align 4
  %sub503 = sub nsw i32 %352, 1
  %353 = load %struct._RenderInfo*, %struct._RenderInfo** %info.addr, align 8
  %src_y504 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %353, i32 0, i32 13
  %354 = load i32, i32* %src_y504, align 4
  %sub505 = sub nsw i32 %354, 1
  %call506 = call i8* @tile_data_pointer(%struct._Tile* %351, i32 %sub503, i32 %sub505)
  %arrayidx507 = getelementptr inbounds [9 x i8*], [9 x i8*]* %src, i32 0, i64 0
  store i8* %call506, i8** %arrayidx507, align 8
  br label %if.end.508

if.end.508:                                       ; preds = %if.else.490, %if.then.483
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.end.464
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.end.326
  br label %do.cond

do.cond:                                          ; preds = %if.end.510
  %355 = load i32, i32* %width, align 4
  %dec = add nsw i32 %355, -1
  store i32 %dec, i32* %width, align 4
  %tobool511 = icmp ne i32 %dec, 0
  br i1 %tobool511, label %do.body.225, label %do.end.512

do.end.512:                                       ; preds = %do.cond
  br label %done

done:                                             ; preds = %do.end.512, %if.then.403
  store i32 0, i32* %dx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %done
  %356 = load i32, i32* %dx, align 4
  %cmp513 = icmp slt i32 %356, 3
  br i1 %cmp513, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %357 = load i32, i32* %dx, align 4
  %idxprom = sext i32 %357 to i64
  %arrayidx515 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 %idxprom
  %358 = load %struct._Tile*, %struct._Tile** %arrayidx515, align 8
  %tobool516 = icmp ne %struct._Tile* %358, null
  br i1 %tobool516, label %if.then.517, label %if.end.520

if.then.517:                                      ; preds = %for.body
  %359 = load i32, i32* %dx, align 4
  %idxprom518 = sext i32 %359 to i64
  %arrayidx519 = getelementptr inbounds [3 x %struct._Tile*], [3 x %struct._Tile*]* %tile, i32 0, i64 %idxprom518
  %360 = load %struct._Tile*, %struct._Tile** %arrayidx519, align 8
  call void @tile_release(%struct._Tile* %360, i32 0)
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.517, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.520
  %361 = load i32, i32* %dx, align 4
  %inc = add nsw i32 %361, 1
  store i32 %inc, i32* %dx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @tile_buf, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %362 = load i8*, i8** %retval
  ret i8* %362
}

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #3

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @box_filter(i32 %left_weight, i32 %center_weight, i32 %right_weight, i32 %top_weight, i32 %middle_weight, i32 %bottom_weight, i8** %src, i8* %dest, i32 %bpp) #6 {
entry:
  %left_weight.addr = alloca i32, align 4
  %center_weight.addr = alloca i32, align 4
  %right_weight.addr = alloca i32, align 4
  %top_weight.addr = alloca i32, align 4
  %middle_weight.addr = alloca i32, align 4
  %bottom_weight.addr = alloca i32, align 4
  %src.addr = alloca i8**, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %left_weight, i32* %left_weight.addr, align 4
  store i32 %center_weight, i32* %center_weight.addr, align 4
  store i32 %right_weight, i32* %right_weight.addr, align 4
  store i32 %top_weight, i32* %top_weight.addr, align 4
  store i32 %middle_weight, i32* %middle_weight.addr, align 4
  store i32 %bottom_weight, i32* %bottom_weight.addr, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %left_weight.addr, align 4
  %1 = load i32, i32* %center_weight.addr, align 4
  %add = add i32 %0, %1
  %2 = load i32, i32* %right_weight.addr, align 4
  %add1 = add i32 %add, %2
  %3 = load i32, i32* %top_weight.addr, align 4
  %4 = load i32, i32* %middle_weight.addr, align 4
  %add2 = add i32 %3, %4
  %5 = load i32, i32* %bottom_weight.addr, align 4
  %add3 = add i32 %add2, %5
  %mul = mul i32 %add1, %add3
  store i32 %mul, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %left_weight.addr, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %top_weight.addr, align 4
  %mul5 = mul i32 %conv, %13
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load i8**, i8*** %src.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom6
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %18 = load i32, i32* %middle_weight.addr, align 4
  %mul10 = mul i32 %conv9, %18
  %add11 = add i32 %mul5, %mul10
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i8**, i8*** %src.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %20, i64 6
  %21 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %21, i64 %idxprom12
  %22 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %22 to i32
  %23 = load i32, i32* %bottom_weight.addr, align 4
  %mul16 = mul i32 %conv15, %23
  %add17 = add i32 %add11, %mul16
  %mul18 = mul i32 %8, %add17
  %24 = load i32, i32* %center_weight.addr, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i8**, i8*** %src.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %idxprom19
  %28 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %28 to i32
  %29 = load i32, i32* %top_weight.addr, align 4
  %mul23 = mul i32 %conv22, %29
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i8**, i8*** %src.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %31, i64 4
  %32 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %32, i64 %idxprom24
  %33 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %33 to i32
  %34 = load i32, i32* %middle_weight.addr, align 4
  %mul28 = mul i32 %conv27, %34
  %add29 = add i32 %mul23, %mul28
  %35 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load i8**, i8*** %src.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %36, i64 7
  %37 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %37, i64 %idxprom30
  %38 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %38 to i32
  %39 = load i32, i32* %bottom_weight.addr, align 4
  %mul34 = mul i32 %conv33, %39
  %add35 = add i32 %add29, %mul34
  %mul36 = mul i32 %24, %add35
  %add37 = add i32 %mul18, %mul36
  %40 = load i32, i32* %right_weight.addr, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load i8**, i8*** %src.addr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %42, i64 2
  %43 = load i8*, i8** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %43, i64 %idxprom38
  %44 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %44 to i32
  %45 = load i32, i32* %top_weight.addr, align 4
  %mul42 = mul i32 %conv41, %45
  %46 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load i8**, i8*** %src.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %47, i64 5
  %48 = load i8*, i8** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 %idxprom43
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  %50 = load i32, i32* %middle_weight.addr, align 4
  %mul47 = mul i32 %conv46, %50
  %add48 = add i32 %mul42, %mul47
  %51 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %51 to i64
  %52 = load i8**, i8*** %src.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %52, i64 8
  %53 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %53, i64 %idxprom49
  %54 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %54 to i32
  %55 = load i32, i32* %bottom_weight.addr, align 4
  %mul53 = mul i32 %conv52, %55
  %add54 = add i32 %add48, %mul53
  %mul55 = mul i32 %40, %add54
  %add56 = add i32 %add37, %mul55
  %56 = load i32, i32* %sum, align 4
  %div = udiv i32 %add56, %56
  %conv57 = trunc i32 %div to i8
  %57 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load i8*, i8** %dest.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %58, i64 %idxprom58
  store i8 %conv57, i8* %arrayidx59, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @box_filter_premult(i32 %left_weight, i32 %center_weight, i32 %right_weight, i32 %top_weight, i32 %middle_weight, i32 %bottom_weight, i8** %src, i8* %dest, i32 %bpp) #6 {
entry:
  %left_weight.addr = alloca i32, align 4
  %center_weight.addr = alloca i32, align 4
  %right_weight.addr = alloca i32, align 4
  %top_weight.addr = alloca i32, align 4
  %middle_weight.addr = alloca i32, align 4
  %bottom_weight.addr = alloca i32, align 4
  %src.addr = alloca i8**, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %factors = alloca [9 x i32], align 16
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %factors152 = alloca [9 x i32], align 16
  %a207 = alloca i32, align 4
  %i228 = alloca i32, align 4
  store i32 %left_weight, i32* %left_weight.addr, align 4
  store i32 %center_weight, i32* %center_weight.addr, align 4
  store i32 %right_weight, i32* %right_weight.addr, align 4
  store i32 %top_weight, i32* %top_weight.addr, align 4
  store i32 %middle_weight, i32* %middle_weight.addr, align 4
  store i32 %bottom_weight, i32* %bottom_weight.addr, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %left_weight.addr, align 4
  %1 = load i32, i32* %center_weight.addr, align 4
  %add = add i32 %0, %1
  %2 = load i32, i32* %right_weight.addr, align 4
  %add1 = add i32 %add, %2
  %3 = load i32, i32* %top_weight.addr, align 4
  %4 = load i32, i32* %middle_weight.addr, align 4
  %add2 = add i32 %3, %4
  %5 = load i32, i32* %bottom_weight.addr, align 4
  %add3 = add i32 %add2, %5
  %mul = mul i32 %add1, %add3
  %shr = lshr i32 %mul, 4
  store i32 %shr, i32* %sum, align 4
  %6 = load i32, i32* %bpp.addr, align 4
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.151
  ]

sw.bb:                                            ; preds = %entry
  %arrayinit.begin = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i64 0, i64 0
  %7 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %top_weight.addr, align 4
  %mul5 = mul i32 %conv, %10
  %shr6 = lshr i32 %mul5, 4
  store i32 %shr6, i32* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i32, i32* %arrayinit.begin, i64 1
  %11 = load i8**, i8*** %src.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %11, i64 4
  %12 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %14 = load i32, i32* %middle_weight.addr, align 4
  %mul10 = mul i32 %conv9, %14
  %shr11 = lshr i32 %mul10, 4
  store i32 %shr11, i32* %arrayinit.element
  %arrayinit.element12 = getelementptr inbounds i32, i32* %arrayinit.element, i64 1
  %15 = load i8**, i8*** %src.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %15, i64 7
  %16 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %18 = load i32, i32* %bottom_weight.addr, align 4
  %mul16 = mul i32 %conv15, %18
  %shr17 = lshr i32 %mul16, 4
  store i32 %shr17, i32* %arrayinit.element12
  %arrayinit.element18 = getelementptr inbounds i32, i32* %arrayinit.element12, i64 1
  %19 = load i8**, i8*** %src.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %22 = load i32, i32* %top_weight.addr, align 4
  %mul22 = mul i32 %conv21, %22
  %shr23 = lshr i32 %mul22, 4
  store i32 %shr23, i32* %arrayinit.element18
  %arrayinit.element24 = getelementptr inbounds i32, i32* %arrayinit.element18, i64 1
  %23 = load i8**, i8*** %src.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %23, i64 5
  %24 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %25 to i32
  %26 = load i32, i32* %middle_weight.addr, align 4
  %mul28 = mul i32 %conv27, %26
  %shr29 = lshr i32 %mul28, 4
  store i32 %shr29, i32* %arrayinit.element24
  %arrayinit.element30 = getelementptr inbounds i32, i32* %arrayinit.element24, i64 1
  %27 = load i8**, i8*** %src.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %27, i64 8
  %28 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %30 = load i32, i32* %bottom_weight.addr, align 4
  %mul34 = mul i32 %conv33, %30
  %shr35 = lshr i32 %mul34, 4
  store i32 %shr35, i32* %arrayinit.element30
  %arrayinit.element36 = getelementptr inbounds i32, i32* %arrayinit.element30, i64 1
  %31 = load i8**, i8*** %src.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %34 = load i32, i32* %top_weight.addr, align 4
  %mul40 = mul i32 %conv39, %34
  %shr41 = lshr i32 %mul40, 4
  store i32 %shr41, i32* %arrayinit.element36
  %arrayinit.element42 = getelementptr inbounds i32, i32* %arrayinit.element36, i64 1
  %35 = load i8**, i8*** %src.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %35, i64 3
  %36 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %38 = load i32, i32* %middle_weight.addr, align 4
  %mul46 = mul i32 %conv45, %38
  %shr47 = lshr i32 %mul46, 4
  store i32 %shr47, i32* %arrayinit.element42
  %arrayinit.element48 = getelementptr inbounds i32, i32* %arrayinit.element42, i64 1
  %39 = load i8**, i8*** %src.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %39, i64 6
  %40 = load i8*, i8** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %41 to i32
  %42 = load i32, i32* %bottom_weight.addr, align 4
  %mul52 = mul i32 %conv51, %42
  %shr53 = lshr i32 %mul52, 4
  store i32 %shr53, i32* %arrayinit.element48
  %43 = load i32, i32* %center_weight.addr, align 4
  %arrayidx54 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 0
  %44 = load i32, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 1
  %45 = load i32, i32* %arrayidx55, align 4
  %add56 = add i32 %44, %45
  %arrayidx57 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 2
  %46 = load i32, i32* %arrayidx57, align 4
  %add58 = add i32 %add56, %46
  %mul59 = mul i32 %43, %add58
  %47 = load i32, i32* %right_weight.addr, align 4
  %arrayidx60 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 3
  %48 = load i32, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 4
  %49 = load i32, i32* %arrayidx61, align 4
  %add62 = add i32 %48, %49
  %arrayidx63 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 5
  %50 = load i32, i32* %arrayidx63, align 4
  %add64 = add i32 %add62, %50
  %mul65 = mul i32 %47, %add64
  %add66 = add i32 %mul59, %mul65
  %51 = load i32, i32* %left_weight.addr, align 4
  %arrayidx67 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 6
  %52 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 7
  %53 = load i32, i32* %arrayidx68, align 4
  %add69 = add i32 %52, %53
  %arrayidx70 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 8
  %54 = load i32, i32* %arrayidx70, align 4
  %add71 = add i32 %add69, %54
  %mul72 = mul i32 %51, %add71
  %add73 = add i32 %add66, %mul72
  store i32 %add73, i32* %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %55 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %55, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %center_weight.addr, align 4
  %arrayidx75 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 0
  %57 = load i32, i32* %arrayidx75, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom = zext i32 %58 to i64
  %59 = load i8**, i8*** %src.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %59, i64 1
  %60 = load i8*, i8** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %61 to i32
  %mul79 = mul i32 %57, %conv78
  %arrayidx80 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 1
  %62 = load i32, i32* %arrayidx80, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom81 = zext i32 %63 to i64
  %64 = load i8**, i8*** %src.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %64, i64 4
  %65 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %65, i64 %idxprom81
  %66 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %66 to i32
  %mul85 = mul i32 %62, %conv84
  %add86 = add i32 %mul79, %mul85
  %arrayidx87 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 2
  %67 = load i32, i32* %arrayidx87, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom88 = zext i32 %68 to i64
  %69 = load i8**, i8*** %src.addr, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %69, i64 7
  %70 = load i8*, i8** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %70, i64 %idxprom88
  %71 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %71 to i32
  %mul92 = mul i32 %67, %conv91
  %add93 = add i32 %add86, %mul92
  %mul94 = mul i32 %56, %add93
  %72 = load i32, i32* %right_weight.addr, align 4
  %arrayidx95 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 3
  %73 = load i32, i32* %arrayidx95, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %74 to i64
  %75 = load i8**, i8*** %src.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %75, i64 2
  %76 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %76, i64 %idxprom96
  %77 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %77 to i32
  %mul100 = mul i32 %73, %conv99
  %arrayidx101 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 4
  %78 = load i32, i32* %arrayidx101, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom102 = zext i32 %79 to i64
  %80 = load i8**, i8*** %src.addr, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %80, i64 5
  %81 = load i8*, i8** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %81, i64 %idxprom102
  %82 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %82 to i32
  %mul106 = mul i32 %78, %conv105
  %add107 = add i32 %mul100, %mul106
  %arrayidx108 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 5
  %83 = load i32, i32* %arrayidx108, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom109 = zext i32 %84 to i64
  %85 = load i8**, i8*** %src.addr, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %85, i64 8
  %86 = load i8*, i8** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %86, i64 %idxprom109
  %87 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %87 to i32
  %mul113 = mul i32 %83, %conv112
  %add114 = add i32 %add107, %mul113
  %mul115 = mul i32 %72, %add114
  %add116 = add i32 %mul94, %mul115
  %88 = load i32, i32* %left_weight.addr, align 4
  %arrayidx117 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 6
  %89 = load i32, i32* %arrayidx117, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom118 = zext i32 %90 to i64
  %91 = load i8**, i8*** %src.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %91, i64 0
  %92 = load i8*, i8** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %92, i64 %idxprom118
  %93 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %93 to i32
  %mul122 = mul i32 %89, %conv121
  %arrayidx123 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 7
  %94 = load i32, i32* %arrayidx123, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom124 = zext i32 %95 to i64
  %96 = load i8**, i8*** %src.addr, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %96, i64 3
  %97 = load i8*, i8** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %97, i64 %idxprom124
  %98 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %98 to i32
  %mul128 = mul i32 %94, %conv127
  %add129 = add i32 %mul122, %mul128
  %arrayidx130 = getelementptr inbounds [9 x i32], [9 x i32]* %factors, i32 0, i64 8
  %99 = load i32, i32* %arrayidx130, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom131 = zext i32 %100 to i64
  %101 = load i8**, i8*** %src.addr, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %101, i64 6
  %102 = load i8*, i8** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %102, i64 %idxprom131
  %103 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %103 to i32
  %mul135 = mul i32 %99, %conv134
  %add136 = add i32 %add129, %mul135
  %mul137 = mul i32 %88, %add136
  %add138 = add i32 %add116, %mul137
  %104 = load i32, i32* %sum, align 4
  %mul139 = mul i32 255, %104
  %shr140 = lshr i32 %mul139, 1
  %add141 = add i32 %add138, %shr140
  %105 = load i32, i32* %sum, align 4
  %mul142 = mul i32 255, %105
  %div = udiv i32 %add141, %mul142
  %conv143 = trunc i32 %div to i8
  %106 = load i32, i32* %i, align 4
  %idxprom144 = zext i32 %106 to i64
  %107 = load i8*, i8** %dest.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %107, i64 %idxprom144
  store i8 %conv143, i8* %arrayidx145, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %108 = load i32, i32* %i, align 4
  %inc = add i32 %108, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = load i32, i32* %a, align 4
  %110 = load i32, i32* %sum, align 4
  %shr146 = lshr i32 %110, 1
  %add147 = add i32 %109, %shr146
  %111 = load i32, i32* %sum, align 4
  %div148 = udiv i32 %add147, %111
  %conv149 = trunc i32 %div148 to i8
  %112 = load i8*, i8** %dest.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %112, i64 3
  store i8 %conv149, i8* %arrayidx150, align 1
  br label %sw.epilog

sw.bb.151:                                        ; preds = %entry
  %arrayinit.begin153 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i64 0, i64 0
  %113 = load i8**, i8*** %src.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %113, i64 1
  %114 = load i8*, i8** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %115 to i32
  %116 = load i32, i32* %top_weight.addr, align 4
  %mul157 = mul i32 %conv156, %116
  %shr158 = lshr i32 %mul157, 4
  store i32 %shr158, i32* %arrayinit.begin153
  %arrayinit.element159 = getelementptr inbounds i32, i32* %arrayinit.begin153, i64 1
  %117 = load i8**, i8*** %src.addr, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %117, i64 4
  %118 = load i8*, i8** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %119 to i32
  %120 = load i32, i32* %middle_weight.addr, align 4
  %mul163 = mul i32 %conv162, %120
  %shr164 = lshr i32 %mul163, 4
  store i32 %shr164, i32* %arrayinit.element159
  %arrayinit.element165 = getelementptr inbounds i32, i32* %arrayinit.element159, i64 1
  %121 = load i8**, i8*** %src.addr, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %121, i64 7
  %122 = load i8*, i8** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %123 to i32
  %124 = load i32, i32* %bottom_weight.addr, align 4
  %mul169 = mul i32 %conv168, %124
  %shr170 = lshr i32 %mul169, 4
  store i32 %shr170, i32* %arrayinit.element165
  %arrayinit.element171 = getelementptr inbounds i32, i32* %arrayinit.element165, i64 1
  %125 = load i8**, i8*** %src.addr, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %125, i64 2
  %126 = load i8*, i8** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %127 to i32
  %128 = load i32, i32* %top_weight.addr, align 4
  %mul175 = mul i32 %conv174, %128
  %shr176 = lshr i32 %mul175, 4
  store i32 %shr176, i32* %arrayinit.element171
  %arrayinit.element177 = getelementptr inbounds i32, i32* %arrayinit.element171, i64 1
  %129 = load i8**, i8*** %src.addr, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %129, i64 5
  %130 = load i8*, i8** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %131 to i32
  %132 = load i32, i32* %middle_weight.addr, align 4
  %mul181 = mul i32 %conv180, %132
  %shr182 = lshr i32 %mul181, 4
  store i32 %shr182, i32* %arrayinit.element177
  %arrayinit.element183 = getelementptr inbounds i32, i32* %arrayinit.element177, i64 1
  %133 = load i8**, i8*** %src.addr, align 8
  %arrayidx184 = getelementptr inbounds i8*, i8** %133, i64 8
  %134 = load i8*, i8** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %134, i64 1
  %135 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %135 to i32
  %136 = load i32, i32* %bottom_weight.addr, align 4
  %mul187 = mul i32 %conv186, %136
  %shr188 = lshr i32 %mul187, 4
  store i32 %shr188, i32* %arrayinit.element183
  %arrayinit.element189 = getelementptr inbounds i32, i32* %arrayinit.element183, i64 1
  %137 = load i8**, i8*** %src.addr, align 8
  %arrayidx190 = getelementptr inbounds i8*, i8** %137, i64 0
  %138 = load i8*, i8** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %139 to i32
  %140 = load i32, i32* %top_weight.addr, align 4
  %mul193 = mul i32 %conv192, %140
  %shr194 = lshr i32 %mul193, 4
  store i32 %shr194, i32* %arrayinit.element189
  %arrayinit.element195 = getelementptr inbounds i32, i32* %arrayinit.element189, i64 1
  %141 = load i8**, i8*** %src.addr, align 8
  %arrayidx196 = getelementptr inbounds i8*, i8** %141, i64 3
  %142 = load i8*, i8** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %143 to i32
  %144 = load i32, i32* %middle_weight.addr, align 4
  %mul199 = mul i32 %conv198, %144
  %shr200 = lshr i32 %mul199, 4
  store i32 %shr200, i32* %arrayinit.element195
  %arrayinit.element201 = getelementptr inbounds i32, i32* %arrayinit.element195, i64 1
  %145 = load i8**, i8*** %src.addr, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %145, i64 6
  %146 = load i8*, i8** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %147 to i32
  %148 = load i32, i32* %bottom_weight.addr, align 4
  %mul205 = mul i32 %conv204, %148
  %shr206 = lshr i32 %mul205, 4
  store i32 %shr206, i32* %arrayinit.element201
  %149 = load i32, i32* %center_weight.addr, align 4
  %arrayidx208 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 0
  %150 = load i32, i32* %arrayidx208, align 4
  %arrayidx209 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 1
  %151 = load i32, i32* %arrayidx209, align 4
  %add210 = add i32 %150, %151
  %arrayidx211 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 2
  %152 = load i32, i32* %arrayidx211, align 4
  %add212 = add i32 %add210, %152
  %mul213 = mul i32 %149, %add212
  %153 = load i32, i32* %right_weight.addr, align 4
  %arrayidx214 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 3
  %154 = load i32, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 4
  %155 = load i32, i32* %arrayidx215, align 4
  %add216 = add i32 %154, %155
  %arrayidx217 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 5
  %156 = load i32, i32* %arrayidx217, align 4
  %add218 = add i32 %add216, %156
  %mul219 = mul i32 %153, %add218
  %add220 = add i32 %mul213, %mul219
  %157 = load i32, i32* %left_weight.addr, align 4
  %arrayidx221 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 6
  %158 = load i32, i32* %arrayidx221, align 4
  %arrayidx222 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 7
  %159 = load i32, i32* %arrayidx222, align 4
  %add223 = add i32 %158, %159
  %arrayidx224 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 8
  %160 = load i32, i32* %arrayidx224, align 4
  %add225 = add i32 %add223, %160
  %mul226 = mul i32 %157, %add225
  %add227 = add i32 %add220, %mul226
  store i32 %add227, i32* %a207, align 4
  store i32 0, i32* %i228, align 4
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.306, %sw.bb.151
  %161 = load i32, i32* %i228, align 4
  %cmp230 = icmp ult i32 %161, 1
  br i1 %cmp230, label %for.body.232, label %for.end.308

for.body.232:                                     ; preds = %for.cond.229
  %162 = load i32, i32* %center_weight.addr, align 4
  %arrayidx233 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 0
  %163 = load i32, i32* %arrayidx233, align 4
  %164 = load i32, i32* %i228, align 4
  %idxprom234 = zext i32 %164 to i64
  %165 = load i8**, i8*** %src.addr, align 8
  %arrayidx235 = getelementptr inbounds i8*, i8** %165, i64 1
  %166 = load i8*, i8** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %166, i64 %idxprom234
  %167 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %167 to i32
  %mul238 = mul i32 %163, %conv237
  %arrayidx239 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 1
  %168 = load i32, i32* %arrayidx239, align 4
  %169 = load i32, i32* %i228, align 4
  %idxprom240 = zext i32 %169 to i64
  %170 = load i8**, i8*** %src.addr, align 8
  %arrayidx241 = getelementptr inbounds i8*, i8** %170, i64 4
  %171 = load i8*, i8** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %171, i64 %idxprom240
  %172 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %172 to i32
  %mul244 = mul i32 %168, %conv243
  %add245 = add i32 %mul238, %mul244
  %arrayidx246 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 2
  %173 = load i32, i32* %arrayidx246, align 4
  %174 = load i32, i32* %i228, align 4
  %idxprom247 = zext i32 %174 to i64
  %175 = load i8**, i8*** %src.addr, align 8
  %arrayidx248 = getelementptr inbounds i8*, i8** %175, i64 7
  %176 = load i8*, i8** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %176, i64 %idxprom247
  %177 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %177 to i32
  %mul251 = mul i32 %173, %conv250
  %add252 = add i32 %add245, %mul251
  %mul253 = mul i32 %162, %add252
  %178 = load i32, i32* %right_weight.addr, align 4
  %arrayidx254 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 3
  %179 = load i32, i32* %arrayidx254, align 4
  %180 = load i32, i32* %i228, align 4
  %idxprom255 = zext i32 %180 to i64
  %181 = load i8**, i8*** %src.addr, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %181, i64 2
  %182 = load i8*, i8** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %182, i64 %idxprom255
  %183 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %183 to i32
  %mul259 = mul i32 %179, %conv258
  %arrayidx260 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 4
  %184 = load i32, i32* %arrayidx260, align 4
  %185 = load i32, i32* %i228, align 4
  %idxprom261 = zext i32 %185 to i64
  %186 = load i8**, i8*** %src.addr, align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %186, i64 5
  %187 = load i8*, i8** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %187, i64 %idxprom261
  %188 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %188 to i32
  %mul265 = mul i32 %184, %conv264
  %add266 = add i32 %mul259, %mul265
  %arrayidx267 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 5
  %189 = load i32, i32* %arrayidx267, align 4
  %190 = load i32, i32* %i228, align 4
  %idxprom268 = zext i32 %190 to i64
  %191 = load i8**, i8*** %src.addr, align 8
  %arrayidx269 = getelementptr inbounds i8*, i8** %191, i64 8
  %192 = load i8*, i8** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %192, i64 %idxprom268
  %193 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %193 to i32
  %mul272 = mul i32 %189, %conv271
  %add273 = add i32 %add266, %mul272
  %mul274 = mul i32 %178, %add273
  %add275 = add i32 %mul253, %mul274
  %194 = load i32, i32* %left_weight.addr, align 4
  %arrayidx276 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 6
  %195 = load i32, i32* %arrayidx276, align 4
  %196 = load i32, i32* %i228, align 4
  %idxprom277 = zext i32 %196 to i64
  %197 = load i8**, i8*** %src.addr, align 8
  %arrayidx278 = getelementptr inbounds i8*, i8** %197, i64 0
  %198 = load i8*, i8** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i8, i8* %198, i64 %idxprom277
  %199 = load i8, i8* %arrayidx279, align 1
  %conv280 = zext i8 %199 to i32
  %mul281 = mul i32 %195, %conv280
  %arrayidx282 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 7
  %200 = load i32, i32* %arrayidx282, align 4
  %201 = load i32, i32* %i228, align 4
  %idxprom283 = zext i32 %201 to i64
  %202 = load i8**, i8*** %src.addr, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %202, i64 3
  %203 = load i8*, i8** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %203, i64 %idxprom283
  %204 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %204 to i32
  %mul287 = mul i32 %200, %conv286
  %add288 = add i32 %mul281, %mul287
  %arrayidx289 = getelementptr inbounds [9 x i32], [9 x i32]* %factors152, i32 0, i64 8
  %205 = load i32, i32* %arrayidx289, align 4
  %206 = load i32, i32* %i228, align 4
  %idxprom290 = zext i32 %206 to i64
  %207 = load i8**, i8*** %src.addr, align 8
  %arrayidx291 = getelementptr inbounds i8*, i8** %207, i64 6
  %208 = load i8*, i8** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %208, i64 %idxprom290
  %209 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %209 to i32
  %mul294 = mul i32 %205, %conv293
  %add295 = add i32 %add288, %mul294
  %mul296 = mul i32 %194, %add295
  %add297 = add i32 %add275, %mul296
  %210 = load i32, i32* %sum, align 4
  %mul298 = mul i32 255, %210
  %shr299 = lshr i32 %mul298, 1
  %add300 = add i32 %add297, %shr299
  %211 = load i32, i32* %sum, align 4
  %mul301 = mul i32 %211, 255
  %div302 = udiv i32 %add300, %mul301
  %conv303 = trunc i32 %div302 to i8
  %212 = load i32, i32* %i228, align 4
  %idxprom304 = zext i32 %212 to i64
  %213 = load i8*, i8** %dest.addr, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %213, i64 %idxprom304
  store i8 %conv303, i8* %arrayidx305, align 1
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.232
  %214 = load i32, i32* %i228, align 4
  %inc307 = add i32 %214, 1
  store i32 %inc307, i32* %i228, align 4
  br label %for.cond.229

for.end.308:                                      ; preds = %for.cond.229
  %215 = load i32, i32* %a207, align 4
  %216 = load i32, i32* %sum, align 4
  %shr309 = lshr i32 %216, 1
  %add310 = add i32 %215, %shr309
  %217 = load i32, i32* %sum, align 4
  %div311 = udiv i32 %add310, %217
  %conv312 = trunc i32 %div311 to i8
  %218 = load i8*, i8** %dest.addr, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %218, i64 1
  store i8 %conv312, i8* %arrayidx313, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %219 = load i32, i32* %bpp.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 %219)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.308, %for.end
  ret void
}

declare void @tile_release(%struct._Tile*, i32) #3

declare void @gimp_display_shell_scroll_get_render_start_offset(%struct._GimpDisplayShell*, i32*, i32*) #3

declare void @cairo_surface_flush(%struct._cairo_surface*) #3

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
