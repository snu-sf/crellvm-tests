; ModuleID = './app/display/gimpdisplayshell-draw.bc'
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
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._TileManager = type opaque
%struct._cairo = type opaque
%struct._GimpSegment = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_draw_get_scaled_image_size = private unnamed_addr constant [46 x i8] c"gimp_display_shell_draw_get_scaled_image_size\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale = private unnamed_addr constant [56 x i8] c"gimp_display_shell_draw_get_scaled_image_size_for_scale\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_display_shell_draw_selection_out = private unnamed_addr constant [38 x i8] c"gimp_display_shell_draw_selection_out\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"segs != NULL && n_segs > 0\00", align 1
@__func__.gimp_display_shell_draw_selection_in = private unnamed_addr constant [37 x i8] c"gimp_display_shell_draw_selection_in\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@__func__.gimp_display_shell_draw_image = private unnamed_addr constant [30 x i8] c"gimp_display_shell_draw_image\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"gimp_display_get_image (shell->display)\00", align 1
@__func__.gimp_display_shell_draw_checkerboard = private unnamed_addr constant [37 x i8] c"gimp_display_shell_draw_checkerboard\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"transparency-size\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"transparency-type\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %shell, i32* %w, i32* %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %w.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %w, i32** %w.addr, align 8
  store i32* %h, i32** %h.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_display_shell_draw_get_scaled_image_size, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 22
  %15 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call11 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %15)
  %16 = load i32*, i32** %w.addr, align 8
  %17 = load i32*, i32** %h.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size_for_scale(%struct._GimpDisplayShell* %13, double %call11, i32* %16, i32* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_get_scaled_image_size_for_scale(%struct._GimpDisplayShell* %shell, double %scale, i32* %w, i32* %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale.addr = alloca double, align 8
  %w.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store i32* %w, i32** %w.addr, align 8
  store i32* %h, i32** %h.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.53

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #4
  store i64 %call17, i64* %__t16, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type27, align 8
  %23 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %22, %23
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %25 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #5
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %26 = load i32, i32* %__r19, align 4
  store i32 %26, i32* %tmp34
  %27 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__func__.gimp_display_shell_draw_get_scaled_image_size_for_scale, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.53

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call40 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %28)
  store %struct._GimpProjection* %call40, %struct._GimpProjection** %proj, align 8
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %30 = load double, double* %scale.addr, align 8
  call void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell* %29, double %30, double* %scale_x, double* %scale_y)
  %31 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %call41 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %31, i32 0, i32* null)
  store %struct._TileManager* %call41, %struct._TileManager** %tiles, align 8
  %32 = load i32*, i32** %w.addr, align 8
  %tobool42 = icmp ne i32* %32, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %do.end.39
  %33 = load double, double* %scale_x, align 8
  %34 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call44 = call i32 @tile_manager_width(%struct._TileManager* %34)
  %conv = sitofp i32 %call44 to double
  %mul = fmul double %33, %conv
  %conv45 = fptosi double %mul to i32
  %35 = load i32*, i32** %w.addr, align 8
  store i32 %conv45, i32* %35, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %do.end.39
  %36 = load i32*, i32** %h.addr, align 8
  %tobool47 = icmp ne i32* %36, null
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.46
  %37 = load double, double* %scale_y, align 8
  %38 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call49 = call i32 @tile_manager_height(%struct._TileManager* %38)
  %conv50 = sitofp i32 %call49 to double
  %mul51 = fmul double %37, %conv50
  %conv52 = fptosi double %mul51 to i32
  %39 = load i32*, i32** %h.addr, align 8
  store i32 %conv52, i32* %39, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.9, %if.else.37, %if.then.48, %if.end.46
  ret void
}

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

declare void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell*, double, double*, double*) #3

declare %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection*, i32, i32*) #3

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_selection_out(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr, %struct._GimpSegment* %segs, i32 %n_segs) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %segs.addr = alloca %struct._GimpSegment*, align 8
  %n_segs.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpSegment* %segs, %struct._GimpSegment** %segs.addr, align 8
  store i32 %n_segs, i32* %n_segs.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_draw_selection_out, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_draw_selection_out, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %cmp18 = icmp ne %struct._GimpSegment* %14, null
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.22

land.lhs.true.19:                                 ; preds = %do.body.17
  %15 = load i32, i32* %n_segs.addr, align 4
  %cmp20 = icmp sgt i32 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.19
  br label %if.end.23

if.else.22:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_draw_selection_out, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_selection_out_style(%struct._GimpDisplayShell* %16, %struct._cairo* %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %19 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %20 = load i32, i32* %n_segs.addr, align 4
  call void @gimp_cairo_add_segments(%struct._cairo* %18, %struct._GimpSegment* %19, i32 %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %21)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_display_shell_set_selection_out_style(%struct._GimpDisplayShell*, %struct._cairo*) #3

declare void @gimp_cairo_add_segments(%struct._cairo*, %struct._GimpSegment*, i32) #3

declare void @cairo_stroke(%struct._cairo*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_selection_in(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr, %struct._cairo_pattern* %mask, i32 %index) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %mask.addr = alloca %struct._cairo_pattern*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._cairo_pattern* %mask, %struct._cairo_pattern** %mask.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_draw_selection_in, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_draw_selection_in, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._cairo_pattern*, %struct._cairo_pattern** %mask.addr, align 8
  %cmp18 = icmp ne %struct._cairo_pattern* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_draw_selection_in, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load i32, i32* %index.addr, align 4
  call void @gimp_display_shell_set_selection_in_style(%struct._GimpDisplayShell* %15, %struct._cairo* %16, i32 %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %19 = load %struct._cairo_pattern*, %struct._cairo_pattern** %mask.addr, align 8
  call void @cairo_mask(%struct._cairo* %18, %struct._cairo_pattern* %19)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_display_shell_set_selection_in_style(%struct._GimpDisplayShell*, %struct._cairo*, i32) #3

declare void @cairo_mask(%struct._cairo*, %struct._cairo_pattern*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_image(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %disp_xoffset = alloca i32, align 4
  %disp_yoffset = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
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
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_draw_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.47

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  %tobool13 = icmp ne %struct._GimpImage* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_draw_image, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end.47

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp19 = icmp ne %struct._cairo* %15, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_draw_image, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end.47

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %16, %17
  store i32 %add, i32* %x2, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %h.addr, align 4
  %add24 = add nsw i32 %18, %19
  store i32 %add24, i32* %y2, align 4
  %20 = load i32, i32* %y.addr, align 4
  store i32 %20, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %do.end.23
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %y2, align 4
  %cmp25 = icmp slt i32 %21, %22
  br i1 %cmp25, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  store i32 %23, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %x2, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %26, %27
  %cmp33 = icmp slt i32 %sub, 256
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.28
  %28 = load i32, i32* %x2, align 4
  %29 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %28, %29
  br label %cond.end

cond.false:                                       ; preds = %for.body.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub34, %cond.true ], [ 256, %cond.false ]
  store i32 %cond, i32* %dx, align 4
  %30 = load i32, i32* %y2, align 4
  %31 = load i32, i32* %i, align 4
  %sub35 = sub nsw i32 %30, %31
  %cmp36 = icmp slt i32 %sub35, 256
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end
  %32 = load i32, i32* %y2, align 4
  %33 = load i32, i32* %i, align 4
  %sub38 = sub nsw i32 %32, %33
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi i32 [ %sub38, %cond.true.37 ], [ 256, %cond.false.39 ]
  store i32 %cond41, i32* %dy, align 4
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_get_disp_offset(%struct._GimpDisplayShell* %34, i32* %disp_xoffset, i32* %disp_yoffset)
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %disp_xoffset, align 4
  %sub42 = sub nsw i32 %37, %38
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %disp_yoffset, align 4
  %sub43 = sub nsw i32 %39, %40
  %41 = load i32, i32* %dx, align 4
  %42 = load i32, i32* %dy, align 4
  call void @gimp_display_shell_render(%struct._GimpDisplayShell* %35, %struct._cairo* %36, i32 %sub42, i32 %sub43, i32 %41, i32 %42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.40
  %43 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %43, 256
  store i32 %add44, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %44 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %44, 256
  store i32 %add46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %if.else.9, %if.else.15, %if.else.21, %for.cond
  ret void
}

declare void @gimp_display_shell_scroll_get_disp_offset(%struct._GimpDisplayShell*, i32*, i32*) #3

declare void @gimp_display_shell_render(%struct._GimpDisplayShell*, %struct._cairo*, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_draw_checkerboard(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
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
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_draw_checkerboard, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_draw_checkerboard, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 47
  %15 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard, align 8
  %tobool17 = icmp ne %struct._cairo_pattern* %15, null
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %call19 = call %struct._cairo_pattern* @gimp_display_shell_create_checkerboard(%struct._GimpDisplayShell* %16, %struct._cairo* %17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 47
  store %struct._cairo_pattern* %call19, %struct._cairo_pattern** %checkerboard20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.end.16
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %20 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %20 to double
  %21 = load i32, i32* %y.addr, align 4
  %conv22 = sitofp i32 %21 to double
  %22 = load i32, i32* %w.addr, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load i32, i32* %h.addr, align 4
  %conv24 = sitofp i32 %23 to double
  call void @cairo_rectangle(%struct._cairo* %19, double %conv, double %conv22, double %conv23, double %conv24)
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %24)
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 11
  %27 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %27
  %conv25 = sitofp i32 %sub to double
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 12
  %29 = load i32, i32* %offset_y, align 4
  %sub26 = sub nsw i32 0, %29
  %conv27 = sitofp i32 %sub26 to double
  call void @cairo_translate(%struct._cairo* %25, double %conv25, double %conv27)
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard28 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 47
  %32 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard28, align 8
  call void @cairo_set_source(%struct._cairo* %30, %struct._cairo_pattern* %32)
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_paint(%struct._cairo* %33)
  br label %return

return:                                           ; preds = %if.end.21, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_pattern* @gimp_display_shell_create_checkerboard(%struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %check_size = alloca i32, align 4
  %check_type = alloca i32, align 4
  %check_light = alloca i8, align 1
  %check_dark = alloca i8, align 1
  %light = alloca %struct._GimpRGB, align 8
  %dark = alloca %struct._GimpRGB, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 2
  %2 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %3 = bitcast %struct._GimpDisplayConfig* %2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32* %check_size, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32* %check_type, i8* null)
  %4 = load i32, i32* %check_type, align 4
  call void @gimp_checks_get_shades(i32 %4, i8* %check_light, i8* %check_dark)
  %5 = load i8, i8* %check_light, align 1
  %6 = load i8, i8* %check_light, align 1
  %7 = load i8, i8* %check_light, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %light, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7)
  %8 = load i8, i8* %check_dark, align 1
  %9 = load i8, i8* %check_dark, align 1
  %10 = load i8, i8* %check_dark, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %dark, i8 zeroext %8, i8 zeroext %9, i8 zeroext %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load i32, i32* %check_size, align 4
  %add = add i32 %12, 2
  %shl = shl i32 1, %add
  %call = call %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo* %11, i32 %shl, %struct._GimpRGB* %light, %struct._GimpRGB* %dark)
  ret %struct._cairo_pattern* %call
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #3

declare void @cairo_clip(%struct._cairo*) #3

declare void @cairo_translate(%struct._cairo*, double, double) #3

declare void @cairo_set_source(%struct._cairo*, %struct._cairo_pattern*) #3

declare void @cairo_paint(%struct._cairo*) #3

declare void @g_object_get(i8*, i8*, ...) #3

declare void @gimp_checks_get_shades(i32, i8*, i8*) #3

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #3

declare %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo*, i32, %struct._GimpRGB*, %struct._GimpRGB*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
