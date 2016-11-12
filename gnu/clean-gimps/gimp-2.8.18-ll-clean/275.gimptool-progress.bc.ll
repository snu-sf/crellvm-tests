; ModuleID = './app/tools/gimptool-progress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._Gimp = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_tool_progress_start = private unnamed_addr constant [25 x i8] c"gimp_tool_progress_start\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"GIMP_IS_DISPLAY (tool->display)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tool->progress == NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_tool_progress_iface_init(%struct._GimpProgressInterface* %iface) #0 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_tool_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_tool_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_tool_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_tool_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_tool_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_tool_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_tool_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_tool_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_tool_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #0 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %5 = bitcast %struct._GimpDisplay* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_display_get_type() #4
  store i64 %call2, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_progress_start, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 15
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress14, align 8
  %cmp15 = icmp eq %struct._GimpCanvasItem* %18, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.13
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_progress_start, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display20, align 8
  %call21 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %20)
  store %struct._GimpDisplayShell* %call21, %struct._GimpDisplayShell** %shell, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %21, i32* %x, i32* %y, i32* %w, i32* %h)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %w, align 4
  %div = sdiv i32 %24, 2
  %add = add nsw i32 %23, %div
  %conv = sitofp i32 %add to double
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %h, align 4
  %div22 = sdiv i32 %26, 2
  %add23 = add nsw i32 %25, %div22
  %conv24 = sitofp i32 %add23 to double
  %call25 = call %struct._GimpCanvasItem* @gimp_canvas_progress_new(%struct._GimpDisplayShell* %22, i32 0, double %conv, double %conv24)
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 15
  store %struct._GimpCanvasItem* %call25, %struct._GimpCanvasItem** %progress26, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 15
  %30 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress27, align 8
  call void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell* %28, %struct._GimpCanvasItem* %30)
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress28 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 15
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress28, align 8
  %33 = bitcast %struct._GimpCanvasItem* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress29 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 15
  %35 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress29, align 8
  %36 = bitcast %struct._GimpCanvasItem* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_progress_interface_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpProgress*
  %38 = load i8*, i8** %message.addr, align 8
  %call32 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %37, i8* %38, i32 0)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 33
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %40)
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display33 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 4
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display33, align 8
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 16
  store %struct._GimpDisplay* %42, %struct._GimpDisplay** %progress_display, align 8
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %44, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.11
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %45
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_progress_end(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 15
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress2, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 16
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %progress_display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 15
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress4, align 8
  %9 = bitcast %struct._GimpCanvasItem* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %10)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 15
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress7, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %11, %struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 15
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %progress8, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress_display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 16
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %progress_display9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_progress_is_active(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 15
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress2, align 8
  %cmp = icmp ne %struct._GimpCanvasItem* %4, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 15
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress2, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 16
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %progress_display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 15
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress4, align 8
  %9 = bitcast %struct._GimpCanvasItem* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %11 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %10, i8* %11)
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 33
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 15
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress2, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 16
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %progress_display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 15
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress4, align 8
  %9 = bitcast %struct._GimpCanvasItem* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %11 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %10, double %11)
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 33
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_tool_progress_get_value(%struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 15
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress2, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %progress3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 15
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %progress3, align 8
  %7 = bitcast %struct._GimpCanvasItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  %call6 = call double @gimp_progress_get_value(%struct._GimpProgress* %8)
  store double %call6, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_progress_pulse(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  ret i32 0
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpCanvasItem* @gimp_canvas_progress_new(%struct._GimpDisplayShell*, i32, double, double) #1

declare void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_widget_flush_expose(%struct._GtkWidget*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
