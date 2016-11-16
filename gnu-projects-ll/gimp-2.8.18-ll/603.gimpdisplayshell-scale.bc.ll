; ModuleID = './app/display/gimpdisplayshell-scale.bc'
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpRuler = type { %struct._GtkWidget }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkPoint = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_update_scrollbars_and_rulers = private unnamed_addr constant [48 x i8] c"gimp_display_shell_update_scrollbars_and_rulers\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_scale_update_scrollbars = private unnamed_addr constant [43 x i8] c"gimp_display_shell_scale_update_scrollbars\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"page-size\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"page-increment\00", align 1
@__func__.gimp_display_shell_scale_revert = private unnamed_addr constant [32 x i8] c"gimp_display_shell_scale_revert\00", align 1
@__func__.gimp_display_shell_scale_can_revert = private unnamed_addr constant [36 x i8] c"gimp_display_shell_scale_can_revert\00", align 1
@__func__.gimp_display_shell_scale_set_dot_for_dot = private unnamed_addr constant [41 x i8] c"gimp_display_shell_scale_set_dot_for_dot\00", align 1
@__func__.gimp_display_shell_get_screen_resolution = private unnamed_addr constant [41 x i8] c"gimp_display_shell_get_screen_resolution\00", align 1
@__func__.gimp_display_shell_scale = private unnamed_addr constant [25 x i8] c"gimp_display_shell_scale\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"shell->canvas != NULL\00", align 1
@__func__.gimp_display_shell_scale_fit_in = private unnamed_addr constant [32 x i8] c"gimp_display_shell_scale_fit_in\00", align 1
@__func__.gimp_display_shell_scale_image_is_within_viewport = private unnamed_addr constant [50 x i8] c"gimp_display_shell_scale_image_is_within_viewport\00", align 1
@__func__.gimp_display_shell_scale_fill = private unnamed_addr constant [30 x i8] c"gimp_display_shell_scale_fill\00", align 1
@__func__.gimp_display_shell_scale_handle_zoom_revert = private unnamed_addr constant [44 x i8] c"gimp_display_shell_scale_handle_zoom_revert\00", align 1
@__func__.gimp_display_shell_scale_by_values = private unnamed_addr constant [35 x i8] c"gimp_display_shell_scale_by_values\00", align 1
@__func__.gimp_display_shell_scale_shrink_wrap = private unnamed_addr constant [37 x i8] c"gimp_display_shell_scale_shrink_wrap\00", align 1
@__func__.gimp_display_shell_scale_resize = private unnamed_addr constant [32 x i8] c"gimp_display_shell_scale_resize\00", align 1
@__func__.gimp_display_shell_calculate_scale_x_and_y = private unnamed_addr constant [43 x i8] c"gimp_display_shell_calculate_scale_x_and_y\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_display_shell_set_initial_scale = private unnamed_addr constant [37 x i8] c"gimp_display_shell_set_initial_scale\00", align 1
@__func__.gimp_display_shell_scale_to = private unnamed_addr constant [28 x i8] c"gimp_display_shell_scale_to\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_update_scrollbars_and_rulers(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_display_shell_update_scrollbars_and_rulers, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_update_scrollbars(%struct._GimpDisplayShell* %13)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell* %14)
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
define void @gimp_display_shell_scale_update_scrollbars(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_display_shell_scale_update_scrollbars, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 34
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  %17 = bitcast %struct._GtkAdjustment* %16 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 11
  %21 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %21 to double
  call void @gimp_display_shell_scroll_setup_hscrollbar(%struct._GimpDisplayShell* %19, double %conv)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 34
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata15, align 8
  %24 = bitcast %struct._GtkAdjustment* %23 to i8*
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 11
  %26 = load i32, i32* %offset_x16, align 4
  %conv17 = sitofp i32 %26 to double
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 28
  %28 = load i32, i32* %disp_width, align 4
  %conv18 = sitofp i32 %28 to double
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 28
  %30 = load i32, i32* %disp_width19, align 4
  %conv20 = sitofp i32 %30 to double
  %div = fdiv double %conv20, 2.000000e+00
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), double %conv17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %conv18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), double %div, i8* null)
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 34
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata21, align 8
  %33 = bitcast %struct._GtkAdjustment* %32 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %34)
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 35
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  %37 = bitcast %struct._GtkAdjustment* %36 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %38)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 12
  %41 = load i32, i32* %offset_y, align 4
  %conv24 = sitofp i32 %41 to double
  call void @gimp_display_shell_scroll_setup_vscrollbar(%struct._GimpDisplayShell* %39, double %conv24)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 35
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata25, align 8
  %44 = bitcast %struct._GtkAdjustment* %43 to i8*
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 12
  %46 = load i32, i32* %offset_y26, align 4
  %conv27 = sitofp i32 %46 to double
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 29
  %48 = load i32, i32* %disp_height, align 4
  %conv28 = sitofp i32 %48 to double
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 29
  %50 = load i32, i32* %disp_height29, align 4
  %conv30 = sitofp i32 %50 to double
  %div31 = fdiv double %conv30, 2.000000e+00
  call void (i8*, i8*, ...) @g_object_set(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), double %conv27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %conv28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), double %div31, i8* null)
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %51, i32 0, i32 35
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata32, align 8
  %53 = bitcast %struct._GtkAdjustment* %52 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %54)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %resolution_x = alloca double, align 8
  %resolution_y = alloca double, align 8
  %horizontal_lower = alloca double, align 8
  %horizontal_upper = alloca double, align 8
  %horizontal_max_size = alloca double, align 8
  %vertical_lower = alloca double, align 8
  %vertical_upper = alloca double, align 8
  %vertical_max_size = alloca double, align 8
  %offset_x = alloca double, align 8
  %offset_y = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double 1.000000e+00, double* %resolution_x, align 8
  store double 1.000000e+00, double* %resolution_y, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_width(%struct._GimpImage* %5)
  store i32 %call4, i32* %image_width, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %6)
  store i32 %call5, i32* %image_height, align 4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %7, double* %resolution_x, double* %resolution_y)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 28
  %9 = load i32, i32* %disp_width, align 4
  store i32 %9, i32* %image_width, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 29
  %11 = load i32, i32* %disp_height, align 4
  store i32 %11, i32* %image_height, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  store double 0.000000e+00, double* %horizontal_lower, align 8
  store double 0.000000e+00, double* %vertical_lower, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool7, label %if.then.8, label %if.else.29

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 28
  %14 = load i32, i32* %disp_width9, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 13
  %16 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %16
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 10
  %18 = load i32, i32* %unit, align 4
  %19 = load double, double* %resolution_x, align 8
  %call10 = call double @gimp_pixels_to_units(double %div, i32 %18, double %19)
  store double %call10, double* %horizontal_upper, align 8
  %20 = load i32, i32* %image_width, align 4
  %21 = load i32, i32* %image_height, align 4
  %cmp = icmp sgt i32 %20, %21
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %22 = load i32, i32* %image_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %23 = load i32, i32* %image_height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ]
  %conv12 = sitofp i32 %cond to double
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 10
  %25 = load i32, i32* %unit13, align 4
  %26 = load double, double* %resolution_x, align 8
  %call14 = call double @gimp_pixels_to_units(double %conv12, i32 %25, double %26)
  store double %call14, double* %horizontal_max_size, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 29
  %28 = load i32, i32* %disp_height15, align 4
  %conv16 = sitofp i32 %28 to double
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 14
  %30 = load double, double* %scale_y, align 8
  %div17 = fdiv double %conv16, %30
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 10
  %32 = load i32, i32* %unit18, align 4
  %33 = load double, double* %resolution_y, align 8
  %call19 = call double @gimp_pixels_to_units(double %div17, i32 %32, double %33)
  store double %call19, double* %vertical_upper, align 8
  %34 = load i32, i32* %image_width, align 4
  %35 = load i32, i32* %image_height, align 4
  %cmp20 = icmp sgt i32 %34, %35
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end
  %36 = load i32, i32* %image_width, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  %37 = load i32, i32* %image_height, align 4
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi i32 [ %36, %cond.true.22 ], [ %37, %cond.false.23 ]
  %conv26 = sitofp i32 %cond25 to double
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 10
  %39 = load i32, i32* %unit27, align 4
  %40 = load double, double* %resolution_y, align 8
  %call28 = call double @gimp_pixels_to_units(double %conv26, i32 %39, double %40)
  store double %call28, double* %vertical_max_size, align 8
  br label %if.end.46

if.else.29:                                       ; preds = %if.end.6
  %41 = load i32, i32* %image_width, align 4
  %conv30 = sitofp i32 %41 to double
  store double %conv30, double* %horizontal_upper, align 8
  %42 = load i32, i32* %image_width, align 4
  %43 = load i32, i32* %image_height, align 4
  %cmp31 = icmp sgt i32 %42, %43
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.else.29
  %44 = load i32, i32* %image_width, align 4
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.else.29
  %45 = load i32, i32* %image_height, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %44, %cond.true.33 ], [ %45, %cond.false.34 ]
  %conv37 = sitofp i32 %cond36 to double
  store double %conv37, double* %horizontal_max_size, align 8
  %46 = load i32, i32* %image_height, align 4
  %conv38 = sitofp i32 %46 to double
  store double %conv38, double* %vertical_upper, align 8
  %47 = load i32, i32* %image_width, align 4
  %48 = load i32, i32* %image_height, align 4
  %cmp39 = icmp sgt i32 %47, %48
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.35
  %49 = load i32, i32* %image_width, align 4
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.35
  %50 = load i32, i32* %image_height, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %49, %cond.true.41 ], [ %50, %cond.false.42 ]
  %conv45 = sitofp i32 %cond44 to double
  store double %conv45, double* %vertical_max_size, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.43, %cond.end.24
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool47 = icmp ne %struct._GimpImage* %51, null
  br i1 %tobool47, label %if.then.48, label %if.end.64

if.then.48:                                       ; preds = %if.end.46
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x49 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 11
  %53 = load i32, i32* %offset_x49, align 4
  %conv50 = sitofp i32 %53 to double
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x51 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 13
  %55 = load double, double* %scale_x51, align 8
  %div52 = fdiv double %conv50, %55
  %56 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit53 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %56, i32 0, i32 10
  %57 = load i32, i32* %unit53, align 4
  %58 = load double, double* %resolution_x, align 8
  %call54 = call double @gimp_pixels_to_units(double %div52, i32 %57, double %58)
  store double %call54, double* %offset_x, align 8
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 12
  %60 = load i32, i32* %offset_y55, align 4
  %conv56 = sitofp i32 %60 to double
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x57 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 13
  %62 = load double, double* %scale_x57, align 8
  %div58 = fdiv double %conv56, %62
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %63, i32 0, i32 10
  %64 = load i32, i32* %unit59, align 4
  %65 = load double, double* %resolution_y, align 8
  %call60 = call double @gimp_pixels_to_units(double %div58, i32 %64, double %65)
  store double %call60, double* %offset_y, align 8
  %66 = load double, double* %offset_x, align 8
  %67 = load double, double* %horizontal_lower, align 8
  %add = fadd double %67, %66
  store double %add, double* %horizontal_lower, align 8
  %68 = load double, double* %offset_x, align 8
  %69 = load double, double* %horizontal_upper, align 8
  %add61 = fadd double %69, %68
  store double %add61, double* %horizontal_upper, align 8
  %70 = load double, double* %offset_y, align 8
  %71 = load double, double* %vertical_lower, align 8
  %add62 = fadd double %71, %70
  store double %add62, double* %vertical_lower, align 8
  %72 = load double, double* %offset_y, align 8
  %73 = load double, double* %vertical_upper, align 8
  %add63 = fadd double %73, %72
  store double %add63, double* %vertical_upper, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.48, %if.end.46
  %74 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hrule = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %74, i32 0, i32 38
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_ruler_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call65)
  %77 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpRuler*
  %78 = load double, double* %horizontal_lower, align 8
  %79 = load double, double* %horizontal_upper, align 8
  %80 = load double, double* %horizontal_max_size, align 8
  call void @gimp_ruler_set_range(%struct._GimpRuler* %77, double %78, double %79, double %80)
  %81 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hrule67 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %81, i32 0, i32 38
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule67, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_ruler_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call68)
  %84 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpRuler*
  %85 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit70 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %85, i32 0, i32 10
  %86 = load i32, i32* %unit70, align 4
  call void @gimp_ruler_set_unit(%struct._GimpRuler* %84, i32 %86)
  %87 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vrule = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %87, i32 0, i32 39
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_ruler_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call71)
  %90 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpRuler*
  %91 = load double, double* %vertical_lower, align 8
  %92 = load double, double* %vertical_upper, align 8
  %93 = load double, double* %vertical_max_size, align 8
  call void @gimp_ruler_set_range(%struct._GimpRuler* %90, double %91, double %92, double %93)
  %94 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vrule73 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %94, i32 0, i32 39
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule73, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_ruler_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call74)
  %97 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpRuler*
  %98 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit76 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %98, i32 0, i32 10
  %99 = load i32, i32* %unit76, align 4
  call void @gimp_ruler_set_unit(%struct._GimpRuler* %97, i32 %99)
  br label %return

return:                                           ; preds = %if.end.64, %if.then
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gimp_display_shell_scroll_setup_hscrollbar(%struct._GimpDisplayShell*, double) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @gimp_display_shell_scroll_setup_vscrollbar(%struct._GimpDisplayShell*, double) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare double @gimp_pixels_to_units(double, i32, double) #3

declare void @gimp_ruler_set_range(%struct._GimpRuler*, double, double, double) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_ruler_get_type() #1

declare void @gimp_ruler_set_unit(%struct._GimpRuler*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_scale_revert(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_scale_revert, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 23
  %14 = load double, double* %last_scale, align 8
  %cmp11 = fcmp olt double %14, 1.000000e-04
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale_time = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 24
  store i32 0, i32* %last_scale_time, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 23
  %18 = load double, double* %last_scale14, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 25
  %20 = load i32, i32* %last_offset_x, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 26
  %22 = load i32, i32* %last_offset_y, align 4
  call void @gimp_display_shell_scale_by_values(%struct._GimpDisplayShell* %16, double %18, i32 %20, i32 %22, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_by_values(%struct._GimpDisplayShell* %shell, double %scale, i32 %offset_x, i32 %offset_y, i32 %resize_window) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale.addr = alloca double, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %resize_window.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %resize_window, i32* %resize_window.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_display_shell_scale_by_values, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 22
  %14 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call11 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %14)
  %15 = load double, double* %scale.addr, align 8
  %sub = fsub double %call11, %15
  %call12 = call double @fabs(double %sub) #5
  %cmp13 = fcmp olt double %call12, 1.000000e-04
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.21

land.lhs.true.14:                                 ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 11
  %17 = load i32, i32* %offset_x15, align 4
  %18 = load i32, i32* %offset_x.addr, align 4
  %cmp16 = icmp eq i32 %17, %18
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 12
  %20 = load i32, i32* %offset_y18, align 4
  %21 = load i32, i32* %offset_y.addr, align 4
  %cmp19 = icmp eq i32 %20, %21
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %land.lhs.true.14, %do.end
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_handle_zoom_revert(%struct._GimpDisplayShell* %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pause(%struct._GimpDisplayShell* %23)
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom22 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 22
  %25 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom22, align 8
  %26 = load double, double* %scale.addr, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %25, i32 6, double %26)
  %27 = load i32, i32* %offset_x.addr, align 4
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 11
  store i32 %27, i32* %offset_x23, align 4
  %29 = load i32, i32* %offset_y.addr, align 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y24 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 12
  store i32 %29, i32* %offset_y24, align 4
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = load i32, i32* %resize_window.addr, align 4
  call void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell* %31, i32 %32, i32 0)
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_resume(%struct._GimpDisplayShell* %33)
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_scale_can_revert(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_scale_can_revert, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 23
  %14 = load double, double* %last_scale, align 8
  %cmp11 = fcmp ogt double %14, 1.000000e-04
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_set_dot_for_dot(%struct._GimpDisplayShell* %shell, i32 %dot_for_dot) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %dot_for_dot.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_display_shell_scale_set_dot_for_dot, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %dot_for_dot.addr, align 4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 17
  %15 = load i32, i32* %dot_for_dot11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pause(%struct._GimpDisplayShell* %16)
  %17 = load i32, i32* %dot_for_dot.addr, align 4
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 17
  store i32 %17, i32* %dot_for_dot14, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %19)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 1
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %22, i32 0, i32 2
  %23 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %resize_windows_on_zoom = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %23, i32 0, i32 5
  %24 = load i32, i32* %resize_windows_on_zoom, align 4
  call void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell* %20, i32 %24, i32 0)
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_resume(%struct._GimpDisplayShell* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_display_shell_pause(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell* %shell, i32 %resize_window, i32 %grow_only) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %resize_window.addr = alloca i32, align 4
  %grow_only.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %window = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %resize_window, i32* %resize_window.addr, align 4
  store i32 %grow_only, i32* %grow_only.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_scale_resize, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pause(%struct._GimpDisplayShell* %13)
  %14 = load i32, i32* %resize_window.addr, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call14 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %15)
  store %struct._GimpImageWindow* %call14, %struct._GimpImageWindow** %window, align 8
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool15 = icmp ne %struct._GimpImageWindow* %16, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.then.12
  %17 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cmp18 = icmp eq %struct._GimpDisplayShell* %call17, %18
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.16
  %19 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %20 = load i32, i32* %grow_only.addr, align 4
  call void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow* %19, i32 %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true.16, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.end
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %21)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %23)
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_resume(%struct._GimpDisplayShell* %24)
  br label %return

return:                                           ; preds = %if.end.21, %if.else.9
  ret void
}

declare void @gimp_display_shell_resume(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_get_screen_resolution(%struct._GimpDisplayShell* %shell, double* %xres, double* %yres) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %xres.addr = alloca double*, align 8
  %yres.addr = alloca double*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %xres, double** %xres.addr, align 8
  store double* %yres, double** %yres.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_display_shell_get_screen_resolution, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 17
  %14 = load i32, i32* %dot_for_dot, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call13, double* %x, double* %y)
  br label %if.end.15

if.else.14:                                       ; preds = %do.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 15
  %18 = load double, double* %monitor_xres, align 8
  store double %18, double* %x, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 16
  %20 = load double, double* %monitor_yres, align 8
  store double %20, double* %y, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.12
  %21 = load double*, double** %xres.addr, align 8
  %tobool16 = icmp ne double* %21, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %22 = load double, double* %x, align 8
  %23 = load double*, double** %xres.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %24 = load double*, double** %yres.addr, align 8
  %tobool19 = icmp ne double* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %25 = load double, double* %y, align 8
  %26 = load double*, double** %yres.addr, align 8
  store double %25, double* %26, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.20, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale(%struct._GimpDisplayShell* %shell, i32 %zoom_type, double %new_scale, i32 %zoom_focus) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %zoom_type.addr = alloca i32, align 4
  %new_scale.addr = alloca double, align 8
  %zoom_focus.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %current_scale = alloca double, align 8
  %real_new_scale = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %window = alloca %struct._GimpImageWindow*, align 8
  %starts_fitting_horiz = alloca i32, align 4
  %starts_fitting_vert = alloca i32, align 4
  %zoom_focus_almost_centered_horiz = alloca i32, align 4
  %zoom_focus_almost_centered_vert = alloca i32, align 4
  %image_center_almost_centered_horiz = alloca i32, align 4
  %image_center_almost_centered_vert = alloca i32, align 4
  %image_center_x = alloca i32, align 4
  %image_center_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  store double %new_scale, double* %new_scale.addr, align 8
  store i32 %zoom_focus, i32* %zoom_focus.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_scale, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.61

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 33
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %cmp12 = icmp ne %struct._GtkWidget* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_scale, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.61

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 22
  %16 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call17 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %16)
  store double %call17, double* %current_scale, align 8
  %17 = load i32, i32* %zoom_type.addr, align 4
  %cmp18 = icmp ne i32 %17, 6
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %do.end.16
  %18 = load i32, i32* %zoom_type.addr, align 4
  %19 = load double, double* %current_scale, align 8
  %call20 = call double @gimp_zoom_model_zoom_step(i32 %18, double %19)
  store double %call20, double* %real_new_scale, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %do.end.16
  %20 = load double, double* %new_scale.addr, align 8
  store double %20, double* %real_new_scale, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  %21 = load double, double* %real_new_scale, align 8
  %22 = load double, double* %current_scale, align 8
  %sub = fsub double %21, %22
  %call23 = call double @fabs(double %sub) #5
  %cmp24 = fcmp olt double %call23, 1.000000e-04
  br i1 %cmp24, label %if.end.61, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 1
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %24, i32 0, i32 2
  %25 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %resize_windows_on_zoom = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %25, i32 0, i32 5
  %26 = load i32, i32* %resize_windows_on_zoom, align 4
  %tobool26 = icmp ne i32 %26, 0
  br i1 %tobool26, label %if.then.27, label %if.else.37

if.then.27:                                       ; preds = %if.then.25
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call29 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %27)
  store %struct._GimpImageWindow* %call29, %struct._GimpImageWindow** %window, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom30 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 22
  %29 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom30, align 8
  %30 = load double, double* %real_new_scale, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %29, i32 6, double %30)
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %31)
  %32 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool31 = icmp ne %struct._GimpImageWindow* %32, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %if.then.27
  %33 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call33 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %33)
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cmp34 = icmp eq %struct._GimpDisplayShell* %call33, %34
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  %35 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  call void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow* %35, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.then.27
  br label %if.end.60

if.else.37:                                       ; preds = %if.then.25
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %37 = load double, double* %real_new_scale, align 8
  %38 = load double, double* %current_scale, align 8
  %39 = load i32, i32* %zoom_focus.addr, align 4
  call void @gimp_display_shell_scale_get_zoom_focus(%struct._GimpDisplayShell* %36, double %37, double %38, i32* %x, i32* %y, i32 %39)
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_get_image_center_viewport(%struct._GimpDisplayShell* %40, i32* %image_center_x, i32* %image_center_y)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load double, double* %real_new_scale, align 8
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %y, align 4
  call void @gimp_display_shell_scale_to(%struct._GimpDisplayShell* %41, double %42, i32 %43, i32 %44)
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %46 = load double, double* %real_new_scale, align 8
  %47 = load double, double* %current_scale, align 8
  %call46 = call i32 @gimp_display_shell_scale_image_starts_to_fit(%struct._GimpDisplayShell* %45, double %46, double %47, i32* %starts_fitting_horiz, i32* %starts_fitting_vert)
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %y, align 4
  %call47 = call i32 @gimp_display_shell_scale_viewport_coord_almost_centered(%struct._GimpDisplayShell* %48, i32 %49, i32 %50, i32* %zoom_focus_almost_centered_horiz, i32* %zoom_focus_almost_centered_vert)
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %52 = load i32, i32* %image_center_x, align 4
  %53 = load i32, i32* %image_center_y, align 4
  %call48 = call i32 @gimp_display_shell_scale_viewport_coord_almost_centered(%struct._GimpDisplayShell* %51, i32 %52, i32 %53, i32* %image_center_almost_centered_horiz, i32* %image_center_almost_centered_vert)
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %55 = load i32, i32* %starts_fitting_horiz, align 4
  %tobool49 = icmp ne i32 %55, 0
  br i1 %tobool49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.37
  %56 = load i32, i32* %zoom_focus_almost_centered_horiz, align 4
  %tobool50 = icmp ne i32 %56, 0
  br i1 %tobool50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %57 = load i32, i32* %image_center_almost_centered_horiz, align 4
  %tobool51 = icmp ne i32 %57, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %58 = phi i1 [ false, %lor.rhs ], [ %tobool51, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.else.37
  %59 = phi i1 [ true, %if.else.37 ], [ %58, %land.end ]
  %lor.ext = zext i1 %59 to i32
  %60 = load i32, i32* %starts_fitting_vert, align 4
  %tobool52 = icmp ne i32 %60, 0
  br i1 %tobool52, label %lor.end.58, label %lor.rhs.53

lor.rhs.53:                                       ; preds = %lor.end
  %61 = load i32, i32* %zoom_focus_almost_centered_vert, align 4
  %tobool54 = icmp ne i32 %61, 0
  br i1 %tobool54, label %land.rhs.55, label %land.end.57

land.rhs.55:                                      ; preds = %lor.rhs.53
  %62 = load i32, i32* %image_center_almost_centered_vert, align 4
  %tobool56 = icmp ne i32 %62, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.55, %lor.rhs.53
  %63 = phi i1 [ false, %lor.rhs.53 ], [ %tobool56, %land.rhs.55 ]
  br label %lor.end.58

lor.end.58:                                       ; preds = %land.end.57, %lor.end
  %64 = phi i1 [ true, %lor.end ], [ %63, %land.end.57 ]
  %lor.ext59 = zext i1 %64 to i32
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %54, i32 %lor.ext, i32 %lor.ext59)
  br label %if.end.60

if.end.60:                                        ; preds = %lor.end.58, %if.end.36
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.9, %if.else.14, %if.end.60, %if.end.22
  ret void
}

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #3

declare double @gimp_zoom_model_zoom_step(i32, double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #3

declare void @gimp_zoom_model_zoom(%struct._GimpZoomModel*, i32, double) #3

declare void @gimp_display_shell_scaled(%struct._GimpDisplayShell*) #3

declare %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow*) #3

declare void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scale_get_zoom_focus(%struct._GimpDisplayShell* %shell, double %new_scale, double %current_scale, i32* %x, i32* %y, i32 %zoom_focus) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %new_scale.addr = alloca double, align 8
  %current_scale.addr = alloca double, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %zoom_focus.addr = alloca i32, align 4
  %real_zoom_focus = alloca i32, align 4
  %image_center_x = alloca i32, align 4
  %image_center_y = alloca i32, align 4
  %other_x = alloca i32, align 4
  %other_y = alloca i32, align 4
  %event = alloca %union._GdkEvent*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %event_looks_sane = alloca i32, align 4
  %cursor_within_canvas = alloca i32, align 4
  %canvas_pointer_x = alloca i32, align 4
  %canvas_pointer_y = alloca i32, align 4
  %point = alloca %struct._GdkPoint*, align 8
  %centered = alloca i32, align 4
  %within_horizontally = alloca i32, align 4
  %within_vertically = alloca i32, align 4
  %stops_horizontally = alloca i32, align 4
  %stops_vertically = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %new_scale, double* %new_scale.addr, align 8
  store double %current_scale, double* %current_scale.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %zoom_focus, i32* %zoom_focus.addr, align 4
  %0 = load i32, i32* %zoom_focus.addr, align 4
  store i32 %0, i32* %real_zoom_focus, align 4
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_get_image_center_viewport(%struct._GimpDisplayShell* %1, i32* %image_center_x, i32* %image_center_y)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %2)
  %3 = bitcast %struct._GimpImageWindow* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %window, align 8
  %call3 = call %union._GdkEvent* @gtk_get_current_event()
  store %union._GdkEvent* %call3, %union._GdkEvent** %event, align 8
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %tobool = icmp ne %union._GdkEvent* %5, null
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call4 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 33
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %cmp = icmp eq %struct._GtkWidget* %call4, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call5 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %cmp6 = icmp eq %struct._GtkWidget* %call5, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  store i32 %lor.ext, i32* %event_looks_sane, align 4
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_focus_pointer_queue = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 101
  %13 = load %struct._GQueue*, %struct._GQueue** %zoom_focus_pointer_queue, align 8
  %call7 = call i8* @g_queue_peek_head(%struct._GQueue* %13)
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 33
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas9, align 8
  call void @gtk_widget_get_pointer(%struct._GtkWidget* %15, i32* %canvas_pointer_x, i32* %canvas_pointer_y)
  br label %if.end

if.else:                                          ; preds = %lor.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_focus_pointer_queue10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 101
  %17 = load %struct._GQueue*, %struct._GQueue** %zoom_focus_pointer_queue10, align 8
  %call11 = call i8* @g_queue_pop_head(%struct._GQueue* %17)
  %18 = bitcast i8* %call11 to %struct._GdkPoint*
  store %struct._GdkPoint* %18, %struct._GdkPoint** %point, align 8
  %19 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %19, i32 0, i32 0
  %20 = load i32, i32* %x12, align 4
  store i32 %20, i32* %canvas_pointer_x, align 4
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y13 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %21, i32 0, i32 1
  %22 = load i32, i32* %y13, align 4
  store i32 %22, i32* %canvas_pointer_y, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %23 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %24 = bitcast %struct._GdkPoint* %23 to i8*
  call void @g_slice_free1(i64 8, i8* %24)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %25 = load i32, i32* %canvas_pointer_x, align 4
  %cmp14 = icmp sge i32 %25, 0
  br i1 %cmp14, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %26 = load i32, i32* %canvas_pointer_y, align 4
  %cmp15 = icmp sge i32 %26, 0
  br i1 %cmp15, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %27 = load i32, i32* %canvas_pointer_x, align 4
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 28
  %29 = load i32, i32* %disp_width, align 4
  %cmp17 = icmp slt i32 %27, %29
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %30 = load i32, i32* %canvas_pointer_y, align 4
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 29
  %32 = load i32, i32* %disp_height, align 4
  %cmp18 = icmp slt i32 %30, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true, %if.end
  %33 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp18, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  store i32 %land.ext, i32* %cursor_within_canvas, align 4
  %34 = load i32, i32* %event_looks_sane, align 4
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.23

land.lhs.true.20:                                 ; preds = %land.end
  %35 = load i32, i32* %cursor_within_canvas, align 4
  %tobool21 = icmp ne i32 %35, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.20
  %36 = load i32, i32* %canvas_pointer_x, align 4
  store i32 %36, i32* %other_x, align 4
  %37 = load i32, i32* %canvas_pointer_y, align 4
  store i32 %37, i32* %other_y, align 4
  br label %if.end.27

if.else.23:                                       ; preds = %land.lhs.true.20, %land.end
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width24 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 28
  %39 = load i32, i32* %disp_width24, align 4
  %div = sdiv i32 %39, 2
  store i32 %div, i32* %other_x, align 4
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 29
  %41 = load i32, i32* %disp_height25, align 4
  %div26 = sdiv i32 %41, 2
  store i32 %div26, i32* %other_y, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.22
  %42 = load i32, i32* %zoom_focus.addr, align 4
  %cmp28 = icmp eq i32 %42, 3
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end.27
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %44 = load i32, i32* %image_center_x, align 4
  %45 = load i32, i32* %image_center_y, align 4
  %call30 = call i32 @gimp_display_shell_scale_viewport_coord_almost_centered(%struct._GimpDisplayShell* %43, i32 %44, i32 %45, i32* null, i32* null)
  store i32 %call30, i32* %centered, align 4
  %46 = load i32, i32* %centered, align 4
  %tobool31 = icmp ne i32 %46, 0
  %cond = select i1 %tobool31, i32 2, i32 0
  store i32 %cond, i32* %real_zoom_focus, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.27
  %47 = load i32, i32* %zoom_focus.addr, align 4
  store i32 %47, i32* %real_zoom_focus, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.29
  %48 = load i32, i32* %real_zoom_focus, align 4
  switch i32 %48, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.34
    i32 0, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.33
  %49 = load i32, i32* %other_x, align 4
  %50 = load i32*, i32** %x.addr, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %other_y, align 4
  %52 = load i32*, i32** %y.addr, align 8
  store i32 %51, i32* %52, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.33
  %53 = load i32, i32* %image_center_x, align 4
  %54 = load i32*, i32** %x.addr, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %image_center_y, align 4
  %56 = load i32*, i32** %y.addr, align 8
  store i32 %55, i32* %56, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.33
  br label %sw.default

sw.default:                                       ; preds = %if.end.33, %sw.bb.35
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call36 = call i32 @gimp_display_shell_scale_image_is_within_viewport(%struct._GimpDisplayShell* %57, i32* %within_horizontally, i32* %within_vertically)
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %59 = load double, double* %new_scale.addr, align 8
  %60 = load double, double* %current_scale.addr, align 8
  %call37 = call i32 @gimp_display_shell_scale_image_stops_to_fit(%struct._GimpDisplayShell* %58, double %59, double %60, i32* %stops_horizontally, i32* %stops_vertically)
  %61 = load i32, i32* %within_horizontally, align 4
  %tobool38 = icmp ne i32 %61, 0
  br i1 %tobool38, label %land.lhs.true.39, label %cond.false

land.lhs.true.39:                                 ; preds = %sw.default
  %62 = load i32, i32* %stops_horizontally, align 4
  %tobool40 = icmp ne i32 %62, 0
  br i1 %tobool40, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.39
  %63 = load i32, i32* %image_center_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.39, %sw.default
  %64 = load i32, i32* %other_x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i32 [ %63, %cond.true ], [ %64, %cond.false ]
  %65 = load i32*, i32** %x.addr, align 8
  store i32 %cond41, i32* %65, align 4
  %66 = load i32, i32* %within_vertically, align 4
  %tobool42 = icmp ne i32 %66, 0
  br i1 %tobool42, label %land.lhs.true.43, label %cond.false.46

land.lhs.true.43:                                 ; preds = %cond.end
  %67 = load i32, i32* %stops_vertically, align 4
  %tobool44 = icmp ne i32 %67, 0
  br i1 %tobool44, label %cond.false.46, label %cond.true.45

cond.true.45:                                     ; preds = %land.lhs.true.43
  %68 = load i32, i32* %image_center_y, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %land.lhs.true.43, %cond.end
  %69 = load i32, i32* %other_y, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %68, %cond.true.45 ], [ %69, %cond.false.46 ]
  %70 = load i32*, i32** %y.addr, align 8
  store i32 %cond48, i32* %70, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.47, %sw.bb.34, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scale_get_image_center_viewport(%struct._GimpDisplayShell* %shell, i32* %image_center_x, i32* %image_center_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image_center_x.addr = alloca i32*, align 8
  %image_center_y.addr = alloca i32*, align 8
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %image_center_x, i32** %image_center_x.addr, align 8
  store i32* %image_center_y, i32** %image_center_y.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %0, i32* %sw, i32* %sh)
  %1 = load i32*, i32** %image_center_x.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 11
  %3 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %3
  %4 = load i32, i32* %sw, align 4
  %div = sdiv i32 %4, 2
  %add = add nsw i32 %sub, %div
  %5 = load i32*, i32** %image_center_x.addr, align 8
  store i32 %add, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32*, i32** %image_center_y.addr, align 8
  %tobool1 = icmp ne i32* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 12
  %8 = load i32, i32* %offset_y, align 4
  %sub3 = sub nsw i32 0, %8
  %9 = load i32, i32* %sh, align 4
  %div4 = sdiv i32 %9, 2
  %add5 = add nsw i32 %sub3, %div4
  %10 = load i32*, i32** %image_center_y.addr, align 8
  store i32 %add5, i32* %10, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scale_to(%struct._GimpDisplayShell* %shell, double %scale, i32 %viewport_x, i32 %viewport_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale.addr = alloca double, align 8
  %viewport_x.addr = alloca i32, align 4
  %viewport_y.addr = alloca i32, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %image_focus_x = alloca double, align 8
  %image_focus_y = alloca double, align 8
  %target_offset_x = alloca i32, align 4
  %target_offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store i32 %viewport_x, i32* %viewport_x.addr, align 4
  store i32 %viewport_y, i32* %viewport_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_scale_to, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = load i32, i32* %viewport_x.addr, align 4
  %conv = sitofp i32 %16 to double
  %17 = load i32, i32* %viewport_y.addr, align 4
  %conv14 = sitofp i32 %17 to double
  call void @gimp_display_shell_untransform_xy_f(%struct._GimpDisplayShell* %15, double %conv, double %conv14, double* %image_focus_x, double* %image_focus_y)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %19 = load double, double* %scale.addr, align 8
  call void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell* %18, double %19, double* %scale_x, double* %scale_y)
  %20 = load double, double* %scale_x, align 8
  %21 = load double, double* %image_focus_x, align 8
  %mul = fmul double %20, %21
  %22 = load i32, i32* %viewport_x.addr, align 4
  %conv15 = sitofp i32 %22 to double
  %sub = fsub double %mul, %conv15
  %conv16 = fptosi double %sub to i32
  store i32 %conv16, i32* %target_offset_x, align 4
  %23 = load double, double* %scale_y, align 8
  %24 = load double, double* %image_focus_y, align 8
  %mul17 = fmul double %23, %24
  %25 = load i32, i32* %viewport_y.addr, align 4
  %conv18 = sitofp i32 %25 to double
  %sub19 = fsub double %mul17, %conv18
  %conv20 = fptosi double %sub19 to i32
  store i32 %conv20, i32* %target_offset_y, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %27 = load double, double* %scale.addr, align 8
  %28 = load i32, i32* %target_offset_x, align 4
  %29 = load i32, i32* %target_offset_y, align 4
  call void @gimp_display_shell_scale_by_values(%struct._GimpDisplayShell* %26, double %27, i32 %28, i32 %29, i32 0)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_scale_image_starts_to_fit(%struct._GimpDisplayShell* %shell, double %new_scale, double %current_scale, i32* %vertically, i32* %horizontally) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %new_scale.addr = alloca double, align 8
  %current_scale.addr = alloca double, align 8
  %vertically.addr = alloca i32*, align 8
  %horizontally.addr = alloca i32*, align 8
  %vertically_dummy = alloca i32, align 4
  %horizontally_dummy = alloca i32, align 4
  %current_scale_width = alloca i32, align 4
  %current_scale_height = alloca i32, align 4
  %new_scale_width = alloca i32, align 4
  %new_scale_height = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %new_scale, double* %new_scale.addr, align 8
  store double %current_scale, double* %current_scale.addr, align 8
  store i32* %vertically, i32** %vertically.addr, align 8
  store i32* %horizontally, i32** %horizontally.addr, align 8
  %0 = load i32*, i32** %vertically.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %vertically_dummy, i32** %vertically.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** %horizontally.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32* %horizontally_dummy, i32** %horizontally.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %new_scale.addr, align 8
  %3 = load double, double* %current_scale.addr, align 8
  %cmp = fcmp ogt double %2, %3
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %4 = load i32*, i32** %vertically.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %horizontally.addr, align 8
  store i32 0, i32* %5, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.3
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load double, double* %current_scale.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size_for_scale(%struct._GimpDisplayShell* %6, double %7, i32* %current_scale_width, i32* %current_scale_height)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = load double, double* %new_scale.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size_for_scale(%struct._GimpDisplayShell* %8, double %9, i32* %new_scale_width, i32* %new_scale_height)
  %10 = load i32, i32* %current_scale_width, align 4
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 28
  %12 = load i32, i32* %disp_width, align 4
  %cmp5 = icmp sgt i32 %10, %12
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %13 = load i32, i32* %new_scale_width, align 4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 28
  %15 = load i32, i32* %disp_width6, align 4
  %cmp7 = icmp sle i32 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %16 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %17 = load i32*, i32** %vertically.addr, align 8
  store i32 %land.ext, i32* %17, align 4
  %18 = load i32, i32* %current_scale_height, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 29
  %20 = load i32, i32* %disp_height, align 4
  %cmp8 = icmp sgt i32 %18, %20
  br i1 %cmp8, label %land.rhs.9, label %land.end.12

land.rhs.9:                                       ; preds = %land.end
  %21 = load i32, i32* %new_scale_height, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 29
  %23 = load i32, i32* %disp_height10, align 4
  %cmp11 = icmp sle i32 %21, %23
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.9, %land.end
  %24 = phi i1 [ false, %land.end ], [ %cmp11, %land.rhs.9 ]
  %land.ext13 = zext i1 %24 to i32
  %25 = load i32*, i32** %horizontally.addr, align 8
  store i32 %land.ext13, i32* %25, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %land.end.12, %if.then.4
  %26 = load i32*, i32** %vertically.addr, align 8
  %27 = load i32, i32* %26, align 4
  %tobool15 = icmp ne i32 %27, 0
  br i1 %tobool15, label %land.rhs.16, label %land.end.18

land.rhs.16:                                      ; preds = %if.end.14
  %28 = load i32*, i32** %horizontally.addr, align 8
  %29 = load i32, i32* %28, align 4
  %tobool17 = icmp ne i32 %29, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.16, %if.end.14
  %30 = phi i1 [ false, %if.end.14 ], [ %tobool17, %land.rhs.16 ]
  %land.ext19 = zext i1 %30 to i32
  ret i32 %land.ext19
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_scale_viewport_coord_almost_centered(%struct._GimpDisplayShell* %shell, i32 %x, i32 %y, i32* %horizontally, i32* %vertically) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %horizontally.addr = alloca i32*, align 8
  %vertically.addr = alloca i32*, align 8
  %local_horizontally = alloca i32, align 4
  %local_vertically = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %horizontally, i32** %horizontally.addr, align 8
  store i32* %vertically, i32** %vertically.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 28
  %1 = load i32, i32* %disp_width, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %center_x, align 4
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 29
  %3 = load i32, i32* %disp_height, align 4
  %div1 = sdiv i32 %3, 2
  store i32 %div1, i32* %center_y, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %center_x, align 4
  %sub = sub nsw i32 %5, 2
  %cmp = icmp sgt i32 %4, %sub
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %center_x, align 4
  %add = add nsw i32 %7, 2
  %cmp2 = icmp slt i32 %6, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %local_horizontally, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %center_y, align 4
  %sub3 = sub nsw i32 %10, 2
  %cmp4 = icmp sgt i32 %9, %sub3
  br i1 %cmp4, label %land.rhs.5, label %land.end.8

land.rhs.5:                                       ; preds = %land.end
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %center_y, align 4
  %add6 = add nsw i32 %12, 2
  %cmp7 = icmp slt i32 %11, %add6
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.5, %land.end
  %13 = phi i1 [ false, %land.end ], [ %cmp7, %land.rhs.5 ]
  %land.ext9 = zext i1 %13 to i32
  store i32 %land.ext9, i32* %local_vertically, align 4
  %14 = load i32*, i32** %horizontally.addr, align 8
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.8
  %15 = load i32, i32* %local_horizontally, align 4
  %16 = load i32*, i32** %horizontally.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.8
  %17 = load i32*, i32** %vertically.addr, align 8
  %tobool10 = icmp ne i32* %17, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %18 = load i32, i32* %local_vertically, align 4
  %19 = load i32*, i32** %vertically.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %20 = load i32, i32* %local_horizontally, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %land.rhs.14, label %land.end.16

land.rhs.14:                                      ; preds = %if.end.12
  %21 = load i32, i32* %local_vertically, align 4
  %tobool15 = icmp ne i32 %21, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.14, %if.end.12
  %22 = phi i1 [ false, %if.end.12 ], [ %tobool15, %land.rhs.14 ]
  %land.ext17 = zext i1 %22 to i32
  ret i32 %land.ext17
}

declare void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell*, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_fit_in(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %zoom_factor = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_scale_fit_in, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  store i32 %call12, i32* %image_width, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  store i32 %call13, i32* %image_height, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %17, double* %xres, double* %yres)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 17
  %19 = load i32, i32* %dot_for_dot, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %do.end
  %20 = load i32, i32* %image_width, align 4
  %conv = sitofp i32 %20 to double
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 15
  %22 = load double, double* %monitor_xres, align 8
  %mul = fmul double %conv, %22
  %23 = load double, double* %xres, align 8
  %div = fdiv double %mul, %23
  %add = fadd double %div, 5.000000e-01
  %conv16 = fptosi double %add to i32
  store i32 %conv16, i32* %image_width, align 4
  %24 = load i32, i32* %image_height, align 4
  %conv17 = sitofp i32 %24 to double
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 16
  %26 = load double, double* %monitor_yres, align 8
  %mul18 = fmul double %conv17, %26
  %27 = load double, double* %yres, align 8
  %div19 = fdiv double %mul18, %27
  %add20 = fadd double %div19, 5.000000e-01
  %conv21 = fptosi double %add20 to i32
  store i32 %conv21, i32* %image_height, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %do.end
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 28
  %29 = load i32, i32* %disp_width, align 4
  %conv23 = sitofp i32 %29 to double
  %30 = load i32, i32* %image_width, align 4
  %conv24 = sitofp i32 %30 to double
  %div25 = fdiv double %conv23, %conv24
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 29
  %32 = load i32, i32* %disp_height, align 4
  %conv26 = sitofp i32 %32 to double
  %33 = load i32, i32* %image_height, align 4
  %conv27 = sitofp i32 %33 to double
  %div28 = fdiv double %conv26, %conv27
  %cmp29 = fcmp olt double %div25, %div28
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 28
  %35 = load i32, i32* %disp_width31, align 4
  %conv32 = sitofp i32 %35 to double
  %36 = load i32, i32* %image_width, align 4
  %conv33 = sitofp i32 %36 to double
  %div34 = fdiv double %conv32, %conv33
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height35 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 29
  %38 = load i32, i32* %disp_height35, align 4
  %conv36 = sitofp i32 %38 to double
  %39 = load i32, i32* %image_height, align 4
  %conv37 = sitofp i32 %39 to double
  %div38 = fdiv double %conv36, %conv37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div34, %cond.true ], [ %div38, %cond.false ]
  store double %cond, double* %zoom_factor, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %41 = load double, double* %zoom_factor, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %40, i32 6, double %41, i32 0)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %42, i32 1, i32 1)
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_scale_image_is_within_viewport(%struct._GimpDisplayShell* %shell, i32* %horizontally, i32* %vertically) #0 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %horizontally.addr = alloca i32*, align 8
  %vertically.addr = alloca i32*, align 8
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %horizontally_dummy = alloca i32, align 4
  %vertically_dummy = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %horizontally, i32** %horizontally.addr, align 8
  store i32* %vertically, i32** %vertically.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__func__.gimp_display_shell_scale_image_is_within_viewport, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %horizontally.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32* %horizontally_dummy, i32** %horizontally.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %14 = load i32*, i32** %vertically.addr, align 8
  %tobool14 = icmp ne i32* %14, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i32* %vertically_dummy, i32** %vertically.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %15, i32* %sw, i32* %sh)
  %16 = load i32, i32* %sw, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 28
  %18 = load i32, i32* %disp_width, align 4
  %cmp17 = icmp sle i32 %16, %18
  br i1 %cmp17, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %if.end.16
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 11
  %20 = load i32, i32* %offset_x, align 4
  %cmp19 = icmp sle i32 %20, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 11
  %22 = load i32, i32* %offset_x20, align 4
  %23 = load i32, i32* %sw, align 4
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 28
  %25 = load i32, i32* %disp_width21, align 4
  %sub = sub nsw i32 %23, %25
  %cmp22 = icmp sge i32 %22, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %if.end.16
  %26 = phi i1 [ false, %land.lhs.true.18 ], [ false, %if.end.16 ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  %27 = load i32*, i32** %horizontally.addr, align 8
  store i32 %land.ext, i32* %27, align 4
  %28 = load i32, i32* %sh, align 4
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 29
  %30 = load i32, i32* %disp_height, align 4
  %cmp23 = icmp sle i32 %28, %30
  br i1 %cmp23, label %land.lhs.true.24, label %land.end.31

land.lhs.true.24:                                 ; preds = %land.end
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 12
  %32 = load i32, i32* %offset_y, align 4
  %cmp25 = icmp sle i32 %32, 0
  br i1 %cmp25, label %land.rhs.26, label %land.end.31

land.rhs.26:                                      ; preds = %land.lhs.true.24
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 12
  %34 = load i32, i32* %offset_y27, align 4
  %35 = load i32, i32* %sh, align 4
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height28 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 29
  %37 = load i32, i32* %disp_height28, align 4
  %sub29 = sub nsw i32 %35, %37
  %cmp30 = icmp sge i32 %34, %sub29
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.26, %land.lhs.true.24, %land.end
  %38 = phi i1 [ false, %land.lhs.true.24 ], [ false, %land.end ], [ %cmp30, %land.rhs.26 ]
  %land.ext32 = zext i1 %38 to i32
  %39 = load i32*, i32** %vertically.addr, align 8
  store i32 %land.ext32, i32* %39, align 4
  %40 = load i32*, i32** %vertically.addr, align 8
  %41 = load i32, i32* %40, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %land.rhs.34, label %land.end.36

land.rhs.34:                                      ; preds = %land.end.31
  %42 = load i32*, i32** %horizontally.addr, align 8
  %43 = load i32, i32* %42, align 4
  %tobool35 = icmp ne i32 %43, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.34, %land.end.31
  %44 = phi i1 [ false, %land.end.31 ], [ %tobool35, %land.rhs.34 ]
  %land.ext37 = zext i1 %44 to i32
  store i32 %land.ext37, i32* %retval
  br label %return

return:                                           ; preds = %land.end.36, %if.else.9
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_fill(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %zoom_factor = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_scale_fill, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  store i32 %call12, i32* %image_width, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  store i32 %call13, i32* %image_height, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %17, double* %xres, double* %yres)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 17
  %19 = load i32, i32* %dot_for_dot, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %do.end
  %20 = load i32, i32* %image_width, align 4
  %conv = sitofp i32 %20 to double
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 15
  %22 = load double, double* %monitor_xres, align 8
  %mul = fmul double %conv, %22
  %23 = load double, double* %xres, align 8
  %div = fdiv double %mul, %23
  %add = fadd double %div, 5.000000e-01
  %conv16 = fptosi double %add to i32
  store i32 %conv16, i32* %image_width, align 4
  %24 = load i32, i32* %image_height, align 4
  %conv17 = sitofp i32 %24 to double
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 16
  %26 = load double, double* %monitor_yres, align 8
  %mul18 = fmul double %conv17, %26
  %27 = load double, double* %yres, align 8
  %div19 = fdiv double %mul18, %27
  %add20 = fadd double %div19, 5.000000e-01
  %conv21 = fptosi double %add20 to i32
  store i32 %conv21, i32* %image_height, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %do.end
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 28
  %29 = load i32, i32* %disp_width, align 4
  %conv23 = sitofp i32 %29 to double
  %30 = load i32, i32* %image_width, align 4
  %conv24 = sitofp i32 %30 to double
  %div25 = fdiv double %conv23, %conv24
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 29
  %32 = load i32, i32* %disp_height, align 4
  %conv26 = sitofp i32 %32 to double
  %33 = load i32, i32* %image_height, align 4
  %conv27 = sitofp i32 %33 to double
  %div28 = fdiv double %conv26, %conv27
  %cmp29 = fcmp ogt double %div25, %div28
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 28
  %35 = load i32, i32* %disp_width31, align 4
  %conv32 = sitofp i32 %35 to double
  %36 = load i32, i32* %image_width, align 4
  %conv33 = sitofp i32 %36 to double
  %div34 = fdiv double %conv32, %conv33
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height35 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 29
  %38 = load i32, i32* %disp_height35, align 4
  %conv36 = sitofp i32 %38 to double
  %39 = load i32, i32* %image_height, align 4
  %conv37 = sitofp i32 %39 to double
  %div38 = fdiv double %conv36, %conv37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div34, %cond.true ], [ %div38, %cond.false ]
  store double %cond, double* %zoom_factor, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %41 = load double, double* %zoom_factor, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %40, i32 6, double %41, i32 0)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %42, i32 1, i32 1)
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_handle_zoom_revert(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %now = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_display_shell_scale_handle_zoom_revert, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @time(i64* null) #7
  %conv = trunc i64 %call11 to i32
  store i32 %conv, i32* %now, align 4
  %13 = load i32, i32* %now, align 4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale_time = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 24
  %15 = load i32, i32* %last_scale_time, align 4
  %sub = sub i32 %13, %15
  %cmp12 = icmp uge i32 %sub, 2
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 22
  %17 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call15 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 23
  store double %call15, double* %last_scale, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 11
  %20 = load i32, i32* %offset_x, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 25
  store i32 %20, i32* %last_offset_x, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 12
  %23 = load i32, i32* %offset_y, align 4
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 26
  store i32 %23, i32* %last_offset_y, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %25 = load i32, i32* %now, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %last_scale_time17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 24
  store i32 %25, i32* %last_scale_time17, align 4
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_shrink_wrap(%struct._GimpDisplayShell* %shell, i32 %grow_only) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %grow_only.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %grow_only, i32* %grow_only.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_scale_shrink_wrap, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load i32, i32* %grow_only.addr, align 4
  call void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell* %13, i32 1, i32 %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_expose_full(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell* %shell, double %scale, double* %scale_x, double* %scale_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale.addr = alloca double, align 8
  %scale_x.addr = alloca double*, align 8
  %scale_y.addr = alloca double*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %screen_xres = alloca double, align 8
  %screen_yres = alloca double, align 8
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
  store double* %scale_x, double** %scale_x.addr, align 8
  store double* %scale_y, double** %scale_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_display_shell_calculate_scale_x_and_y, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.47

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
  %call17 = call i64 @gimp_image_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_display_shell_calculate_scale_x_and_y, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.47

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %28, double* %xres, double* %yres)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_get_screen_resolution(%struct._GimpDisplayShell* %29, double* %screen_xres, double* %screen_yres)
  %30 = load double*, double** %scale_x.addr, align 8
  %tobool40 = icmp ne double* %30, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  %31 = load double, double* %scale.addr, align 8
  %32 = load double, double* %screen_xres, align 8
  %mul = fmul double %31, %32
  %33 = load double, double* %xres, align 8
  %div = fdiv double %mul, %33
  %34 = load double*, double** %scale_x.addr, align 8
  store double %div, double* %34, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.end.39
  %35 = load double*, double** %scale_y.addr, align 8
  %tobool43 = icmp ne double* %35, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %36 = load double, double* %scale.addr, align 8
  %37 = load double, double* %screen_yres, align 8
  %mul45 = fmul double %36, %37
  %38 = load double, double* %yres, align 8
  %div46 = fdiv double %mul45, %38
  %39 = load double*, double** %scale_y.addr, align 8
  store double %div46, double* %39, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.9, %if.else.37, %if.then.44, %if.end.42
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_initial_scale(%struct._GimpDisplayShell* %shell, double %scale, i32* %display_width, i32* %display_height) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale.addr = alloca double, align 8
  %display_width.addr = alloca i32*, align 8
  %display_height.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %shell_width = alloca i32, align 4
  %shell_height = alloca i32, align 4
  %screen_width = alloca i32, align 4
  %screen_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new_scale = alloca double, align 8
  %current = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store i32* %display_width, i32** %display_width.addr, align 8
  store i32* %display_height, i32** %display_height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_set_initial_scale, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.104

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = bitcast %struct._GimpDisplayShell* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %17)
  store %struct._GdkScreen* %call14, %struct._GdkScreen** %screen, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_get_width(%struct._GimpImage* %18)
  store i32 %call15, i32* %image_width, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  store i32 %call16, i32* %image_height, align 4
  %20 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call17 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %20)
  %conv = sitofp i32 %call17 to double
  %mul = fmul double %conv, 7.500000e-01
  %conv18 = fptosi double %mul to i32
  store i32 %conv18, i32* %screen_width, align 4
  %21 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call19 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %21)
  %conv20 = sitofp i32 %call19 to double
  %mul21 = fmul double %conv20, 7.500000e-01
  %conv22 = fptosi double %mul21 to i32
  store i32 %conv22, i32* %screen_height, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 22
  %23 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %24 = load double, double* %scale.addr, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %23, i32 6, double %24)
  %25 = load i32, i32* %image_width, align 4
  %conv23 = sitofp i32 %25 to double
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 13
  %27 = load double, double* %scale_x, align 8
  %mul24 = fmul double %conv23, %27
  %call25 = call double @rint(double %mul24) #5
  %conv26 = fptosi double %call25 to i32
  store i32 %conv26, i32* %shell_width, align 4
  %28 = load i32, i32* %image_height, align 4
  %conv27 = sitofp i32 %28 to double
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 14
  %30 = load double, double* %scale_y, align 8
  %mul28 = fmul double %conv27, %30
  %call29 = call double @rint(double %mul28) #5
  %conv30 = fptosi double %call29 to i32
  store i32 %conv30, i32* %shell_height, align 4
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 1
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display31, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %32, i32 0, i32 2
  %33 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %initial_zoom_to_fit = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %33, i32 0, i32 8
  %34 = load i32, i32* %initial_zoom_to_fit, align 4
  %tobool32 = icmp ne i32 %34, 0
  br i1 %tobool32, label %if.then.33, label %if.else.89

if.then.33:                                       ; preds = %do.end
  %35 = load i32, i32* %shell_width, align 4
  %36 = load i32, i32* %screen_width, align 4
  %cmp34 = icmp sgt i32 %35, %36
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.33
  %37 = load i32, i32* %shell_height, align 4
  %38 = load i32, i32* %screen_height, align 4
  %cmp36 = icmp sgt i32 %37, %38
  br i1 %cmp36, label %if.then.38, label %if.end.88

if.then.38:                                       ; preds = %lor.lhs.false, %if.then.33
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom41 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 22
  %40 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom41, align 8
  %call42 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %40)
  store double %call42, double* %current, align 8
  %41 = load double, double* %current, align 8
  %42 = load i32, i32* %screen_height, align 4
  %conv43 = sitofp i32 %42 to double
  %43 = load i32, i32* %shell_height, align 4
  %conv44 = sitofp i32 %43 to double
  %div = fdiv double %conv43, %conv44
  %44 = load i32, i32* %screen_width, align 4
  %conv45 = sitofp i32 %44 to double
  %45 = load i32, i32* %shell_width, align 4
  %conv46 = sitofp i32 %45 to double
  %div47 = fdiv double %conv45, %conv46
  %cmp48 = fcmp olt double %div, %div47
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.38
  %46 = load i32, i32* %screen_height, align 4
  %conv50 = sitofp i32 %46 to double
  %47 = load i32, i32* %shell_height, align 4
  %conv51 = sitofp i32 %47 to double
  %div52 = fdiv double %conv50, %conv51
  br label %cond.end

cond.false:                                       ; preds = %if.then.38
  %48 = load i32, i32* %screen_width, align 4
  %conv53 = sitofp i32 %48 to double
  %49 = load i32, i32* %shell_width, align 4
  %conv54 = sitofp i32 %49 to double
  %div55 = fdiv double %conv53, %conv54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div52, %cond.true ], [ %div55, %cond.false ]
  %mul56 = fmul double %41, %cond
  store double %mul56, double* %new_scale, align 8
  %50 = load double, double* %new_scale, align 8
  %call57 = call double @gimp_zoom_model_zoom_step(i32 1, double %50)
  store double %call57, double* %new_scale, align 8
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %51, i32 0, i32 22
  %52 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom58, align 8
  %53 = load double, double* %new_scale, align 8
  %call59 = call double @gimp_zoom_model_zoom_step(i32 0, double %53)
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %52, i32 6, double %call59)
  %54 = load i32, i32* %image_width, align 4
  %conv60 = sitofp i32 %54 to double
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 13
  %56 = load double, double* %scale_x61, align 8
  %mul62 = fmul double %conv60, %56
  %call63 = call double @rint(double %mul62) #5
  %conv64 = fptosi double %call63 to i32
  %57 = load i32, i32* %screen_width, align 4
  %cmp65 = icmp sgt i32 %conv64, %57
  br i1 %cmp65, label %if.then.75, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %cond.end
  %58 = load i32, i32* %image_height, align 4
  %conv68 = sitofp i32 %58 to double
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y69 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 14
  %60 = load double, double* %scale_y69, align 8
  %mul70 = fmul double %conv68, %60
  %call71 = call double @rint(double %mul70) #5
  %conv72 = fptosi double %call71 to i32
  %61 = load i32, i32* %screen_height, align 4
  %cmp73 = icmp sgt i32 %conv72, %61
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %lor.lhs.false.67, %cond.end
  %62 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom76 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %62, i32 0, i32 22
  %63 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom76, align 8
  %64 = load double, double* %new_scale, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %63, i32 6, double %64)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %lor.lhs.false.67
  %65 = load i32, i32* %image_width, align 4
  %conv78 = sitofp i32 %65 to double
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x79 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 13
  %67 = load double, double* %scale_x79, align 8
  %mul80 = fmul double %conv78, %67
  %call81 = call double @rint(double %mul80) #5
  %conv82 = fptosi double %call81 to i32
  store i32 %conv82, i32* %shell_width, align 4
  %68 = load i32, i32* %image_height, align 4
  %conv83 = sitofp i32 %68 to double
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y84 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %69, i32 0, i32 14
  %70 = load double, double* %scale_y84, align 8
  %mul85 = fmul double %conv83, %70
  %call86 = call double @rint(double %mul85) #5
  %conv87 = fptosi double %call86 to i32
  store i32 %conv87, i32* %shell_height, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.77, %lor.lhs.false
  br label %if.end.98

if.else.89:                                       ; preds = %do.end
  %71 = load i32, i32* %shell_width, align 4
  %72 = load i32, i32* %screen_width, align 4
  %cmp90 = icmp sgt i32 %71, %72
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.89
  %73 = load i32, i32* %screen_width, align 4
  store i32 %73, i32* %shell_width, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.else.89
  %74 = load i32, i32* %shell_height, align 4
  %75 = load i32, i32* %screen_height, align 4
  %cmp94 = icmp sgt i32 %74, %75
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  %76 = load i32, i32* %screen_height, align 4
  store i32 %76, i32* %shell_height, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.93
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.88
  %77 = load i32*, i32** %display_width.addr, align 8
  %tobool99 = icmp ne i32* %77, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  %78 = load i32, i32* %shell_width, align 4
  %79 = load i32*, i32** %display_width.addr, align 8
  store i32 %78, i32* %79, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.98
  %80 = load i32*, i32** %display_height.addr, align 8
  %tobool102 = icmp ne i32* %80, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.101
  %81 = load i32, i32* %shell_height, align 4
  %82 = load i32*, i32** %display_height.addr, align 8
  store i32 %81, i32* %82, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.9, %if.then.103, %if.end.101
  ret void
}

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #3

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_push_zoom_focus_pointer_pos(%struct._GimpDisplayShell* %shell, i32 %x, i32 %y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %point = alloca %struct._GdkPoint*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_slice_alloc(i64 8)
  %0 = bitcast i8* %call to %struct._GdkPoint*
  store %struct._GdkPoint* %0, %struct._GdkPoint** %point, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  store i32 %1, i32* %x1, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  store i32 %3, i32* %y2, align 4
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_focus_pointer_queue = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 101
  %6 = load %struct._GQueue*, %struct._GQueue** %zoom_focus_pointer_queue, align 8
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %8 = bitcast %struct._GdkPoint* %7 to i8*
  call void @g_queue_push_head(%struct._GQueue* %6, i8* %8)
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare void @g_queue_push_head(%struct._GQueue*, i8*) #3

declare void @gimp_display_shell_untransform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #3

declare void @gimp_display_shell_draw_get_scaled_image_size_for_scale(%struct._GimpDisplayShell*, double, i32*, i32*) #3

declare %union._GdkEvent* @gtk_get_current_event() #3

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #3

declare i8* @g_queue_peek_head(%struct._GQueue*) #3

declare void @gtk_widget_get_pointer(%struct._GtkWidget*, i32*, i32*) #3

declare i8* @g_queue_pop_head(%struct._GQueue*) #3

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_scale_image_stops_to_fit(%struct._GimpDisplayShell* %shell, double %new_scale, double %current_scale, i32* %vertically, i32* %horizontally) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %new_scale.addr = alloca double, align 8
  %current_scale.addr = alloca double, align 8
  %vertically.addr = alloca i32*, align 8
  %horizontally.addr = alloca i32*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %new_scale, double* %new_scale.addr, align 8
  store double %current_scale, double* %current_scale.addr, align 8
  store i32* %vertically, i32** %vertically.addr, align 8
  store i32* %horizontally, i32** %horizontally.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = load double, double* %current_scale.addr, align 8
  %2 = load double, double* %new_scale.addr, align 8
  %3 = load i32*, i32** %vertically.addr, align 8
  %4 = load i32*, i32** %horizontally.addr, align 8
  %call = call i32 @gimp_display_shell_scale_image_starts_to_fit(%struct._GimpDisplayShell* %0, double %1, double %2, i32* %3, i32* %4)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
