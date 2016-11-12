; ModuleID = './app/display/gimpdisplayshell-cursor.bc'
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
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpCursorView = type { %struct._GimpEditor, %struct._GimpCursorViewPriv* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpCursorViewPriv = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_set_cursor = private unnamed_addr constant [30 x i8] c"gimp_display_shell_set_cursor\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_unset_cursor = private unnamed_addr constant [32 x i8] c"gimp_display_shell_unset_cursor\00", align 1
@__func__.gimp_display_shell_set_override_cursor = private unnamed_addr constant [39 x i8] c"gimp_display_shell_set_override_cursor\00", align 1
@__func__.gimp_display_shell_unset_override_cursor = private unnamed_addr constant [41 x i8] c"gimp_display_shell_unset_override_cursor\00", align 1
@__func__.gimp_display_shell_update_software_cursor = private unnamed_addr constant [42 x i8] c"gimp_display_shell_update_software_cursor\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"gimp-cursor-view\00", align 1
@__func__.gimp_display_shell_clear_software_cursor = private unnamed_addr constant [41 x i8] c"gimp_display_shell_clear_software_cursor\00", align 1
@__func__.gimp_display_shell_real_set_cursor = private unnamed_addr constant [35 x i8] c"gimp_display_shell_real_set_cursor\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell* %shell, i32 %cursor_type, i32 %tool_cursor, i32 %modifier) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cursor_type.addr = alloca i32, align 4
  %tool_cursor.addr = alloca i32, align 4
  %modifier.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %cursor_type, i32* %cursor_type.addr, align 4
  store i32 %tool_cursor, i32* %tool_cursor.addr, align 4
  store i32 %modifier, i32* %modifier.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_set_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 71
  %14 = load i32, i32* %using_override_cursor, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = load i32, i32* %cursor_type.addr, align 4
  %17 = load i32, i32* %tool_cursor.addr, align 4
  %18 = load i32, i32* %modifier.addr, align 4
  call void @gimp_display_shell_real_set_cursor(%struct._GimpDisplayShell* %15, i32 %16, i32 %17, i32 %18, i32 0)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_real_set_cursor(%struct._GimpDisplayShell* %shell, i32 %cursor_type, i32 %tool_cursor, i32 %modifier, i32 %always_install) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cursor_type.addr = alloca i32, align 4
  %tool_cursor.addr = alloca i32, align 4
  %modifier.addr = alloca i32, align 4
  %always_install.addr = alloca i32, align 4
  %cursor_format = alloca i32, align 4
  %cursor_handedness = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %cursor_type, i32* %cursor_type.addr, align 4
  store i32 %tool_cursor, i32* %tool_cursor.addr, align 4
  store i32 %modifier, i32* %modifier.addr, align 4
  store i32 %always_install, i32* %always_install.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_display_shell_real_set_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.66

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %cursor_type.addr, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.end
  %14 = load i32, i32* %cursor_type.addr, align 4
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %current_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 67
  store i32 %14, i32* %current_cursor, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 33
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call13 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.12
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 33
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas16, align 8
  %call17 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %19)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call17, %struct._GdkCursor* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.66

if.end.19:                                        ; preds = %do.end
  %20 = load i32, i32* %cursor_type.addr, align 4
  %cmp20 = icmp ne i32 %20, 1024
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.33

land.lhs.true.21:                                 ; preds = %if.end.19
  %21 = load i32, i32* %cursor_type.addr, align 4
  %cmp22 = icmp ne i32 %21, 1028
  br i1 %cmp22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %land.lhs.true.21
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 1
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %23, i32 0, i32 2
  %24 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %cursor_mode = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %24, i32 0, i32 10
  %25 = load i32, i32* %cursor_mode, align 4
  switch i32 %25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.24
    i32 2, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.then.23
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.23
  %26 = load i32, i32* %cursor_type.addr, align 4
  %cmp25 = icmp ult i32 %26, 1032
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.24
  %27 = load i32, i32* %cursor_type.addr, align 4
  %cmp26 = icmp ugt i32 %27, 1039
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %sw.bb.24
  store i32 1027, i32* %cursor_type.addr, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %lor.lhs.false
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.23
  store i32 1026, i32* %cursor_type.addr, align 4
  store i32 0, i32* %tool_cursor.addr, align 4
  %28 = load i32, i32* %modifier.addr, align 4
  %cmp30 = icmp ne i32 %28, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.29
  store i32 0, i32* %modifier.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %sw.bb.29
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.23, %if.end.32, %if.end.28, %sw.bb
  br label %if.end.33

if.end.33:                                        ; preds = %sw.epilog, %land.lhs.true.21, %if.end.19
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 1
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display34, align 8
  %config35 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %30, i32 0, i32 2
  %31 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config35, align 8
  %32 = bitcast %struct._GimpDisplayConfig* %31 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_gui_config_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call36)
  %33 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpGuiConfig*
  %cursor_format38 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %33, i32 0, i32 29
  %34 = load i32, i32* %cursor_format38, align 4
  store i32 %34, i32* %cursor_format, align 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 1
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display39, align 8
  %config40 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %36, i32 0, i32 2
  %37 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config40, align 8
  %38 = bitcast %struct._GimpDisplayConfig* %37 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_gui_config_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call41)
  %39 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpGuiConfig*
  %cursor_handedness43 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %39, i32 0, i32 30
  %40 = load i32, i32* %cursor_handedness43, align 4
  store i32 %40, i32* %cursor_handedness, align 4
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_format44 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 65
  %42 = load i32, i32* %cursor_format44, align 4
  %43 = load i32, i32* %cursor_format, align 4
  %cmp45 = icmp ne i32 %42, %43
  br i1 %cmp45, label %if.then.59, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.end.33
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_handedness47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 66
  %45 = load i32, i32* %cursor_handedness47, align 4
  %46 = load i32, i32* %cursor_handedness, align 4
  %cmp48 = icmp ne i32 %45, %46
  br i1 %cmp48, label %if.then.59, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %current_cursor50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 67
  %48 = load i32, i32* %current_cursor50, align 4
  %49 = load i32, i32* %cursor_type.addr, align 4
  %cmp51 = icmp ne i32 %48, %49
  br i1 %cmp51, label %if.then.59, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.49
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tool_cursor53 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 68
  %51 = load i32, i32* %tool_cursor53, align 4
  %52 = load i32, i32* %tool_cursor.addr, align 4
  %cmp54 = icmp ne i32 %51, %52
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.52
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_modifier = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 69
  %54 = load i32, i32* %cursor_modifier, align 4
  %55 = load i32, i32* %modifier.addr, align 4
  %cmp56 = icmp ne i32 %54, %55
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.55
  %56 = load i32, i32* %always_install.addr, align 4
  %tobool58 = icmp ne i32 %56, 0
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.55, %lor.lhs.false.52, %lor.lhs.false.49, %lor.lhs.false.46, %if.end.33
  %57 = load i32, i32* %cursor_format, align 4
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_format60 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 65
  store i32 %57, i32* %cursor_format60, align 4
  %59 = load i32, i32* %cursor_handedness, align 4
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_handedness61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 66
  store i32 %59, i32* %cursor_handedness61, align 4
  %61 = load i32, i32* %cursor_type.addr, align 4
  %62 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %current_cursor62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %62, i32 0, i32 67
  store i32 %61, i32* %current_cursor62, align 4
  %63 = load i32, i32* %tool_cursor.addr, align 4
  %64 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tool_cursor63 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %64, i32 0, i32 68
  store i32 %63, i32* %tool_cursor63, align 4
  %65 = load i32, i32* %modifier.addr, align 4
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_modifier64 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 69
  store i32 %65, i32* %cursor_modifier64, align 4
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas65 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %67, i32 0, i32 33
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas65, align 8
  %69 = load i32, i32* %cursor_format, align 4
  %70 = load i32, i32* %cursor_handedness, align 4
  %71 = load i32, i32* %cursor_type.addr, align 4
  %72 = load i32, i32* %tool_cursor.addr, align 4
  %73 = load i32, i32* %modifier.addr, align 4
  call void @gimp_cursor_set(%struct._GtkWidget* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.9, %if.end.18, %if.then.59, %lor.lhs.false.57
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_unset_cursor(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_unset_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 71
  %14 = load i32, i32* %using_override_cursor, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_real_set_cursor(%struct._GimpDisplayShell* %15, i32 -1, i32 0, i32 0, i32 0)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell* %shell, i32 %cursor_type) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cursor_type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %cursor_type, i32* %cursor_type.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_display_shell_set_override_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 71
  %14 = load i32, i32* %using_override_cursor, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 71
  %16 = load i32, i32* %using_override_cursor12, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %lor.lhs.false
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 70
  %18 = load i32, i32* %override_cursor, align 4
  %19 = load i32, i32* %cursor_type.addr, align 4
  %cmp15 = icmp ne i32 %18, %19
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true.14, %do.end
  %20 = load i32, i32* %cursor_type.addr, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %override_cursor17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 70
  store i32 %20, i32* %override_cursor17, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 71
  store i32 1, i32* %using_override_cursor18, align 4
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 33
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_format = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 65
  %26 = load i32, i32* %cursor_format, align 4
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_handedness = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 66
  %28 = load i32, i32* %cursor_handedness, align 4
  %29 = load i32, i32* %cursor_type.addr, align 4
  call void @gimp_cursor_set(%struct._GtkWidget* %24, i32 %26, i32 %28, i32 %29, i32 0, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.16, %land.lhs.true.14, %lor.lhs.false
  ret void
}

declare void @gimp_cursor_set(%struct._GtkWidget*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_display_shell_unset_override_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 71
  %14 = load i32, i32* %using_override_cursor, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %using_override_cursor13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 71
  store i32 0, i32* %using_override_cursor13, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %current_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 67
  %18 = load i32, i32* %current_cursor, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tool_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 68
  %20 = load i32, i32* %tool_cursor, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_modifier = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 69
  %22 = load i32, i32* %cursor_modifier, align 4
  call void @gimp_display_shell_real_set_cursor(%struct._GimpDisplayShell* %16, i32 %18, i32 %20, i32 %22, i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_update_software_cursor(%struct._GimpDisplayShell* %shell, i32 %precision, i32 %display_x, i32 %display_y, double %image_x, double %image_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %precision.addr = alloca i32, align 4
  %display_x.addr = alloca i32, align 4
  %display_y.addr = alloca i32, align 4
  %image_x.addr = alloca double, align 8
  %image_y.addr = alloca double, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cursor_view = alloca %struct._GtkWidget*, align 8
  %t_x = alloca i32, align 4
  %t_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %display_x, i32* %display_x.addr, align 4
  store i32 %display_y, i32* %display_y.addr, align 4
  store double %image_x, double* %image_x.addr, align 8
  store double %image_y, double* %image_y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_display_shell_update_software_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.52

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %draw_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 72
  %16 = load i32, i32* %draw_cursor, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.24

land.lhs.true.13:                                 ; preds = %do.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 30
  %18 = load i32, i32* %proximity, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else.24

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %19 = load i32, i32* %display_x.addr, align 4
  %cmp16 = icmp sge i32 %19, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.24

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %20 = load i32, i32* %display_y.addr, align 4
  %cmp18 = icmp sge i32 %20, 0
  br i1 %cmp18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %land.lhs.true.17
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 57
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 57
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor20, align 8
  %25 = load i32, i32* %display_x.addr, align 4
  %conv = sitofp i32 %25 to double
  %26 = load i32, i32* %display_y.addr, align 4
  %conv21 = sitofp i32 %26 to double
  call void @gimp_canvas_cursor_set(%struct._GimpCanvasItem* %24, double %conv, double %conv21)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor22 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 57
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor22, align 8
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %28, i32 1)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 57
  %30 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor23, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %30)
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true.13, %do.end
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 57
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor25, align 8
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %32, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.19
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call27 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %33)
  store %struct._GimpStatusbar* %call27, %struct._GimpStatusbar** %statusbar, align 8
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %35 = load i32, i32* %precision.addr, align 4
  %36 = load double, double* %image_x.addr, align 8
  %37 = load double, double* %image_y.addr, align 8
  call void @gimp_statusbar_update_cursor(%struct._GimpStatusbar* %34, i32 %35, double %36, double %37)
  %call28 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call29 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %widget, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool30 = icmp ne %struct._GtkWidget* %38, null
  br i1 %tobool30, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %if.end.26
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_bin_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call33)
  %41 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBin*
  %call35 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %41)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %cursor_view, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_view, align 8
  %tobool36 = icmp ne %struct._GtkWidget* %42, null
  br i1 %tobool36, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %if.then.31
  store i32 -1, i32* %t_x, align 4
  store i32 -1, i32* %t_y, align 4
  %43 = load i32, i32* %display_x.addr, align 4
  %cmp40 = icmp sge i32 %43, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.then.37
  %44 = load i32, i32* %display_y.addr, align 4
  %cmp43 = icmp sge i32 %44, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.42
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %46 = load i32, i32* %display_x.addr, align 4
  %47 = load i32, i32* %display_y.addr, align 4
  call void @gimp_display_shell_untransform_xy(%struct._GimpDisplayShell* %45, i32 %46, i32 %47, i32* %t_x, i32* %t_y, i32 0)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.then.37
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_view, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_cursor_view_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call47)
  %50 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpCursorView*
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 10
  %53 = load i32, i32* %unit, align 4
  %54 = load i32, i32* %t_x, align 4
  %conv49 = sitofp i32 %54 to double
  %55 = load i32, i32* %t_y, align 4
  %conv50 = sitofp i32 %55 to double
  call void @gimp_cursor_view_update_cursor(%struct._GimpCursorView* %50, %struct._GimpImage* %51, i32 %53, double %conv49, double %conv50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.46, %if.then.31
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.9, %if.end.51, %if.end.26
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #3

declare void @gimp_canvas_cursor_set(%struct._GimpCanvasItem*, double, double) #3

declare void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem*, i32) #3

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #3

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #3

declare void @gimp_statusbar_update_cursor(%struct._GimpStatusbar*, i32, double, double) #3

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

declare void @gimp_display_shell_untransform_xy(%struct._GimpDisplayShell*, i32, i32, i32*, i32*, i32) #3

declare void @gimp_cursor_view_update_cursor(%struct._GimpCursorView*, %struct._GimpImage*, i32, double, double) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_cursor_view_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_clear_software_cursor(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cursor_view = alloca %struct._GtkWidget*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_display_shell_clear_software_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 57
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %cursor, align 8
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %14, i32 0)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call11 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %15)
  store %struct._GimpStatusbar* %call11, %struct._GimpStatusbar** %statusbar, align 8
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_clear_cursor(%struct._GimpStatusbar* %16)
  %call12 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call13 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %widget, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %do.end
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_bin_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBin*
  %call19 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %20)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %cursor_view, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_view, align 8
  %tobool20 = icmp ne %struct._GtkWidget* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.15
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_cursor_view_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpCursorView*
  call void @gimp_cursor_view_clear_cursor(%struct._GimpCursorView* %24)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.end.24, %do.end
  ret void
}

declare void @gimp_statusbar_clear_cursor(%struct._GimpStatusbar*) #3

declare void @gimp_cursor_view_clear_cursor(%struct._GimpCursorView*) #3

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #3

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
