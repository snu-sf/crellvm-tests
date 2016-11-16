; ModuleID = './app/display/gimpdisplayshell-autoscroll.bc'
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
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ScrollInfo = type { %struct._GdkEventMotion*, %struct._GimpDeviceInfo*, i32, i32, i32 }
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpCurve = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_autoscroll_start = private unnamed_addr constant [36 x i8] c"gimp_display_shell_autoscroll_start\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_autoscroll_stop = private unnamed_addr constant [35 x i8] c"gimp_display_shell_autoscroll_stop\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_autoscroll_start(%struct._GimpDisplayShell* %shell, i32 %state, %struct._GdkEventMotion* %mevent) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %state.addr = alloca i32, align 4
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %info = alloca %struct.ScrollInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_autoscroll_start, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_info = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 97
  %14 = load i8*, i8** %scroll_info, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %call14 = call noalias i8* @g_slice_alloc0(i64 32)
  %15 = bitcast i8* %call14 to %struct.ScrollInfo*
  store %struct.ScrollInfo* %15, %struct.ScrollInfo** %info, align 8
  %16 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %17 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %mevent15 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %17, i32 0, i32 0
  store %struct._GdkEventMotion* %16, %struct._GdkEventMotion** %mevent15, align 8
  %18 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %device = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %18, i32 0, i32 9
  %19 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %call16 = call %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %19)
  %20 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %device17 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %20, i32 0, i32 1
  store %struct._GimpDeviceInfo* %call16, %struct._GimpDeviceInfo** %device17, align 8
  %21 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %22 = bitcast %struct._GdkEventMotion* %21 to %union._GdkEvent*
  %call18 = call i32 @gdk_event_get_time(%union._GdkEvent* %22)
  %23 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %time = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %23, i32 0, i32 2
  store i32 %call18, i32* %time, align 4
  %24 = load i32, i32* %state.addr, align 4
  %25 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %state19 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %25, i32 0, i32 3
  store i32 %24, i32* %state19, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %27 = bitcast %struct._GimpDisplayShell* %26 to i8*
  %call20 = call i32 @g_timeout_add(i32 20, i32 (i8*)* @gimp_display_shell_autoscroll_timeout, i8* %27)
  %28 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %timeout_id = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %28, i32 0, i32 4
  store i32 %call20, i32* %timeout_id, align 4
  %29 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %30 = bitcast %struct.ScrollInfo* %29 to i8*
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_info21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 97
  store i8* %30, i8** %scroll_info21, align 8
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice*) #3

declare i32 @gdk_event_get_time(%union._GdkEvent*) #3

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_autoscroll_timeout(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %info = alloca %struct.ScrollInfo*, align 8
  %device_coords = alloca %struct._GimpCoords, align 8
  %image_coords = alloca %struct._GimpCoords, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %scroll_amount_x = alloca i32, align 4
  %scroll_amount_y = alloca i32, align 4
  %x44 = alloca i32, align 4
  %y45 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scroll_info = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 97
  %4 = load i8*, i8** %scroll_info, align 8
  %5 = bitcast i8* %4 to %struct.ScrollInfo*
  store %struct.ScrollInfo* %5, %struct.ScrollInfo** %info, align 8
  store i32 0, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  %6 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %device = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %6, i32 0, i32 1
  %7 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 33
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  call void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo* %7, %struct._GdkDrawable* %call2, %struct._GimpCoords* %device_coords)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %cmp = fcmp olt double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 0
  %11 = load double, double* %x3, align 8
  %conv = fptosi double %11 to i32
  store i32 %conv, i32* %dx, align 4
  br label %if.end.13

if.else:                                          ; preds = %entry
  %x4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 0
  %12 = load double, double* %x4, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 28
  %14 = load i32, i32* %disp_width, align 4
  %conv5 = sitofp i32 %14 to double
  %cmp6 = fcmp ogt double %12, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %x9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 0
  %15 = load double, double* %x9, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 28
  %17 = load i32, i32* %disp_width10, align 4
  %conv11 = sitofp i32 %17 to double
  %sub = fsub double %15, %conv11
  %conv12 = fptosi double %sub to i32
  store i32 %conv12, i32* %dx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %cmp14 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.end.13
  %y17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 1
  %19 = load double, double* %y17, align 8
  %conv18 = fptosi double %19 to i32
  store i32 %conv18, i32* %dy, align 4
  br label %if.end.31

if.else.19:                                       ; preds = %if.end.13
  %y20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 1
  %20 = load double, double* %y20, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 29
  %22 = load i32, i32* %disp_height, align 4
  %conv21 = sitofp i32 %22 to double
  %cmp22 = fcmp ogt double %20, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.else.19
  %y25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %device_coords, i32 0, i32 1
  %23 = load double, double* %y25, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 29
  %25 = load i32, i32* %disp_height26, align 4
  %conv27 = sitofp i32 %25 to double
  %sub28 = fsub double %23, %conv27
  %conv29 = fptosi double %sub28 to i32
  store i32 %conv29, i32* %dy, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %if.else.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.16
  %26 = load i32, i32* %dx, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %27 = load i32, i32* %dy, align 4
  %tobool32 = icmp ne i32 %27, 0
  br i1 %tobool32, label %if.then.33, label %if.else.51

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.31
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 1
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display34, align 8
  store %struct._GimpDisplay* %29, %struct._GimpDisplay** %display, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call35 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %31)
  store %struct._GimpTool* %call35, %struct._GimpTool** %active_tool, align 8
  %32 = load i32, i32* %dx, align 4
  %conv36 = sitofp i32 %32 to double
  %mul = fmul double 1.000000e-01, %conv36
  %conv37 = fptosi double %mul to i32
  store i32 %conv37, i32* %scroll_amount_x, align 4
  %33 = load i32, i32* %dy, align 4
  %conv38 = sitofp i32 %33 to double
  %mul39 = fmul double 1.000000e-01, %conv38
  %conv40 = fptosi double %mul39 to i32
  store i32 %conv40, i32* %scroll_amount_y, align 4
  %34 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %time = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %34, i32 0, i32 2
  %35 = load i32, i32* %time, align 4
  %add = add i32 %35, 20
  store i32 %add, i32* %time, align 4
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %37 = load i32, i32* %scroll_amount_x, align 4
  %38 = load i32, i32* %scroll_amount_y, align 4
  call void @gimp_display_shell_scroll_unoverscrollify(%struct._GimpDisplayShell* %36, i32 %37, i32 %38, i32* %scroll_amount_x, i32* %scroll_amount_y)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %40 = load i32, i32* %scroll_amount_x, align 4
  %41 = load i32, i32* %scroll_amount_y, align 4
  call void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %39, i32 %40, i32 %41)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_coords(%struct._GimpDisplayShell* %42, %struct._GimpCoords* %device_coords, %struct._GimpCoords* %image_coords)
  %43 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 3
  %44 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call41 = call i32 @gimp_tool_control_get_snap_to(%struct._GimpToolControl* %44)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.then.33
  %45 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control46 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 3
  %46 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control46, align 8
  call void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl* %46, i32* %x44, i32* %y45, i32* %width, i32* %height)
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %48 = load i32, i32* %x44, align 4
  %49 = load i32, i32* %y45, align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  %call47 = call i32 @gimp_display_shell_snap_coords(%struct._GimpDisplayShell* %47, %struct._GimpCoords* %image_coords, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.then.33
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp49 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %52, i32 0, i32 1
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp49, align 8
  %54 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %time50 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %54, i32 0, i32 2
  %55 = load i32, i32* %time50, align 4
  %56 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %state = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %56, i32 0, i32 3
  %57 = load i32, i32* %state, align 4
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_motion_active(%struct._Gimp* %53, %struct._GimpCoords* %image_coords, i32 %55, i32 %57, %struct._GimpDisplay* %58)
  store i32 1, i32* %retval
  br label %return

if.else.51:                                       ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.else.51
  %59 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %60 = bitcast %struct.ScrollInfo* %59 to i8*
  call void @g_slice_free1(i64 32, i8* %60)
  br label %do.end

do.end:                                           ; preds = %do.body
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scroll_info52 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 97
  store i8* null, i8** %scroll_info52, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.48
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_autoscroll_stop(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %info = alloca %struct.ScrollInfo*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_display_shell_autoscroll_stop, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_info = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 97
  %14 = load i8*, i8** %scroll_info, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_info14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 97
  %16 = load i8*, i8** %scroll_info14, align 8
  %17 = bitcast i8* %16 to %struct.ScrollInfo*
  store %struct.ScrollInfo* %17, %struct.ScrollInfo** %info, align 8
  %18 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %timeout_id = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %18, i32 0, i32 4
  %19 = load i32, i32* %timeout_id, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.13
  %20 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %timeout_id17 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %20, i32 0, i32 4
  %21 = load i32, i32* %timeout_id17, align 4
  %call18 = call i32 @g_source_remove(i32 %21)
  %22 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %timeout_id19 = getelementptr inbounds %struct.ScrollInfo, %struct.ScrollInfo* %22, i32 0, i32 4
  store i32 0, i32* %timeout_id19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.13
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %23 = load %struct.ScrollInfo*, %struct.ScrollInfo** %info, align 8
  %24 = bitcast %struct.ScrollInfo* %23 to i8*
  call void @g_slice_free1(i64 32, i8* %24)
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_info23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 97
  store i8* null, i8** %scroll_info23, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.then.12, %if.else.9
  ret void
}

declare i32 @g_source_remove(i32) #3

declare void @g_slice_free1(i64, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo*, %struct._GdkDrawable*, %struct._GimpCoords*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #3

declare void @gimp_display_shell_scroll_unoverscrollify(%struct._GimpDisplayShell*, i32, i32, i32*, i32*) #3

declare void @gimp_display_shell_scroll(%struct._GimpDisplayShell*, i32, i32) #3

declare void @gimp_display_shell_untransform_coords(%struct._GimpDisplayShell*, %struct._GimpCoords*, %struct._GimpCoords*) #3

declare i32 @gimp_tool_control_get_snap_to(%struct._GimpToolControl*) #3

declare void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl*, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_display_shell_snap_coords(%struct._GimpDisplayShell*, %struct._GimpCoords*, i32, i32, i32, i32) #3

declare void @tool_manager_motion_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
