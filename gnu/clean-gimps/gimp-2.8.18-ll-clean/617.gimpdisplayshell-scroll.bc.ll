; ModuleID = './app/display/gimpdisplayshell-scroll.bc'
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
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct.SizeAllocateCallbackData = type { %struct._GimpDisplayShell*, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_scroll = private unnamed_addr constant [26 x i8] c"gimp_display_shell_scroll\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_scroll_set_offset = private unnamed_addr constant [37 x i8] c"gimp_display_shell_scroll_set_offset\00", align 1
@__func__.gimp_display_shell_scroll_clamp_offsets = private unnamed_addr constant [40 x i8] c"gimp_display_shell_scroll_clamp_offsets\00", align 1
@__func__.gimp_display_shell_scroll_unoverscrollify = private unnamed_addr constant [42 x i8] c"gimp_display_shell_scroll_unoverscrollify\00", align 1
@__func__.gimp_display_shell_scroll_center_image = private unnamed_addr constant [39 x i8] c"gimp_display_shell_scroll_center_image\00", align 1
@__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate = private unnamed_addr constant [61 x i8] c"gimp_display_shell_scroll_center_image_on_next_size_allocate\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@__func__.gimp_display_shell_scroll_get_scaled_viewport = private unnamed_addr constant [46 x i8] c"gimp_display_shell_scroll_get_scaled_viewport\00", align 1
@__func__.gimp_display_shell_scroll_get_viewport = private unnamed_addr constant [39 x i8] c"gimp_display_shell_scroll_get_viewport\00", align 1
@__func__.gimp_display_shell_scroll_get_disp_offset = private unnamed_addr constant [42 x i8] c"gimp_display_shell_scroll_get_disp_offset\00", align 1
@__func__.gimp_display_shell_scroll_get_render_start_offset = private unnamed_addr constant [50 x i8] c"gimp_display_shell_scroll_get_render_start_offset\00", align 1
@__func__.gimp_display_shell_scroll_setup_hscrollbar = private unnamed_addr constant [43 x i8] c"gimp_display_shell_scroll_setup_hscrollbar\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"step-increment\00", align 1
@__func__.gimp_display_shell_scroll_setup_vscrollbar = private unnamed_addr constant [43 x i8] c"gimp_display_shell_scroll_setup_vscrollbar\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_center_image_coordinate(%struct._GimpDisplayShell* %shell, double %image_x, double %image_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image_x.addr = alloca double, align 8
  %image_y.addr = alloca double, align 8
  %scaled_image_x = alloca i32, align 4
  %scaled_image_y = alloca i32, align 4
  %offset_to_apply_x = alloca i32, align 4
  %offset_to_apply_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %image_x, double* %image_x.addr, align 8
  store double %image_y, double* %image_y.addr, align 8
  %0 = load double, double* %image_x.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 13
  %2 = load double, double* %scale_x, align 8
  %mul = fmul double %0, %2
  %call = call double @rint(double %mul) #4
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %scaled_image_x, align 4
  %3 = load double, double* %image_y.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 14
  %5 = load double, double* %scale_y, align 8
  %mul1 = fmul double %3, %5
  %call2 = call double @rint(double %mul1) #4
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* %scaled_image_y, align 4
  %6 = load i32, i32* %scaled_image_x, align 4
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 28
  %8 = load i32, i32* %disp_width, align 4
  %div = sdiv i32 %8, 2
  %sub = sub nsw i32 %6, %div
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 11
  %10 = load i32, i32* %offset_x, align 4
  %sub4 = sub nsw i32 %sub, %10
  store i32 %sub4, i32* %offset_to_apply_x, align 4
  %11 = load i32, i32* %scaled_image_y, align 4
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 29
  %13 = load i32, i32* %disp_height, align 4
  %div5 = sdiv i32 %13, 2
  %sub6 = sub nsw i32 %11, %div5
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 12
  %15 = load i32, i32* %offset_y, align 4
  %sub7 = sub nsw i32 %sub6, %15
  store i32 %sub7, i32* %offset_to_apply_y, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load i32, i32* %offset_to_apply_x, align 4
  %18 = load i32, i32* %offset_to_apply_y, align 4
  call void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %16, i32 %17, i32 %18)
  ret void
}

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %shell, i32 %x_offset, i32 %y_offset) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x_offset.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %old_x = alloca i32, align 4
  %old_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_scroll, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.35

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %x_offset.addr, align 4
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load i32, i32* %y_offset.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %if.end.35

if.end.15:                                        ; preds = %land.lhs.true.12, %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 11
  %16 = load i32, i32* %offset_x, align 4
  store i32 %16, i32* %old_x, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 12
  %18 = load i32, i32* %offset_y, align 4
  store i32 %18, i32* %old_y, align 4
  %19 = load i32, i32* %x_offset.addr, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 11
  %21 = load i32, i32* %offset_x16, align 4
  %add = add nsw i32 %21, %19
  store i32 %add, i32* %offset_x16, align 4
  %22 = load i32, i32* %y_offset.addr, align 4
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 12
  %24 = load i32, i32* %offset_y17, align 4
  %add18 = add nsw i32 %24, %22
  store i32 %add18, i32* %offset_y17, align 4
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_offsets(%struct._GimpDisplayShell* %25)
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 11
  %27 = load i32, i32* %offset_x19, align 4
  %28 = load i32, i32* %old_x, align 4
  %sub = sub nsw i32 %27, %28
  store i32 %sub, i32* %x_offset.addr, align 4
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 12
  %30 = load i32, i32* %offset_y20, align 4
  %31 = load i32, i32* %old_y, align 4
  %sub21 = sub nsw i32 %30, %31
  store i32 %sub21, i32* %y_offset.addr, align 4
  %32 = load i32, i32* %x_offset.addr, align 4
  %tobool22 = icmp ne i32 %32, 0
  br i1 %tobool22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %33 = load i32, i32* %y_offset.addr, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.15
  %34 = load i32, i32* %old_x, align 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 11
  store i32 %34, i32* %offset_x25, align 4
  %36 = load i32, i32* %old_y, align 4
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 12
  store i32 %36, i32* %offset_y26, align 4
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pause(%struct._GimpDisplayShell* %38)
  %39 = load i32, i32* %x_offset.addr, align 4
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 11
  %41 = load i32, i32* %offset_x27, align 4
  %add28 = add nsw i32 %41, %39
  store i32 %add28, i32* %offset_x27, align 4
  %42 = load i32, i32* %y_offset.addr, align 4
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 12
  %44 = load i32, i32* %offset_y29, align 4
  %add30 = add nsw i32 %44, %42
  store i32 %add30, i32* %offset_y29, align 4
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 33
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_overlay_box_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call31)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpOverlayBox*
  %49 = load i32, i32* %x_offset.addr, align 4
  %sub33 = sub nsw i32 0, %49
  %50 = load i32, i32* %y_offset.addr, align 4
  %sub34 = sub nsw i32 0, %50
  call void @gimp_overlay_box_scroll(%struct._GimpOverlayBox* %48, i32 %sub33, i32 %sub34)
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_update_scrollbars_and_rulers(%struct._GimpDisplayShell* %51)
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_resume(%struct._GimpDisplayShell* %52)
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scrolled(%struct._GimpDisplayShell* %53)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.9, %if.then.14, %if.then.24, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_clamp_offsets(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %min_offset_x = alloca i32, align 4
  %max_offset_x = alloca i32, align 4
  %min_offset_y = alloca i32, align 4
  %max_offset_y = alloca i32, align 4
  %overpan_amount = alloca i32, align 4
  %overpan_amount69 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_display_shell_scroll_clamp_offsets, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.136

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool12, label %if.then.13, label %if.else.133

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_width(%struct._GimpImage* %16)
  %conv = sitofp i32 %call20 to double
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 13
  %18 = load double, double* %scale_x, align 8
  %mul = fmul double %conv, %18
  %call21 = call double @rint(double %mul) #4
  %conv22 = fptosi double %call21 to i32
  store i32 %conv22, i32* %sw, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  %conv24 = sitofp i32 %call23 to double
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 14
  %21 = load double, double* %scale_y, align 8
  %mul25 = fmul double %conv24, %21
  %call26 = call double @rint(double %mul25) #4
  %conv27 = fptosi double %call26 to i32
  store i32 %conv27, i32* %sh, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 28
  %23 = load i32, i32* %disp_width, align 4
  %24 = load i32, i32* %sw, align 4
  %cmp28 = icmp slt i32 %23, %24
  br i1 %cmp28, label %if.then.30, label %if.else.41

if.then.30:                                       ; preds = %if.then.13
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 28
  %26 = load i32, i32* %disp_width31, align 4
  %conv32 = sitofp i32 %26 to double
  %mul33 = fmul double %conv32, 5.000000e-01
  %sub = fsub double 0.000000e+00, %mul33
  %conv34 = fptosi double %sub to i32
  store i32 %conv34, i32* %min_offset_x, align 4
  %27 = load i32, i32* %sw, align 4
  %conv35 = sitofp i32 %27 to double
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width36 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 28
  %29 = load i32, i32* %disp_width36, align 4
  %conv37 = sitofp i32 %29 to double
  %mul38 = fmul double %conv37, 5.000000e-01
  %sub39 = fsub double %conv35, %mul38
  %conv40 = fptosi double %sub39 to i32
  store i32 %conv40, i32* %max_offset_x, align 4
  br label %if.end.52

if.else.41:                                       ; preds = %if.then.13
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 28
  %31 = load i32, i32* %disp_width43, align 4
  %conv44 = sitofp i32 %31 to double
  %32 = load i32, i32* %sw, align 4
  %conv45 = sitofp i32 %32 to double
  %mul46 = fmul double %conv45, 5.000000e-01
  %sub47 = fsub double %conv44, %mul46
  %conv48 = fptosi double %sub47 to i32
  store i32 %conv48, i32* %overpan_amount, align 4
  %33 = load i32, i32* %overpan_amount, align 4
  %sub49 = sub nsw i32 0, %33
  store i32 %sub49, i32* %min_offset_x, align 4
  %34 = load i32, i32* %sw, align 4
  %35 = load i32, i32* %overpan_amount, align 4
  %add = add nsw i32 %34, %35
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 28
  %37 = load i32, i32* %disp_width50, align 4
  %sub51 = sub nsw i32 %add, %37
  store i32 %sub51, i32* %max_offset_x, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.41, %if.then.30
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 29
  %39 = load i32, i32* %disp_height, align 4
  %40 = load i32, i32* %sh, align 4
  %cmp53 = icmp slt i32 %39, %40
  br i1 %cmp53, label %if.then.55, label %if.else.67

if.then.55:                                       ; preds = %if.end.52
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height56 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 29
  %42 = load i32, i32* %disp_height56, align 4
  %conv57 = sitofp i32 %42 to double
  %mul58 = fmul double %conv57, 5.000000e-01
  %sub59 = fsub double 0.000000e+00, %mul58
  %conv60 = fptosi double %sub59 to i32
  store i32 %conv60, i32* %min_offset_y, align 4
  %43 = load i32, i32* %sh, align 4
  %conv61 = sitofp i32 %43 to double
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 29
  %45 = load i32, i32* %disp_height62, align 4
  %conv63 = sitofp i32 %45 to double
  %mul64 = fmul double %conv63, 5.000000e-01
  %sub65 = fsub double %conv61, %mul64
  %conv66 = fptosi double %sub65 to i32
  store i32 %conv66, i32* %max_offset_y, align 4
  br label %if.end.80

if.else.67:                                       ; preds = %if.end.52
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height70 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 29
  %47 = load i32, i32* %disp_height70, align 4
  %conv71 = sitofp i32 %47 to double
  %48 = load i32, i32* %sh, align 4
  %conv72 = sitofp i32 %48 to double
  %mul73 = fmul double %conv72, 5.000000e-01
  %sub74 = fsub double %conv71, %mul73
  %conv75 = fptosi double %sub74 to i32
  store i32 %conv75, i32* %overpan_amount69, align 4
  %49 = load i32, i32* %overpan_amount69, align 4
  %sub76 = sub nsw i32 0, %49
  store i32 %sub76, i32* %min_offset_y, align 4
  %50 = load i32, i32* %sh, align 4
  %51 = load i32, i32* %overpan_amount69, align 4
  %add77 = add nsw i32 %50, %51
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height78 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 29
  %53 = load i32, i32* %disp_height78, align 4
  %sub79 = sub nsw i32 %add77, %53
  store i32 %sub79, i32* %max_offset_y, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.67, %if.then.55
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 36
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_range_get_type() #4
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call81)
  %57 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkRange*
  %58 = load i32, i32* %min_offset_x, align 4
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 11
  %60 = load i32, i32* %offset_x, align 4
  %cmp83 = icmp slt i32 %58, %60
  %cond = select i1 %cmp83, i32 1, i32 2
  call void @gtk_range_set_lower_stepper_sensitivity(%struct._GtkRange* %57, i32 %cond)
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsb85 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 36
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb85, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_range_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call86)
  %64 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkRange*
  %65 = load i32, i32* %max_offset_x, align 4
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x88 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 11
  %67 = load i32, i32* %offset_x88, align 4
  %cmp89 = icmp sgt i32 %65, %67
  %cond91 = select i1 %cmp89, i32 1, i32 2
  call void @gtk_range_set_upper_stepper_sensitivity(%struct._GtkRange* %64, i32 %cond91)
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %68, i32 0, i32 37
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_range_get_type() #4
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call92)
  %71 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkRange*
  %72 = load i32, i32* %min_offset_y, align 4
  %73 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %73, i32 0, i32 12
  %74 = load i32, i32* %offset_y, align 4
  %cmp94 = icmp slt i32 %72, %74
  %cond96 = select i1 %cmp94, i32 1, i32 2
  call void @gtk_range_set_lower_stepper_sensitivity(%struct._GtkRange* %71, i32 %cond96)
  %75 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsb97 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %75, i32 0, i32 37
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb97, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_range_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call98)
  %78 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkRange*
  %79 = load i32, i32* %max_offset_y, align 4
  %80 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y100 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %80, i32 0, i32 12
  %81 = load i32, i32* %offset_y100, align 4
  %cmp101 = icmp sgt i32 %79, %81
  %cond103 = select i1 %cmp101, i32 1, i32 2
  call void @gtk_range_set_upper_stepper_sensitivity(%struct._GtkRange* %78, i32 %cond103)
  %82 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x104 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %82, i32 0, i32 11
  %83 = load i32, i32* %offset_x104, align 4
  %84 = load i32, i32* %max_offset_x, align 4
  %cmp105 = icmp sgt i32 %83, %84
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %85 = load i32, i32* %max_offset_x, align 4
  br label %cond.end.114

cond.false:                                       ; preds = %if.end.80
  %86 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x107 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %86, i32 0, i32 11
  %87 = load i32, i32* %offset_x107, align 4
  %88 = load i32, i32* %min_offset_x, align 4
  %cmp108 = icmp slt i32 %87, %88
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.false
  %89 = load i32, i32* %min_offset_x, align 4
  br label %cond.end

cond.false.111:                                   ; preds = %cond.false
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x112 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %90, i32 0, i32 11
  %91 = load i32, i32* %offset_x112, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.111, %cond.true.110
  %cond113 = phi i32 [ %89, %cond.true.110 ], [ %91, %cond.false.111 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end, %cond.true
  %cond115 = phi i32 [ %85, %cond.true ], [ %cond113, %cond.end ]
  %92 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x116 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %92, i32 0, i32 11
  store i32 %cond115, i32* %offset_x116, align 4
  %93 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y117 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %93, i32 0, i32 12
  %94 = load i32, i32* %offset_y117, align 4
  %95 = load i32, i32* %max_offset_y, align 4
  %cmp118 = icmp sgt i32 %94, %95
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.end.114
  %96 = load i32, i32* %max_offset_y, align 4
  br label %cond.end.130

cond.false.121:                                   ; preds = %cond.end.114
  %97 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y122 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %97, i32 0, i32 12
  %98 = load i32, i32* %offset_y122, align 4
  %99 = load i32, i32* %min_offset_y, align 4
  %cmp123 = icmp slt i32 %98, %99
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.false.121
  %100 = load i32, i32* %min_offset_y, align 4
  br label %cond.end.128

cond.false.126:                                   ; preds = %cond.false.121
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y127 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %101, i32 0, i32 12
  %102 = load i32, i32* %offset_y127, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.125
  %cond129 = phi i32 [ %100, %cond.true.125 ], [ %102, %cond.false.126 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.120
  %cond131 = phi i32 [ %96, %cond.true.120 ], [ %cond129, %cond.end.128 ]
  %103 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y132 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %103, i32 0, i32 12
  store i32 %cond131, i32* %offset_y132, align 4
  br label %if.end.136

if.else.133:                                      ; preds = %do.end
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x134 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %104, i32 0, i32 11
  store i32 0, i32* %offset_x134, align 4
  %105 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y135 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %105, i32 0, i32 12
  store i32 0, i32* %offset_y135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.9, %if.else.133, %cond.end.130
  ret void
}

declare void @gimp_display_shell_pause(%struct._GimpDisplayShell*) #3

declare void @gimp_overlay_box_scroll(%struct._GimpOverlayBox*, i32, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_box_get_type() #1

declare void @gimp_display_shell_update_scrollbars_and_rulers(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_resume(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scrolled(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell* %shell, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_scroll_set_offset, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 11
  %14 = load i32, i32* %offset_x11, align 4
  %15 = load i32, i32* %offset_x.addr, align 4
  %cmp12 = icmp eq i32 %14, %15
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 12
  %17 = load i32, i32* %offset_y14, align 4
  %18 = load i32, i32* %offset_y.addr, align 4
  %cmp15 = icmp eq i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.13, %do.end
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_handle_zoom_revert(%struct._GimpDisplayShell* %19)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pause(%struct._GimpDisplayShell* %20)
  %21 = load i32, i32* %offset_x.addr, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 11
  store i32 %21, i32* %offset_x18, align 4
  %23 = load i32, i32* %offset_y.addr, align 4
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 12
  store i32 %23, i32* %offset_y19, align 4
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %25)
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scrolled(%struct._GimpDisplayShell* %26)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %27)
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_resume(%struct._GimpDisplayShell* %28)
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.else.9
  ret void
}

declare void @gimp_display_shell_scale_handle_zoom_revert(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_offsets(%struct._GimpDisplayShell* %0)
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_update_scrollbars_and_rulers(%struct._GimpDisplayShell* %1)
  ret void
}

declare void @gimp_display_shell_expose_full(%struct._GimpDisplayShell*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gtk_range_set_lower_stepper_sensitivity(%struct._GtkRange*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #1

declare void @gtk_range_set_upper_stepper_sensitivity(%struct._GtkRange*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_unoverscrollify(%struct._GimpDisplayShell* %shell, i32 %in_offset_x, i32 %in_offset_y, i32* %out_offset_x, i32* %out_offset_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %in_offset_x.addr = alloca i32, align 4
  %in_offset_y.addr = alloca i32, align 4
  %out_offset_x.addr = alloca i32*, align 8
  %out_offset_y.addr = alloca i32*, align 8
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %out_offset_x_dummy = alloca i32, align 4
  %out_offset_y_dummy = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %min_offset = alloca i32, align 4
  %min_offset94 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %in_offset_x, i32* %in_offset_x.addr, align 4
  store i32 %in_offset_y, i32* %in_offset_y.addr, align 4
  store i32* %out_offset_x, i32** %out_offset_x.addr, align 8
  store i32* %out_offset_y, i32** %out_offset_y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_display_shell_scroll_unoverscrollify, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.120

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %out_offset_x.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32* %out_offset_x_dummy, i32** %out_offset_x.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %14 = load i32*, i32** %out_offset_y.addr, align 8
  %tobool14 = icmp ne i32* %14, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i32* %out_offset_y_dummy, i32** %out_offset_y.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %15 = load i32, i32* %in_offset_x.addr, align 4
  %16 = load i32*, i32** %out_offset_x.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %in_offset_y.addr, align 4
  %18 = load i32*, i32** %out_offset_y.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %19, i32* %sw, i32* %sh)
  %20 = load i32, i32* %in_offset_x.addr, align 4
  %cmp17 = icmp slt i32 %20, 0
  br i1 %cmp17, label %if.then.18, label %if.else.36

if.then.18:                                       ; preds = %if.end.16
  %21 = load i32, i32* %in_offset_x.addr, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 11
  %23 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %23
  %cmp19 = icmp slt i32 0, %sub
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 11
  %25 = load i32, i32* %offset_x20, align 4
  %sub21 = sub nsw i32 0, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub21, %cond.false ]
  %cmp22 = icmp sgt i32 %21, %cond
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end
  %26 = load i32, i32* %in_offset_x.addr, align 4
  br label %cond.end.34

cond.false.24:                                    ; preds = %cond.end
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 11
  %28 = load i32, i32* %offset_x25, align 4
  %sub26 = sub nsw i32 0, %28
  %cmp27 = icmp slt i32 0, %sub26
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.24
  br label %cond.end.32

cond.false.29:                                    ; preds = %cond.false.24
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x30 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 11
  %30 = load i32, i32* %offset_x30, align 4
  %sub31 = sub nsw i32 0, %30
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i32 [ 0, %cond.true.28 ], [ %sub31, %cond.false.29 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.23
  %cond35 = phi i32 [ %26, %cond.true.23 ], [ %cond33, %cond.end.32 ]
  %31 = load i32*, i32** %out_offset_x.addr, align 8
  store i32 %cond35, i32* %31, align 4
  br label %if.end.65

if.else.36:                                       ; preds = %if.end.16
  %32 = load i32, i32* %in_offset_x.addr, align 4
  %cmp37 = icmp sgt i32 %32, 0
  br i1 %cmp37, label %if.then.38, label %if.end.64

if.then.38:                                       ; preds = %if.else.36
  %33 = load i32, i32* %sw, align 4
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 28
  %35 = load i32, i32* %disp_width, align 4
  %sub40 = sub nsw i32 %33, %35
  store i32 %sub40, i32* %min_offset, align 4
  %36 = load i32, i32* %in_offset_x.addr, align 4
  %37 = load i32, i32* %min_offset, align 4
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x41 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 11
  %39 = load i32, i32* %offset_x41, align 4
  %sub42 = sub nsw i32 %37, %39
  %cmp43 = icmp sgt i32 0, %sub42
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.38
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.38
  %40 = load i32, i32* %min_offset, align 4
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x46 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 11
  %42 = load i32, i32* %offset_x46, align 4
  %sub47 = sub nsw i32 %40, %42
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ 0, %cond.true.44 ], [ %sub47, %cond.false.45 ]
  %cmp50 = icmp slt i32 %36, %cond49
  br i1 %cmp50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.48
  %43 = load i32, i32* %in_offset_x.addr, align 4
  br label %cond.end.62

cond.false.52:                                    ; preds = %cond.end.48
  %44 = load i32, i32* %min_offset, align 4
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x53 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 11
  %46 = load i32, i32* %offset_x53, align 4
  %sub54 = sub nsw i32 %44, %46
  %cmp55 = icmp sgt i32 0, %sub54
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.52
  br label %cond.end.60

cond.false.57:                                    ; preds = %cond.false.52
  %47 = load i32, i32* %min_offset, align 4
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %48, i32 0, i32 11
  %49 = load i32, i32* %offset_x58, align 4
  %sub59 = sub nsw i32 %47, %49
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.56
  %cond61 = phi i32 [ 0, %cond.true.56 ], [ %sub59, %cond.false.57 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true.51
  %cond63 = phi i32 [ %43, %cond.true.51 ], [ %cond61, %cond.end.60 ]
  %50 = load i32*, i32** %out_offset_x.addr, align 8
  store i32 %cond63, i32* %50, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.62, %if.else.36
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %cond.end.34
  %51 = load i32, i32* %in_offset_y.addr, align 4
  %cmp66 = icmp slt i32 %51, 0
  br i1 %cmp66, label %if.then.67, label %if.else.90

if.then.67:                                       ; preds = %if.end.65
  %52 = load i32, i32* %in_offset_y.addr, align 4
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 12
  %54 = load i32, i32* %offset_y, align 4
  %sub68 = sub nsw i32 0, %54
  %cmp69 = icmp slt i32 0, %sub68
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.then.67
  br label %cond.end.74

cond.false.71:                                    ; preds = %if.then.67
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y72 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 12
  %56 = load i32, i32* %offset_y72, align 4
  %sub73 = sub nsw i32 0, %56
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.71, %cond.true.70
  %cond75 = phi i32 [ 0, %cond.true.70 ], [ %sub73, %cond.false.71 ]
  %cmp76 = icmp sgt i32 %52, %cond75
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.74
  %57 = load i32, i32* %in_offset_y.addr, align 4
  br label %cond.end.88

cond.false.78:                                    ; preds = %cond.end.74
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y79 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 12
  %59 = load i32, i32* %offset_y79, align 4
  %sub80 = sub nsw i32 0, %59
  %cmp81 = icmp slt i32 0, %sub80
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.false.78
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.false.78
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y84 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 12
  %61 = load i32, i32* %offset_y84, align 4
  %sub85 = sub nsw i32 0, %61
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ %sub85, %cond.false.83 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.77
  %cond89 = phi i32 [ %57, %cond.true.77 ], [ %cond87, %cond.end.86 ]
  %62 = load i32*, i32** %out_offset_y.addr, align 8
  store i32 %cond89, i32* %62, align 4
  br label %if.end.120

if.else.90:                                       ; preds = %if.end.65
  %63 = load i32, i32* %in_offset_y.addr, align 4
  %cmp91 = icmp sgt i32 %63, 0
  br i1 %cmp91, label %if.then.92, label %if.end.119

if.then.92:                                       ; preds = %if.else.90
  %64 = load i32, i32* %sh, align 4
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %65, i32 0, i32 29
  %66 = load i32, i32* %disp_height, align 4
  %sub95 = sub nsw i32 %64, %66
  store i32 %sub95, i32* %min_offset94, align 4
  %67 = load i32, i32* %in_offset_y.addr, align 4
  %68 = load i32, i32* %min_offset94, align 4
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y96 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %69, i32 0, i32 12
  %70 = load i32, i32* %offset_y96, align 4
  %sub97 = sub nsw i32 %68, %70
  %cmp98 = icmp sgt i32 0, %sub97
  br i1 %cmp98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %if.then.92
  br label %cond.end.103

cond.false.100:                                   ; preds = %if.then.92
  %71 = load i32, i32* %min_offset94, align 4
  %72 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y101 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %72, i32 0, i32 12
  %73 = load i32, i32* %offset_y101, align 4
  %sub102 = sub nsw i32 %71, %73
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.100, %cond.true.99
  %cond104 = phi i32 [ 0, %cond.true.99 ], [ %sub102, %cond.false.100 ]
  %cmp105 = icmp slt i32 %67, %cond104
  br i1 %cmp105, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.end.103
  %74 = load i32, i32* %in_offset_y.addr, align 4
  br label %cond.end.117

cond.false.107:                                   ; preds = %cond.end.103
  %75 = load i32, i32* %min_offset94, align 4
  %76 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y108 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %76, i32 0, i32 12
  %77 = load i32, i32* %offset_y108, align 4
  %sub109 = sub nsw i32 %75, %77
  %cmp110 = icmp sgt i32 0, %sub109
  br i1 %cmp110, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.107
  br label %cond.end.115

cond.false.112:                                   ; preds = %cond.false.107
  %78 = load i32, i32* %min_offset94, align 4
  %79 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y113 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %79, i32 0, i32 12
  %80 = load i32, i32* %offset_y113, align 4
  %sub114 = sub nsw i32 %78, %80
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.112, %cond.true.111
  %cond116 = phi i32 [ 0, %cond.true.111 ], [ %sub114, %cond.false.112 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.106
  %cond118 = phi i32 [ %74, %cond.true.106 ], [ %cond116, %cond.end.115 ]
  %81 = load i32*, i32** %out_offset_y.addr, align 8
  store i32 %cond118, i32* %81, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %cond.end.117, %if.else.90
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.9, %if.end.119, %cond.end.88
  ret void
}

declare void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %shell, i32 %horizontally, i32 %vertically) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %horizontally.addr = alloca i32, align 4
  %vertically.addr = alloca i32, align 4
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %target_offset_x = alloca i32, align 4
  %target_offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %horizontally, i32* %horizontally.addr, align 4
  store i32 %vertically, i32* %vertically.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_display_shell_scroll_center_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.19

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %vertically.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.end.20, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %18 = load i32, i32* %horizontally.addr, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.17, %lor.lhs.false, %do.end
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 11
  %20 = load i32, i32* %offset_x, align 4
  store i32 %20, i32* %target_offset_x, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 12
  %22 = load i32, i32* %offset_y, align 4
  store i32 %22, i32* %target_offset_y, align 4
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %23, i32* %sw, i32* %sh)
  %24 = load i32, i32* %horizontally.addr, align 4
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %25 = load i32, i32* %sw, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 28
  %27 = load i32, i32* %disp_width, align 4
  %sub = sub nsw i32 %25, %27
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %target_offset_x, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %28 = load i32, i32* %vertically.addr, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %29 = load i32, i32* %sh, align 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 29
  %31 = load i32, i32* %disp_height, align 4
  %sub26 = sub nsw i32 %29, %31
  %div27 = sdiv i32 %sub26, 2
  store i32 %div27, i32* %target_offset_y, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %33 = load i32, i32* %target_offset_x, align 4
  %34 = load i32, i32* %target_offset_y, align 4
  call void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell* %32, i32 %33, i32 %34)
  br label %return

return:                                           ; preds = %if.end.28, %if.then.19, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_center_image_on_next_size_allocate(%struct._GimpDisplayShell* %shell, i32 %horizontally, i32 %vertically) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %horizontally.addr = alloca i32, align 4
  %vertically.addr = alloca i32, align 4
  %data = alloca %struct.SizeAllocateCallbackData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %horizontally, i32* %horizontally.addr, align 4
  store i32 %vertically, i32* %vertically.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @g_slice_alloc(i64 16)
  %13 = bitcast i8* %call11 to %struct.SizeAllocateCallbackData*
  store %struct.SizeAllocateCallbackData* %13, %struct.SizeAllocateCallbackData** %data, align 8
  %14 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data, align 8
  %tobool12 = icmp ne %struct.SizeAllocateCallbackData* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data, align 8
  %shell14 = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %16, i32 0, i32 0
  store %struct._GimpDisplayShell* %15, %struct._GimpDisplayShell** %shell14, align 8
  %17 = load i32, i32* %horizontally.addr, align 4
  %18 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data, align 8
  %horizontally15 = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %18, i32 0, i32 2
  store i32 %17, i32* %horizontally15, align 4
  %19 = load i32, i32* %vertically.addr, align 4
  %20 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data, align 8
  %vertically16 = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %20, i32 0, i32 1
  store i32 %19, i32* %vertically16, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data, align 8
  %25 = bitcast %struct.SizeAllocateCallbackData* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct.SizeAllocateCallbackData*)* @gimp_display_shell_scroll_center_image_callback to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scroll_center_image_callback(%struct._GtkWidget* %canvas, %struct._GdkRectangle* %allocation, %struct.SizeAllocateCallbackData* %data) #0 {
entry:
  %canvas.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %data.addr = alloca %struct.SizeAllocateCallbackData*, align 8
  store %struct._GtkWidget* %canvas, %struct._GtkWidget** %canvas.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct.SizeAllocateCallbackData* %data, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %0 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %shell = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %0, i32 0, i32 0
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %2 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %horizontally = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %2, i32 0, i32 2
  %3 = load i32, i32* %horizontally, align 4
  %4 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %vertically = getelementptr inbounds %struct.SizeAllocateCallbackData, %struct.SizeAllocateCallbackData* %4, i32 0, i32 1
  %5 = load i32, i32* %vertically, align 4
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %1, i32 %3, i32 %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %9 = bitcast %struct.SizeAllocateCallbackData* %8 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct.SizeAllocateCallbackData*)* @gimp_display_shell_scroll_center_image_callback to i8*), i8* %9)
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.SizeAllocateCallbackData*, %struct.SizeAllocateCallbackData** %data.addr, align 8
  %11 = bitcast %struct.SizeAllocateCallbackData* %10 to i8*
  call void @g_slice_free1(i64 16, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_get_scaled_viewport(%struct._GimpDisplayShell* %shell, i32* %x, i32* %y, i32* %w, i32* %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %w.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_display_shell_scroll_get_scaled_viewport, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 11
  %14 = load i32, i32* %offset_x, align 4
  %15 = load i32*, i32** %x.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 12
  %17 = load i32, i32* %offset_y, align 4
  %18 = load i32*, i32** %y.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 28
  %20 = load i32, i32* %disp_width, align 4
  %21 = load i32*, i32** %w.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 29
  %23 = load i32, i32* %disp_height, align 4
  %24 = load i32*, i32** %h.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_get_viewport(%struct._GimpDisplayShell* %shell, double* %x, double* %y, double* %w, double* %h) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %h.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %h, double** %h.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_display_shell_scroll_get_viewport, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 11
  %14 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 13
  %16 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %16
  %17 = load double*, double** %x.addr, align 8
  store double %div, double* %17, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 12
  %19 = load i32, i32* %offset_y, align 4
  %conv11 = sitofp i32 %19 to double
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 14
  %21 = load double, double* %scale_y, align 8
  %div12 = fdiv double %conv11, %21
  %22 = load double*, double** %y.addr, align 8
  store double %div12, double* %22, align 8
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 28
  %24 = load i32, i32* %disp_width, align 4
  %conv13 = sitofp i32 %24 to double
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 13
  %26 = load double, double* %scale_x14, align 8
  %div15 = fdiv double %conv13, %26
  %27 = load double*, double** %w.addr, align 8
  store double %div15, double* %27, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 29
  %29 = load i32, i32* %disp_height, align 4
  %conv16 = sitofp i32 %29 to double
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 14
  %31 = load double, double* %scale_y17, align 8
  %div18 = fdiv double %conv16, %31
  %32 = load double*, double** %h.addr, align 8
  store double %div18, double* %32, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_get_disp_offset(%struct._GimpDisplayShell* %shell, i32* %disp_xoffset, i32* %disp_yoffset) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %disp_xoffset.addr = alloca i32*, align 8
  %disp_yoffset.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %disp_xoffset, i32** %disp_xoffset.addr, align 8
  store i32* %disp_yoffset, i32** %disp_yoffset.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_display_shell_scroll_get_disp_offset, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.27

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %disp_xoffset.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 11
  %15 = load i32, i32* %offset_x, align 4
  %cmp13 = icmp slt i32 %15, 0
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.then.12
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 11
  %17 = load i32, i32* %offset_x15, align 4
  %sub = sub nsw i32 0, %17
  %18 = load i32*, i32** %disp_xoffset.addr, align 8
  store i32 %sub, i32* %18, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.12
  %19 = load i32*, i32** %disp_xoffset.addr, align 8
  store i32 0, i32* %19, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.end
  %20 = load i32*, i32** %disp_yoffset.addr, align 8
  %tobool19 = icmp ne i32* %20, null
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.18
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 12
  %22 = load i32, i32* %offset_y, align 4
  %cmp21 = icmp slt i32 %22, 0
  br i1 %cmp21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.20
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 12
  %24 = load i32, i32* %offset_y23, align 4
  %sub24 = sub nsw i32 0, %24
  %25 = load i32*, i32** %disp_yoffset.addr, align 8
  store i32 %sub24, i32* %25, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.20
  %26 = load i32*, i32** %disp_yoffset.addr, align 8
  store i32 0, i32* %26, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.9, %if.end.26, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_get_render_start_offset(%struct._GimpDisplayShell* %shell, i32* %offset_x, i32* %offset_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %offset_x.addr = alloca i32*, align 8
  %offset_y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %offset_x, i32** %offset_x.addr, align 8
  store i32* %offset_y, i32** %offset_y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__func__.gimp_display_shell_scroll_get_render_start_offset, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 11
  %14 = load i32, i32* %offset_x11, align 4
  %cmp12 = icmp sgt i32 0, %14
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 11
  %16 = load i32, i32* %offset_x13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %16, %cond.false ]
  %17 = load i32*, i32** %offset_x.addr, align 8
  store i32 %cond, i32* %17, align 4
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 12
  %19 = load i32, i32* %offset_y14, align 4
  %cmp15 = icmp sgt i32 0, %19
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 12
  %21 = load i32, i32* %offset_y18, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i32 [ 0, %cond.true.16 ], [ %21, %cond.false.17 ]
  %22 = load i32*, i32** %offset_y.addr, align 8
  store i32 %cond20, i32* %22, align 4
  br label %return

return:                                           ; preds = %cond.end.19, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_setup_hscrollbar(%struct._GimpDisplayShell* %shell, double %value) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %value.addr = alloca double, align 8
  %sw = alloca i32, align 4
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %value, double* %value.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_display_shell_scroll_setup_hscrollbar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %17, i32* %sw, i32* null)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 28
  %19 = load i32, i32* %disp_width, align 4
  %20 = load i32, i32* %sw, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %if.then.18, label %if.else.32

if.then.18:                                       ; preds = %if.end.16
  %21 = load double, double* %value.addr, align 8
  %cmp19 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %22 = load double, double* %value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %22, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %lower, align 8
  %23 = load double, double* %value.addr, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 28
  %25 = load i32, i32* %disp_width20, align 4
  %conv = sitofp i32 %25 to double
  %add = fadd double %23, %conv
  %26 = load i32, i32* %sw, align 4
  %conv21 = sitofp i32 %26 to double
  %cmp22 = fcmp ogt double %add, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %cond.end
  %27 = load double, double* %value.addr, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 28
  %29 = load i32, i32* %disp_width25, align 4
  %conv26 = sitofp i32 %29 to double
  %add27 = fadd double %27, %conv26
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end
  %30 = load i32, i32* %sw, align 4
  %conv29 = sitofp i32 %30 to double
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.24
  %cond31 = phi double [ %add27, %cond.true.24 ], [ %conv29, %cond.false.28 ]
  store double %cond31, double* %upper, align 8
  br label %if.end.69

if.else.32:                                       ; preds = %if.end.16
  %31 = load double, double* %value.addr, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width33 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 28
  %33 = load i32, i32* %disp_width33, align 4
  %34 = load i32, i32* %sw, align 4
  %sub = sub nsw i32 %33, %34
  %sub34 = sub nsw i32 0, %sub
  %div = sdiv i32 %sub34, 2
  %conv35 = sitofp i32 %div to double
  %cmp36 = fcmp olt double %31, %conv35
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.else.32
  %35 = load double, double* %value.addr, align 8
  br label %cond.end.45

cond.false.39:                                    ; preds = %if.else.32
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 28
  %37 = load i32, i32* %disp_width40, align 4
  %38 = load i32, i32* %sw, align 4
  %sub41 = sub nsw i32 %37, %38
  %sub42 = sub nsw i32 0, %sub41
  %div43 = sdiv i32 %sub42, 2
  %conv44 = sitofp i32 %div43 to double
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.39, %cond.true.38
  %cond46 = phi double [ %35, %cond.true.38 ], [ %conv44, %cond.false.39 ]
  store double %cond46, double* %lower, align 8
  %39 = load double, double* %value.addr, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 28
  %41 = load i32, i32* %disp_width47, align 4
  %conv48 = sitofp i32 %41 to double
  %add49 = fadd double %39, %conv48
  %42 = load i32, i32* %sw, align 4
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 28
  %44 = load i32, i32* %disp_width50, align 4
  %45 = load i32, i32* %sw, align 4
  %sub51 = sub nsw i32 %44, %45
  %div52 = sdiv i32 %sub51, 2
  %add53 = add nsw i32 %42, %div52
  %conv54 = sitofp i32 %add53 to double
  %cmp55 = fcmp ogt double %add49, %conv54
  br i1 %cmp55, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %cond.end.45
  %46 = load double, double* %value.addr, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 28
  %48 = load i32, i32* %disp_width58, align 4
  %conv59 = sitofp i32 %48 to double
  %add60 = fadd double %46, %conv59
  br label %cond.end.67

cond.false.61:                                    ; preds = %cond.end.45
  %49 = load i32, i32* %sw, align 4
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 28
  %51 = load i32, i32* %disp_width62, align 4
  %52 = load i32, i32* %sw, align 4
  %sub63 = sub nsw i32 %51, %52
  %div64 = sdiv i32 %sub63, 2
  %add65 = add nsw i32 %49, %div64
  %conv66 = sitofp i32 %add65 to double
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.61, %cond.true.57
  %cond68 = phi double [ %add60, %cond.true.57 ], [ %conv66, %cond.false.61 ]
  store double %cond68, double* %upper, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.67, %cond.end.30
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 34
  %54 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  %55 = bitcast %struct._GtkAdjustment* %54 to i8*
  %56 = load double, double* %lower, align 8
  %57 = load double, double* %upper, align 8
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 13
  %59 = load double, double* %scale_x, align 8
  %cmp70 = fcmp ogt double %59, 1.000000e+00
  br i1 %cmp70, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %if.end.69
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x73 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 13
  %61 = load double, double* %scale_x73, align 8
  br label %cond.end.75

cond.false.74:                                    ; preds = %if.end.69
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.72
  %cond76 = phi double [ %61, %cond.true.72 ], [ 1.000000e+00, %cond.false.74 ]
  call void (i8*, i8*, ...) @g_object_set(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), double %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), double %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), double %cond76, i8* null)
  br label %return

return:                                           ; preds = %cond.end.75, %if.then.15, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scroll_setup_vscrollbar(%struct._GimpDisplayShell* %shell, double %value) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %value.addr = alloca double, align 8
  %sh = alloca i32, align 4
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %value, double* %value.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_display_shell_scroll_setup_vscrollbar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %17, i32* null, i32* %sh)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 29
  %19 = load i32, i32* %disp_height, align 4
  %20 = load i32, i32* %sh, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %if.then.18, label %if.else.32

if.then.18:                                       ; preds = %if.end.16
  %21 = load double, double* %value.addr, align 8
  %cmp19 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %22 = load double, double* %value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %22, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %lower, align 8
  %23 = load double, double* %value.addr, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 29
  %25 = load i32, i32* %disp_height20, align 4
  %conv = sitofp i32 %25 to double
  %add = fadd double %23, %conv
  %26 = load i32, i32* %sh, align 4
  %conv21 = sitofp i32 %26 to double
  %cmp22 = fcmp ogt double %add, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %cond.end
  %27 = load double, double* %value.addr, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 29
  %29 = load i32, i32* %disp_height25, align 4
  %conv26 = sitofp i32 %29 to double
  %add27 = fadd double %27, %conv26
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end
  %30 = load i32, i32* %sh, align 4
  %conv29 = sitofp i32 %30 to double
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.24
  %cond31 = phi double [ %add27, %cond.true.24 ], [ %conv29, %cond.false.28 ]
  store double %cond31, double* %upper, align 8
  br label %if.end.69

if.else.32:                                       ; preds = %if.end.16
  %31 = load double, double* %value.addr, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height33 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 29
  %33 = load i32, i32* %disp_height33, align 4
  %34 = load i32, i32* %sh, align 4
  %sub = sub nsw i32 %33, %34
  %sub34 = sub nsw i32 0, %sub
  %div = sdiv i32 %sub34, 2
  %conv35 = sitofp i32 %div to double
  %cmp36 = fcmp olt double %31, %conv35
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.else.32
  %35 = load double, double* %value.addr, align 8
  br label %cond.end.45

cond.false.39:                                    ; preds = %if.else.32
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 29
  %37 = load i32, i32* %disp_height40, align 4
  %38 = load i32, i32* %sh, align 4
  %sub41 = sub nsw i32 %37, %38
  %sub42 = sub nsw i32 0, %sub41
  %div43 = sdiv i32 %sub42, 2
  %conv44 = sitofp i32 %div43 to double
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.39, %cond.true.38
  %cond46 = phi double [ %35, %cond.true.38 ], [ %conv44, %cond.false.39 ]
  store double %cond46, double* %lower, align 8
  %39 = load double, double* %value.addr, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 29
  %41 = load i32, i32* %disp_height47, align 4
  %conv48 = sitofp i32 %41 to double
  %add49 = fadd double %39, %conv48
  %42 = load i32, i32* %sh, align 4
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 29
  %44 = load i32, i32* %disp_height50, align 4
  %45 = load i32, i32* %sh, align 4
  %sub51 = sub nsw i32 %44, %45
  %div52 = sdiv i32 %sub51, 2
  %add53 = add nsw i32 %42, %div52
  %conv54 = sitofp i32 %add53 to double
  %cmp55 = fcmp ogt double %add49, %conv54
  br i1 %cmp55, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %cond.end.45
  %46 = load double, double* %value.addr, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 29
  %48 = load i32, i32* %disp_height58, align 4
  %conv59 = sitofp i32 %48 to double
  %add60 = fadd double %46, %conv59
  br label %cond.end.67

cond.false.61:                                    ; preds = %cond.end.45
  %49 = load i32, i32* %sh, align 4
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 29
  %51 = load i32, i32* %disp_height62, align 4
  %52 = load i32, i32* %sh, align 4
  %sub63 = sub nsw i32 %51, %52
  %div64 = sdiv i32 %sub63, 2
  %add65 = add nsw i32 %49, %div64
  %conv66 = sitofp i32 %add65 to double
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.61, %cond.true.57
  %cond68 = phi double [ %add60, %cond.true.57 ], [ %conv66, %cond.false.61 ]
  store double %cond68, double* %upper, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.67, %cond.end.30
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 35
  %54 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  %55 = bitcast %struct._GtkAdjustment* %54 to i8*
  %56 = load double, double* %lower, align 8
  %57 = load double, double* %upper, align 8
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 14
  %59 = load double, double* %scale_y, align 8
  %cmp70 = fcmp ogt double %59, 1.000000e+00
  br i1 %cmp70, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %if.end.69
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y73 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 14
  %61 = load double, double* %scale_y73, align 8
  br label %cond.end.75

cond.false.74:                                    ; preds = %if.end.69
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.72
  %cond76 = phi double [ %61, %cond.true.72 ], [ 1.000000e+00, %cond.false.74 ]
  call void (i8*, i8*, ...) @g_object_set(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), double %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), double %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), double %cond76, i8* null)
  br label %return

return:                                           ; preds = %cond.end.75, %if.then.15, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_slice_free1(i64, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
