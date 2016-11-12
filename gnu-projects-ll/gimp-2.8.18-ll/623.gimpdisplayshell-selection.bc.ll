; ModuleID = './app/display/gimpdisplayshell-selection.bc'
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
%struct._GimpZoomModel = type opaque
%struct._Selection = type { %struct._GimpDisplayShell*, %struct._GimpSegment*, i32, %struct._GimpSegment*, i32, i32, i32, i32, i32, i32, %struct._cairo_pattern* }
%struct._GimpSegment = type { i32, i32, i32, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._cairo = type opaque
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_selection_init = private unnamed_addr constant [34 x i8] c"gimp_display_shell_selection_init\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"shell->selection == NULL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"window-state-event\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"visibility-notify-event\00", align 1
@__func__.gimp_display_shell_selection_free = private unnamed_addr constant [34 x i8] c"gimp_display_shell_selection_free\00", align 1
@__func__.gimp_display_shell_selection_undraw = private unnamed_addr constant [36 x i8] c"gimp_display_shell_selection_undraw\00", align 1
@__func__.gimp_display_shell_selection_restart = private unnamed_addr constant [37 x i8] c"gimp_display_shell_selection_restart\00", align 1
@__func__.gimp_display_shell_selection_pause = private unnamed_addr constant [35 x i8] c"gimp_display_shell_selection_pause\00", align 1
@__func__.gimp_display_shell_selection_resume = private unnamed_addr constant [36 x i8] c"gimp_display_shell_selection_resume\00", align 1
@__func__.gimp_display_shell_selection_set_show = private unnamed_addr constant [38 x i8] c"gimp_display_shell_selection_set_show\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_init(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %selection = alloca %struct._Selection*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_selection_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection12, align 8
  %cmp13 = icmp eq %struct._Selection* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_selection_init, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @g_slice_alloc0(i64 64)
  %15 = bitcast i8* %call18 to %struct._Selection*
  store %struct._Selection* %15, %struct._Selection** %selection, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %shell19 = getelementptr inbounds %struct._Selection, %struct._Selection* %17, i32 0, i32 0
  store %struct._GimpDisplayShell* %16, %struct._GimpDisplayShell** %shell19, align 8
  %18 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %shell_visible = getelementptr inbounds %struct._Selection, %struct._Selection* %18, i32 0, i32 7
  store i32 1, i32* %shell_visible, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call20 = call i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell* %19)
  %20 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %show_selection = getelementptr inbounds %struct._Selection, %struct._Selection* %20, i32 0, i32 8
  store i32 %call20, i32* %show_selection, align 4
  %21 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 31
  store %struct._Selection* %21, %struct._Selection** %selection21, align 8
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %24 = bitcast %struct._GimpDisplayShell* %23 to i8*
  %25 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %26 = bitcast %struct._Selection* %25 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*, %struct._Selection*)* @selection_window_state_event to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = bitcast %struct._GimpDisplayShell* %27 to i8*
  %29 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %30 = bitcast %struct._Selection* %29 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*, %struct._Selection*)* @selection_visibility_notify_event to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @selection_window_state_event(%struct._GtkWidget* %shell, %struct._GdkEventWindowState* %event, %struct._Selection* %selection) #0 {
entry:
  %shell.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventWindowState*, align 8
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._GtkWidget* %shell, %struct._GtkWidget** %shell.addr, align 8
  store %struct._GdkEventWindowState* %event, %struct._GdkEventWindowState** %event.addr, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %1 = load %struct._GdkEventWindowState*, %struct._GdkEventWindowState** %event.addr, align 8
  %new_window_state = getelementptr inbounds %struct._GdkEventWindowState, %struct._GdkEventWindowState* %1, i32 0, i32 4
  %2 = load i32, i32* %new_window_state, align 4
  %and = and i32 %2, 3
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  call void @selection_set_shell_visible(%struct._Selection* %0, i32 %conv)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @selection_visibility_notify_event(%struct._GtkWidget* %shell, %struct._GdkEventVisibility* %event, %struct._Selection* %selection) #0 {
entry:
  %shell.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventVisibility*, align 8
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._GtkWidget* %shell, %struct._GtkWidget** %shell.addr, align 8
  store %struct._GdkEventVisibility* %event, %struct._GdkEventVisibility** %event.addr, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %1 = load %struct._GdkEventVisibility*, %struct._GdkEventVisibility** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventVisibility, %struct._GdkEventVisibility* %1, i32 0, i32 3
  %2 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %2, 2
  %conv = zext i1 %cmp to i32
  call void @selection_set_shell_visible(%struct._Selection* %0, i32 %conv)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_free(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selection14 = alloca %struct._Selection*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_selection_free, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 31
  %16 = load %struct._Selection*, %struct._Selection** %selection15, align 8
  store %struct._Selection* %16, %struct._Selection** %selection14, align 8
  %17 = load %struct._Selection*, %struct._Selection** %selection14, align 8
  call void @selection_stop(%struct._Selection* %17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %19 = bitcast %struct._GimpDisplayShell* %18 to i8*
  %20 = load %struct._Selection*, %struct._Selection** %selection14, align 8
  %21 = bitcast %struct._Selection* %20 to i8*
  %call16 = call i32 @g_signal_handlers_disconnect_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*, %struct._Selection*)* @selection_window_state_event to i8*), i8* %21)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %23 = bitcast %struct._GimpDisplayShell* %22 to i8*
  %24 = load %struct._Selection*, %struct._Selection** %selection14, align 8
  %25 = bitcast %struct._Selection* %24 to i8*
  %call17 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*, %struct._Selection*)* @selection_visibility_notify_event to i8*), i8* %25)
  %26 = load %struct._Selection*, %struct._Selection** %selection14, align 8
  call void @selection_free_segs(%struct._Selection* %26)
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.12
  %27 = load %struct._Selection*, %struct._Selection** %selection14, align 8
  %28 = bitcast %struct._Selection* %27 to i8*
  call void @g_slice_free1(i64 64, i8* %28)
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 31
  store %struct._Selection* null, %struct._Selection** %selection20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %do.end.19, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @selection_stop(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 9
  %1 = load i32, i32* %timeout, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout1 = getelementptr inbounds %struct._Selection, %struct._Selection* %2, i32 0, i32 9
  %3 = load i32, i32* %timeout1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout2 = getelementptr inbounds %struct._Selection, %struct._Selection* %4, i32 0, i32 9
  store i32 0, i32* %timeout2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @selection_free_segs(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 1
  %1 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in, align 8
  %tobool = icmp ne %struct._GimpSegment* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in1 = getelementptr inbounds %struct._Selection, %struct._Selection* %2, i32 0, i32 1
  %3 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in1, align 8
  %4 = bitcast %struct._GimpSegment* %3 to i8*
  call void @g_free(i8* %4)
  %5 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in2 = getelementptr inbounds %struct._Selection, %struct._Selection* %5, i32 0, i32 1
  store %struct._GimpSegment* null, %struct._GimpSegment** %segs_in2, align 8
  %6 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %6, i32 0, i32 2
  store i32 0, i32* %n_segs_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out = getelementptr inbounds %struct._Selection, %struct._Selection* %7, i32 0, i32 3
  %8 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_out, align 8
  %tobool3 = icmp ne %struct._GimpSegment* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out5 = getelementptr inbounds %struct._Selection, %struct._Selection* %9, i32 0, i32 3
  %10 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_out5, align 8
  %11 = bitcast %struct._GimpSegment* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out6 = getelementptr inbounds %struct._Selection, %struct._Selection* %12, i32 0, i32 3
  store %struct._GimpSegment* null, %struct._GimpSegment** %segs_out6, align 8
  %13 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out = getelementptr inbounds %struct._Selection, %struct._Selection* %13, i32 0, i32 4
  store i32 0, i32* %n_segs_out, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %14 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in_mask = getelementptr inbounds %struct._Selection, %struct._Selection* %14, i32 0, i32 10
  %15 = load %struct._cairo_pattern*, %struct._cairo_pattern** %segs_in_mask, align 8
  %tobool8 = icmp ne %struct._cairo_pattern* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %16 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in_mask10 = getelementptr inbounds %struct._Selection, %struct._Selection* %16, i32 0, i32 10
  %17 = load %struct._cairo_pattern*, %struct._cairo_pattern** %segs_in_mask10, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %17)
  %18 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in_mask11 = getelementptr inbounds %struct._Selection, %struct._Selection* %18, i32 0, i32 10
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %segs_in_mask11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  ret void
}

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_undraw(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_selection_undraw, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.else.17

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 31
  %18 = load %struct._Selection*, %struct._Selection** %selection16, align 8
  call void @selection_undraw(%struct._Selection* %18)
  br label %if.end.20

if.else.17:                                       ; preds = %land.lhs.true.12, %do.end
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 31
  %20 = load %struct._Selection*, %struct._Selection** %selection18, align 8
  call void @selection_stop(%struct._Selection* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 31
  %22 = load %struct._Selection*, %struct._Selection** %selection19, align 8
  call void @selection_free_segs(%struct._Selection* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.else.17, %if.then.15
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define internal void @selection_undraw(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_stop(%struct._Selection* %0)
  %1 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %1, i32 0, i32 0
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call = call i32 @gimp_display_shell_mask_bounds(%struct._GimpDisplayShell* %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell1 = getelementptr inbounds %struct._Selection, %struct._Selection* %3, i32 0, i32 0
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  %5 = load i32, i32* %x1, align 4
  %6 = load i32, i32* %y1, align 4
  %7 = load i32, i32* %x2, align 4
  %8 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %7, %8
  %9 = load i32, i32* %y2, align 4
  %10 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %9, %10
  call void @gimp_display_shell_expose_area(%struct._GimpDisplayShell* %4, i32 %5, i32 %6, i32 %sub, i32 %sub2)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_start(%struct._Selection* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_restart(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_selection_restart, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.17

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 31
  %18 = load %struct._Selection*, %struct._Selection** %selection16, align 8
  call void @selection_start(%struct._Selection* %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %land.lhs.true.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @selection_start(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_stop(%struct._Selection* %0)
  %1 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %paused = getelementptr inbounds %struct._Selection, %struct._Selection* %1, i32 0, i32 6
  %2 = load i32, i32* %paused, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %4 = bitcast %struct._Selection* %3 to i8*
  %call = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._Selection*)* @selection_start_timeout to i32 (i8*)*), i8* %4)
  %5 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout = getelementptr inbounds %struct._Selection, %struct._Selection* %5, i32 0, i32 9
  store i32 %call, i32* %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_display_shell_selection_pause, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.23

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 31
  %18 = load %struct._Selection*, %struct._Selection** %selection16, align 8
  %paused = getelementptr inbounds %struct._Selection, %struct._Selection* %18, i32 0, i32 6
  %19 = load i32, i32* %paused, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 31
  %21 = load %struct._Selection*, %struct._Selection** %selection19, align 8
  call void @selection_stop(%struct._Selection* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.15
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 31
  %23 = load %struct._Selection*, %struct._Selection** %selection21, align 8
  %paused22 = getelementptr inbounds %struct._Selection, %struct._Selection* %23, i32 0, i32 6
  %24 = load i32, i32* %paused22, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %paused22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.end.20, %land.lhs.true.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %shell) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_selection_resume, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.23

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 31
  %18 = load %struct._Selection*, %struct._Selection** %selection16, align 8
  %paused = getelementptr inbounds %struct._Selection, %struct._Selection* %18, i32 0, i32 6
  %19 = load i32, i32* %paused, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %paused, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 31
  %21 = load %struct._Selection*, %struct._Selection** %selection17, align 8
  %paused18 = getelementptr inbounds %struct._Selection, %struct._Selection* %21, i32 0, i32 6
  %22 = load i32, i32* %paused18, align 4
  %cmp19 = icmp eq i32 %22, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.15
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 31
  %24 = load %struct._Selection*, %struct._Selection** %selection21, align 8
  call void @selection_start(%struct._Selection* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.end.22, %land.lhs.true.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_selection_set_show(%struct._GimpDisplayShell* %shell, i32 %show) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %show.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selection17 = alloca %struct._Selection*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %show, i32* %show.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_selection_set_show, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 31
  %14 = load %struct._Selection*, %struct._Selection** %selection, align 8
  %tobool11 = icmp ne %struct._Selection* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.23

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  %tobool14 = icmp ne %struct._GimpImage* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %selection18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 31
  %18 = load %struct._Selection*, %struct._Selection** %selection18, align 8
  store %struct._Selection* %18, %struct._Selection** %selection17, align 8
  %19 = load i32, i32* %show.addr, align 4
  %20 = load %struct._Selection*, %struct._Selection** %selection17, align 8
  %show_selection = getelementptr inbounds %struct._Selection, %struct._Selection* %20, i32 0, i32 8
  %21 = load i32, i32* %show_selection, align 4
  %cmp19 = icmp ne i32 %19, %21
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.15
  %22 = load %struct._Selection*, %struct._Selection** %selection17, align 8
  call void @selection_undraw(%struct._Selection* %22)
  %23 = load i32, i32* %show.addr, align 4
  %24 = load %struct._Selection*, %struct._Selection** %selection17, align 8
  %show_selection21 = getelementptr inbounds %struct._Selection, %struct._Selection* %24, i32 0, i32 8
  store i32 %23, i32* %show_selection21, align 4
  %25 = load %struct._Selection*, %struct._Selection** %selection17, align 8
  call void @selection_start(%struct._Selection* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.end.22, %land.lhs.true.12, %do.end
  ret void
}

declare i32 @g_idle_add(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @selection_start_timeout(%struct._Selection* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct._Selection*, align 8
  %config = alloca %struct._GimpDisplayConfig*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_free_segs(%struct._Selection* %0)
  %1 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout = getelementptr inbounds %struct._Selection, %struct._Selection* %1, i32 0, i32 9
  store i32 0, i32* %timeout, align 4
  %2 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %2, i32 0, i32 0
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_generate_segs(%struct._Selection* %5)
  %6 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %index = getelementptr inbounds %struct._Selection, %struct._Selection* %6, i32 0, i32 5
  store i32 0, i32* %index, align 4
  %7 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %show_selection = getelementptr inbounds %struct._Selection, %struct._Selection* %7, i32 0, i32 8
  %8 = load i32, i32* %show_selection, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then.2, label %if.end.20

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell3 = getelementptr inbounds %struct._Selection, %struct._Selection* %9, i32 0, i32 0
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell3, align 8
  %display4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %config5 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %11, i32 0, i32 2
  %12 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config5, align 8
  store %struct._GimpDisplayConfig* %12, %struct._GimpDisplayConfig** %config, align 8
  %13 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_draw(%struct._Selection* %13)
  %14 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out = getelementptr inbounds %struct._Selection, %struct._Selection* %14, i32 0, i32 3
  %15 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_out, align 8
  %tobool6 = icmp ne %struct._GimpSegment* %15, null
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.then.2
  %16 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell8 = getelementptr inbounds %struct._Selection, %struct._Selection* %16, i32 0, i32 0
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell8, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 33
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %18)
  %call10 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call9)
  store %struct._cairo* %call10, %struct._cairo** %cr, align 8
  %19 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell11 = getelementptr inbounds %struct._Selection, %struct._Selection* %19, i32 0, i32 0
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell11, align 8
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %22 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out12 = getelementptr inbounds %struct._Selection, %struct._Selection* %22, i32 0, i32 3
  %23 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_out12, align 8
  %24 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out = getelementptr inbounds %struct._Selection, %struct._Selection* %24, i32 0, i32 4
  %25 = load i32, i32* %n_segs_out, align 4
  call void @gimp_display_shell_draw_selection_out(%struct._GimpDisplayShell* %20, %struct._cairo* %21, %struct._GimpSegment* %23, i32 %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %26)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.then.2
  %27 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %27, i32 0, i32 1
  %28 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in, align 8
  %tobool14 = icmp ne %struct._GimpSegment* %28, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.13
  %29 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell_visible = getelementptr inbounds %struct._Selection, %struct._Selection* %29, i32 0, i32 7
  %30 = load i32, i32* %shell_visible, align 4
  %tobool15 = icmp ne i32 %30, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true
  %31 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %marching_ants_speed = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %31, i32 0, i32 4
  %32 = load i32, i32* %marching_ants_speed, align 4
  %33 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %34 = bitcast %struct._Selection* %33 to i8*
  %call17 = call i32 @g_timeout_add_full(i32 200, i32 %32, i32 (i8*)* bitcast (i32 (%struct._Selection*)* @selection_timeout to i32 (i8*)*), i8* %34, void (i8*)* null)
  %35 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %timeout18 = getelementptr inbounds %struct._Selection, %struct._Selection* %35, i32 0, i32 9
  store i32 %call17, i32* %timeout18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @selection_generate_segs(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %segs_in = alloca %struct._BoundSeg*, align 8
  %segs_out = alloca %struct._BoundSeg*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 0
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 1
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %3)
  %4 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %4, i32 0, i32 2
  %5 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out = getelementptr inbounds %struct._Selection, %struct._Selection* %5, i32 0, i32 4
  %call2 = call i32 @gimp_channel_boundary(%struct._GimpChannel* %call1, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %n_segs_in, i32* %n_segs_out, i32 0, i32 0, i32 0, i32 0)
  %6 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in3 = getelementptr inbounds %struct._Selection, %struct._Selection* %6, i32 0, i32 2
  %7 = load i32, i32* %n_segs_in3, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in4 = getelementptr inbounds %struct._Selection, %struct._Selection* %8, i32 0, i32 2
  %9 = load i32, i32* %n_segs_in4, align 4
  %conv = sext i32 %9 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %10 = bitcast i8* %call5 to %struct._GimpSegment*
  %11 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in6 = getelementptr inbounds %struct._Selection, %struct._Selection* %11, i32 0, i32 1
  store %struct._GimpSegment* %10, %struct._GimpSegment** %segs_in6, align 8
  %12 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %14 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in7 = getelementptr inbounds %struct._Selection, %struct._Selection* %14, i32 0, i32 1
  %15 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in7, align 8
  %16 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in8 = getelementptr inbounds %struct._Selection, %struct._Selection* %16, i32 0, i32 2
  %17 = load i32, i32* %n_segs_in8, align 4
  call void @selection_transform_segs(%struct._Selection* %12, %struct._BoundSeg* %13, %struct._GimpSegment* %15, i32 %17)
  %18 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_render_mask(%struct._Selection* %18)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in9 = getelementptr inbounds %struct._Selection, %struct._Selection* %19, i32 0, i32 1
  store %struct._GimpSegment* null, %struct._GimpSegment** %segs_in9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out10 = getelementptr inbounds %struct._Selection, %struct._Selection* %20, i32 0, i32 4
  %21 = load i32, i32* %n_segs_out10, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.end
  %22 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out13 = getelementptr inbounds %struct._Selection, %struct._Selection* %22, i32 0, i32 4
  %23 = load i32, i32* %n_segs_out13, align 4
  %conv14 = sext i32 %23 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 16)
  %24 = bitcast i8* %call15 to %struct._GimpSegment*
  %25 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out16 = getelementptr inbounds %struct._Selection, %struct._Selection* %25, i32 0, i32 3
  store %struct._GimpSegment* %24, %struct._GimpSegment** %segs_out16, align 8
  %26 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %27 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %28 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out17 = getelementptr inbounds %struct._Selection, %struct._Selection* %28, i32 0, i32 3
  %29 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_out17, align 8
  %30 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_out18 = getelementptr inbounds %struct._Selection, %struct._Selection* %30, i32 0, i32 4
  %31 = load i32, i32* %n_segs_out18, align 4
  call void @selection_transform_segs(%struct._Selection* %26, %struct._BoundSeg* %27, %struct._GimpSegment* %29, i32 %31)
  br label %if.end.21

if.else.19:                                       ; preds = %if.end
  %32 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_out20 = getelementptr inbounds %struct._Selection, %struct._Selection* %32, i32 0, i32 3
  store %struct._GimpSegment* null, %struct._GimpSegment** %segs_out20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @selection_draw(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 1
  %1 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in, align 8
  %tobool = icmp ne %struct._GimpSegment* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %2, i32 0, i32 0
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 33
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %5 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell2 = getelementptr inbounds %struct._Selection, %struct._Selection* %5, i32 0, i32 0
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell2, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %8 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in_mask = getelementptr inbounds %struct._Selection, %struct._Selection* %8, i32 0, i32 10
  %9 = load %struct._cairo_pattern*, %struct._cairo_pattern** %segs_in_mask, align 8
  %10 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %index = getelementptr inbounds %struct._Selection, %struct._Selection* %10, i32 0, i32 5
  %11 = load i32, i32* %index, align 4
  %rem = urem i32 %11, 8
  call void @gimp_display_shell_draw_selection_in(%struct._GimpDisplayShell* %6, %struct._cairo* %7, %struct._cairo_pattern* %9, i32 %rem)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare void @gimp_display_shell_draw_selection_out(%struct._GimpDisplayShell*, %struct._cairo*, %struct._GimpSegment*, i32) #3

declare void @cairo_destroy(%struct._cairo*) #3

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @selection_timeout(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %index = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 5
  %1 = load i32, i32* %index, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %index, align 4
  %2 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_draw(%struct._Selection* %2)
  ret i32 1
}

declare i32 @gimp_channel_boundary(%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare noalias i8* @g_malloc_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @selection_transform_segs(%struct._Selection* %selection, %struct._BoundSeg* %src_segs, %struct._GimpSegment* %dest_segs, i32 %n_segs) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %src_segs.addr = alloca %struct._BoundSeg*, align 8
  %dest_segs.addr = alloca %struct._GimpSegment*, align 8
  %n_segs.addr = alloca i32, align 4
  %xclamp = alloca i32, align 4
  %yclamp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  store %struct._BoundSeg* %src_segs, %struct._BoundSeg** %src_segs.addr, align 8
  store %struct._GimpSegment* %dest_segs, %struct._GimpSegment** %dest_segs.addr, align 8
  store i32 %n_segs, i32* %n_segs.addr, align 4
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 0
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 28
  %2 = load i32, i32* %disp_width, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %xclamp, align 4
  %3 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell1 = getelementptr inbounds %struct._Selection, %struct._Selection* %3, i32 0, i32 0
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 29
  %5 = load i32, i32* %disp_height, align 4
  %add2 = add nsw i32 %5, 1
  store i32 %add2, i32* %yclamp, align 4
  %6 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell3 = getelementptr inbounds %struct._Selection, %struct._Selection* %6, i32 0, i32 0
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell3, align 8
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %9 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %10 = load i32, i32* %n_segs.addr, align 4
  call void @gimp_display_shell_transform_segments(%struct._GimpDisplayShell* %7, %struct._BoundSeg* %8, %struct._GimpSegment* %9, i32 %10, double 0.000000e+00, double 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_segs.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %14, i64 %idxprom
  %x1 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx, i32 0, i32 0
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %xclamp, align 4
  %cmp4 = icmp sgt i32 %15, %16
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load i32, i32* %xclamp, align 4
  br label %cond.end.14

cond.false:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %18 to i64
  %19 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %19, i64 %idxprom5
  %x17 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx6, i32 0, i32 0
  %20 = load i32, i32* %x17, align 4
  %cmp8 = icmp slt i32 %20, -1
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %22, i64 %idxprom11
  %x113 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx12, i32 0, i32 0
  %23 = load i32, i32* %x113, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi i32 [ -1, %cond.true.9 ], [ %23, %cond.false.10 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi i32 [ %17, %cond.true ], [ %cond, %cond.end ]
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %25, i64 %idxprom16
  %x118 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx17, i32 0, i32 0
  store i32 %cond15, i32* %x118, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %27, i64 %idxprom19
  %y1 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx20, i32 0, i32 1
  %28 = load i32, i32* %y1, align 4
  %29 = load i32, i32* %yclamp, align 4
  %cmp21 = icmp sgt i32 %28, %29
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.14
  %30 = load i32, i32* %yclamp, align 4
  br label %cond.end.35

cond.false.23:                                    ; preds = %cond.end.14
  %31 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %32, i64 %idxprom24
  %y126 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx25, i32 0, i32 1
  %33 = load i32, i32* %y126, align 4
  %cmp27 = icmp slt i32 %33, -1
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.23
  br label %cond.end.33

cond.false.29:                                    ; preds = %cond.false.23
  %34 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %35, i64 %idxprom30
  %y132 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx31, i32 0, i32 1
  %36 = load i32, i32* %y132, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.28
  %cond34 = phi i32 [ -1, %cond.true.28 ], [ %36, %cond.false.29 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.22
  %cond36 = phi i32 [ %30, %cond.true.22 ], [ %cond34, %cond.end.33 ]
  %37 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %38, i64 %idxprom37
  %y139 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx38, i32 0, i32 1
  store i32 %cond36, i32* %y139, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %40, i64 %idxprom40
  %x2 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx41, i32 0, i32 2
  %41 = load i32, i32* %x2, align 4
  %42 = load i32, i32* %xclamp, align 4
  %cmp42 = icmp sgt i32 %41, %42
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.35
  %43 = load i32, i32* %xclamp, align 4
  br label %cond.end.56

cond.false.44:                                    ; preds = %cond.end.35
  %44 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %44 to i64
  %45 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %45, i64 %idxprom45
  %x247 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx46, i32 0, i32 2
  %46 = load i32, i32* %x247, align 4
  %cmp48 = icmp slt i32 %46, -1
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false.44
  br label %cond.end.54

cond.false.50:                                    ; preds = %cond.false.44
  %47 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %47 to i64
  %48 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %48, i64 %idxprom51
  %x253 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx52, i32 0, i32 2
  %49 = load i32, i32* %x253, align 4
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.50, %cond.true.49
  %cond55 = phi i32 [ -1, %cond.true.49 ], [ %49, %cond.false.50 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.43
  %cond57 = phi i32 [ %43, %cond.true.43 ], [ %cond55, %cond.end.54 ]
  %50 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %51, i64 %idxprom58
  %x260 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx59, i32 0, i32 2
  store i32 %cond57, i32* %x260, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %53, i64 %idxprom61
  %y2 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx62, i32 0, i32 3
  %54 = load i32, i32* %y2, align 4
  %55 = load i32, i32* %yclamp, align 4
  %cmp63 = icmp sgt i32 %54, %55
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.56
  %56 = load i32, i32* %yclamp, align 4
  br label %cond.end.77

cond.false.65:                                    ; preds = %cond.end.56
  %57 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %58, i64 %idxprom66
  %y268 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx67, i32 0, i32 3
  %59 = load i32, i32* %y268, align 4
  %cmp69 = icmp slt i32 %59, -1
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.false.65
  br label %cond.end.75

cond.false.71:                                    ; preds = %cond.false.65
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %61, i64 %idxprom72
  %y274 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx73, i32 0, i32 3
  %62 = load i32, i32* %y274, align 4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.71, %cond.true.70
  %cond76 = phi i32 [ -1, %cond.true.70 ], [ %62, %cond.false.71 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.64
  %cond78 = phi i32 [ %56, %cond.true.64 ], [ %cond76, %cond.end.75 ]
  %63 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %63 to i64
  %64 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %64, i64 %idxprom79
  %y281 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx80, i32 0, i32 3
  store i32 %cond78, i32* %y281, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %66, i64 %idxprom82
  %open = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx83, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.107, label %if.then

if.then:                                          ; preds = %cond.end.77
  %67 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %67 to i64
  %68 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %68, i64 %idxprom84
  %x186 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx85, i32 0, i32 0
  %69 = load i32, i32* %x186, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %70 to i64
  %71 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %71, i64 %idxprom87
  %x289 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx88, i32 0, i32 2
  %72 = load i32, i32* %x289, align 4
  %cmp90 = icmp eq i32 %69, %72
  br i1 %cmp90, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.then
  %73 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %73 to i64
  %74 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %74, i64 %idxprom92
  %x194 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx93, i32 0, i32 0
  %75 = load i32, i32* %x194, align 4
  %sub = sub nsw i32 %75, 1
  store i32 %sub, i32* %x194, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %77, i64 %idxprom95
  %x297 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx96, i32 0, i32 2
  %78 = load i32, i32* %x297, align 4
  %sub98 = sub nsw i32 %78, 1
  store i32 %sub98, i32* %x297, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %79 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %79 to i64
  %80 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %80, i64 %idxprom99
  %y1101 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx100, i32 0, i32 1
  %81 = load i32, i32* %y1101, align 4
  %sub102 = sub nsw i32 %81, 1
  store i32 %sub102, i32* %y1101, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %82 to i64
  %83 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %83, i64 %idxprom103
  %y2105 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx104, i32 0, i32 3
  %84 = load i32, i32* %y2105, align 4
  %sub106 = sub nsw i32 %84, 1
  store i32 %sub106, i32* %y2105, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.91
  br label %if.end.107

if.end.107:                                       ; preds = %if.end, %cond.end.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %85 = load i32, i32* %i, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @selection_render_mask(%struct._Selection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 0
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 33
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  store %struct._GdkDrawable* %call, %struct._GdkDrawable** %window, align 8
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call1 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %4)
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call2 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %5)
  %call3 = call %struct._cairo_surface* @gdk_window_create_similar_surface(%struct._GdkDrawable* %3, i32 8192, i32 %call1, i32 %call2)
  store %struct._cairo_surface* %call3, %struct._cairo_surface** %surface, align 8
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call4 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %6)
  store %struct._cairo* %call4, %struct._cairo** %cr, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_cap(%struct._cairo* %7, i32 2)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %8, double 1.000000e+00)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %10, i32 0, i32 1
  %11 = load %struct._GimpSegment*, %struct._GimpSegment** %segs_in, align 8
  %12 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %n_segs_in = getelementptr inbounds %struct._Selection, %struct._Selection* %12, i32 0, i32 2
  %13 = load i32, i32* %n_segs_in, align 4
  call void @gimp_cairo_add_segments(%struct._cairo* %9, %struct._GimpSegment* %11, i32 %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %14)
  %15 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call5 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %15)
  %16 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %segs_in_mask = getelementptr inbounds %struct._Selection, %struct._Selection* %16, i32 0, i32 10
  store %struct._cairo_pattern* %call5, %struct._cairo_pattern** %segs_in_mask, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %17)
  %18 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %18)
  ret void
}

declare void @gimp_display_shell_transform_segments(%struct._GimpDisplayShell*, %struct._BoundSeg*, %struct._GimpSegment*, i32, double, double) #3

declare %struct._cairo_surface* @gdk_window_create_similar_surface(%struct._GdkDrawable*, i32, i32, i32) #3

declare i32 @gdk_window_get_width(%struct._GdkDrawable*) #3

declare i32 @gdk_window_get_height(%struct._GdkDrawable*) #3

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #3

declare void @cairo_set_line_cap(%struct._cairo*, i32) #3

declare void @cairo_set_line_width(%struct._cairo*, double) #3

declare void @gimp_cairo_add_segments(%struct._cairo*, %struct._GimpSegment*, i32) #3

declare void @cairo_stroke(%struct._cairo*) #3

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #3

declare void @cairo_surface_destroy(%struct._cairo_surface*) #3

declare void @gimp_display_shell_draw_selection_in(%struct._GimpDisplayShell*, %struct._cairo*, %struct._cairo_pattern*, i32) #3

declare i32 @g_source_remove(i32) #3

declare i32 @gimp_display_shell_mask_bounds(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #3

declare void @gimp_display_shell_expose_area(%struct._GimpDisplayShell*, i32, i32, i32, i32) #3

declare void @g_free(i8*) #3

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #3

; Function Attrs: nounwind uwtable
define internal void @selection_set_shell_visible(%struct._Selection* %selection, i32 %shell_visible) #0 {
entry:
  %selection.addr = alloca %struct._Selection*, align 8
  %shell_visible.addr = alloca i32, align 4
  store %struct._Selection* %selection, %struct._Selection** %selection.addr, align 8
  store i32 %shell_visible, i32* %shell_visible.addr, align 4
  %0 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell_visible1 = getelementptr inbounds %struct._Selection, %struct._Selection* %0, i32 0, i32 7
  %1 = load i32, i32* %shell_visible1, align 4
  %2 = load i32, i32* %shell_visible.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %shell_visible.addr, align 4
  %4 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  %shell_visible2 = getelementptr inbounds %struct._Selection, %struct._Selection* %4, i32 0, i32 7
  store i32 %3, i32* %shell_visible2, align 4
  %5 = load i32, i32* %shell_visible.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_start(%struct._Selection* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._Selection*, %struct._Selection** %selection.addr, align 8
  call void @selection_stop(%struct._Selection* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
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
