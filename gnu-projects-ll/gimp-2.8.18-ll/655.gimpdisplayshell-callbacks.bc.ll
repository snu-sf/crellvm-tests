; ModuleID = './app/display/gimpdisplayshell-callbacks.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
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
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }

@.str = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"change-value\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"popup-menu\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"/quick-mask-popup\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_canvas_realize(%struct._GtkWidget* %canvas, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %canvas.addr = alloca %struct._GtkWidget*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %padding_mode = alloca i32, align 4
  %padding_color = alloca %struct._GimpRGB, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %canvas, %struct._GtkWidget** %canvas.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %0)
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_get_padding(%struct._GimpDisplayShell* %1, i32* %padding_mode, %struct._GimpRGB* %padding_color)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load i32, i32* %padding_mode, align 4
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %2, i32 %3, %struct._GimpRGB* %padding_color)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %5)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 28
  store i32 %6, i32* %disp_width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %8 = load i32, i32* %height, align 4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 29
  store i32 %8, i32* %disp_height, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 34
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  %12 = bitcast %struct._GtkAdjustment* %11 to i8*
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to i8*
  %call = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpDisplayShell*)* @gimp_display_shell_hadjustment_changed to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 35
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  %17 = bitcast %struct._GtkAdjustment* %16 to i8*
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %19 = bitcast %struct._GimpDisplayShell* %18 to i8*
  %call1 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpDisplayShell*)* @gimp_display_shell_vadjustment_changed to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 36
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %24 = bitcast %struct._GimpDisplayShell* %23 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkRange*, i32, double, %struct._GimpDisplayShell*)* @gimp_display_shell_hscrollbar_change_value to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 37
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %29 = bitcast %struct._GimpDisplayShell* %28 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkRange*, i32, double, %struct._GimpDisplayShell*)* @gimp_display_shell_vscrollbar_change_value to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %31 = bitcast %struct._GimpDisplayShell* %30 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call4)
  %32 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 0, i32 0)
  ret void
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gimp_display_shell_get_padding(%struct._GimpDisplayShell*, i32*, %struct._GimpRGB*) #1

declare void @gimp_display_shell_set_padding(%struct._GimpDisplayShell*, i32, %struct._GimpRGB*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gimp_display_shell_title_update(%struct._GimpDisplayShell*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_hadjustment_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 94
  %1 = load i32, i32* %scrolling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 11
  %5 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %5 to double
  %sub = fsub double %call, %conv
  %conv1 = fptosi double %sub to i32
  call void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %2, i32 %conv1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vadjustment_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 94
  %1 = load i32, i32* %scrolling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 12
  %5 = load i32, i32* %offset_y, align 4
  %conv = sitofp i32 %5 to double
  %sub = fsub double %call, %conv
  %conv1 = fptosi double %sub to i32
  call void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %2, i32 0, i32 %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_hscrollbar_change_value(%struct._GtkRange* %range, i32 %scroll, double %value, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca %struct._GtkRange*, align 8
  %scroll.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkRange* %range, %struct._GtkRange** %range.addr, align 8
  store i32 %scroll, i32* %scroll.addr, align 4
  store double %value, double* %value.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %scroll.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %scroll.addr, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %scroll.addr, align 4
  %cmp3 = icmp eq i32 %4, 5
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false.2, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false.2
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 34
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  %7 = bitcast %struct._GtkAdjustment* %6 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = load double, double* %value.addr, align 8
  call void @gimp_display_shell_scroll_setup_hscrollbar(%struct._GimpDisplayShell* %9, double %10)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 34
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata6, align 8
  %13 = bitcast %struct._GtkAdjustment* %12 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_vscrollbar_change_value(%struct._GtkRange* %range, i32 %scroll, double %value, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca %struct._GtkRange*, align 8
  %scroll.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkRange* %range, %struct._GtkRange** %range.addr, align 8
  store i32 %scroll, i32* %scroll.addr, align 4
  store double %value, double* %value.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %scroll.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %scroll.addr, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %scroll.addr, align 4
  %cmp3 = icmp eq i32 %4, 5
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false.2, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false.2
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 35
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  %7 = bitcast %struct._GtkAdjustment* %6 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = load double, double* %value.addr, align 8
  call void @gimp_display_shell_scroll_setup_vscrollbar(%struct._GimpDisplayShell* %9, double %10)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 35
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata6, align 8
  %13 = bitcast %struct._GtkAdjustment* %12 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_canvas_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %scale = alloca double, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %center_horizontally = alloca i32, align 4
  %center_vertically = alloca i32, align 4
  %target_offset_x = alloca i32, align 4
  %target_offset_y = alloca i32, align 4
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  %tobool2 = icmp ne %struct._GimpDisplayShell* %call, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.95

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 28
  %5 = load i32, i32* %disp_width, align 4
  %6 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %6, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 29
  %9 = load i32, i32* %disp_height, align 4
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  %cmp4 = icmp ne i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.95

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_on_resize = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 84
  %13 = load i32, i32* %zoom_on_resize, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.then.5
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width7 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 28
  %15 = load i32, i32* %disp_width7, align 4
  %cmp8 = icmp sgt i32 %15, 64
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.57

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 29
  %17 = load i32, i32* %disp_height10, align 4
  %cmp11 = icmp sgt i32 %17, 64
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.57

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width13, align 4
  %cmp14 = icmp sgt i32 %19, 64
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.57

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 3
  %21 = load i32, i32* %height16, align 4
  %cmp17 = icmp sgt i32 %21, 64
  br i1 %cmp17, label %if.then.18, label %if.end.57

if.then.18:                                       ; preds = %land.lhs.true.15
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 22
  %23 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call19 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %23)
  store double %call19, double* %scale, align 8
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 2
  %25 = load i32, i32* %width20, align 4
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i32 0, i32 2
  %27 = load i32, i32* %width21, align 4
  %mul = mul nsw i32 %25, %27
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 3
  %29 = load i32, i32* %height22, align 4
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 3
  %31 = load i32, i32* %height23, align 4
  %mul24 = mul nsw i32 %29, %31
  %add = add nsw i32 %mul, %mul24
  %conv = sitofp i32 %add to double
  %call25 = call double @sqrt(double %conv) #5
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 28
  %33 = load i32, i32* %disp_width26, align 4
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 28
  %35 = load i32, i32* %disp_width27, align 4
  %mul28 = mul nsw i32 %33, %35
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 29
  %37 = load i32, i32* %disp_height29, align 4
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height30 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 29
  %39 = load i32, i32* %disp_height30, align 4
  %mul31 = mul nsw i32 %37, %39
  %add32 = add nsw i32 %mul28, %mul31
  %conv33 = sitofp i32 %add32 to double
  %call34 = call double @sqrt(double %conv33) #5
  %div = fdiv double %call25, %call34
  %40 = load double, double* %scale, align 8
  %mul35 = fmul double %40, %div
  store double %mul35, double* %scale, align 8
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x36 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 11
  %42 = load i32, i32* %offset_x36, align 4
  %conv37 = sitofp i32 %42 to double
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 13
  %44 = load double, double* %scale_x, align 8
  %div38 = fdiv double %conv37, %44
  %conv39 = fptosi double %div38 to i32
  store i32 %conv39, i32* %offset_x, align 4
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 12
  %46 = load i32, i32* %offset_y40, align 4
  %conv41 = sitofp i32 %46 to double
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x42 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 13
  %48 = load double, double* %scale_x42, align 8
  %div43 = fdiv double %conv41, %48
  %conv44 = fptosi double %div43 to i32
  store i32 %conv44, i32* %offset_y, align 4
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom45 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 22
  %50 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom45, align 8
  %51 = load double, double* %scale, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %50, i32 6, double %51)
  %52 = load i32, i32* %offset_x, align 4
  %conv46 = sitofp i32 %52 to double
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 13
  %54 = load double, double* %scale_x47, align 8
  %mul48 = fmul double %conv46, %54
  %call49 = call double @rint(double %mul48) #4
  %conv50 = fptosi double %call49 to i32
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x51 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 11
  store i32 %conv50, i32* %offset_x51, align 4
  %56 = load i32, i32* %offset_y, align 4
  %conv52 = sitofp i32 %56 to double
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 14
  %58 = load double, double* %scale_y, align 8
  %mul53 = fmul double %conv52, %58
  %call54 = call double @rint(double %mul53) #4
  %conv55 = fptosi double %call54 to i32
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y56 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 12
  store i32 %conv55, i32* %offset_y56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.18, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %if.then.5
  %60 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %60, i32 0, i32 2
  %61 = load i32, i32* %width58, align 4
  %62 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %62, i32 0, i32 28
  store i32 %61, i32* %disp_width59, align 4
  %63 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height60 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %63, i32 0, i32 3
  %64 = load i32, i32* %height60, align 4
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %65, i32 0, i32 29
  store i32 %64, i32* %disp_height61, align 4
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %size_allocate_from_configure_event = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 85
  %67 = load i32, i32* %size_allocate_from_configure_event, align 4
  %tobool62 = icmp ne i32 %67, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.93

land.lhs.true.63:                                 ; preds = %if.end.57
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_on_resize64 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %68, i32 0, i32 84
  %69 = load i32, i32* %zoom_on_resize64, align 4
  %tobool65 = icmp ne i32 %69, 0
  br i1 %tobool65, label %if.end.93, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.63
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %70, i32* %sw, i32* %sh)
  %71 = load i32, i32* %sw, align 4
  %72 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width67 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %72, i32 0, i32 28
  %73 = load i32, i32* %disp_width67, align 4
  %cmp68 = icmp sle i32 %71, %73
  %conv69 = zext i1 %cmp68 to i32
  store i32 %conv69, i32* %center_horizontally, align 4
  %74 = load i32, i32* %sh, align 4
  %75 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height70 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %75, i32 0, i32 29
  %76 = load i32, i32* %disp_height70, align 4
  %cmp71 = icmp sle i32 %74, %76
  %conv72 = zext i1 %cmp71 to i32
  store i32 %conv72, i32* %center_vertically, align 4
  %77 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %78 = load i32, i32* %center_horizontally, align 4
  %79 = load i32, i32* %center_vertically, align 4
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %77, i32 %78, i32 %79)
  %80 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x73 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %80, i32 0, i32 11
  %81 = load i32, i32* %offset_x73, align 4
  store i32 %81, i32* %target_offset_x, align 4
  %82 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y74 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %82, i32 0, i32 12
  %83 = load i32, i32* %offset_y74, align 4
  store i32 %83, i32* %target_offset_y, align 4
  %84 = load i32, i32* %center_horizontally, align 4
  %tobool75 = icmp ne i32 %84, 0
  br i1 %tobool75, label %if.end.81, label %if.then.76

if.then.76:                                       ; preds = %if.then.66
  %85 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x77 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %85, i32 0, i32 11
  %86 = load i32, i32* %offset_x77, align 4
  %cmp78 = icmp sgt i32 %86, 0
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.76
  %87 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x80 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %87, i32 0, i32 11
  %88 = load i32, i32* %offset_x80, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %target_offset_x, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end, %if.then.66
  %89 = load i32, i32* %center_vertically, align 4
  %tobool82 = icmp ne i32 %89, 0
  br i1 %tobool82, label %if.end.92, label %if.then.83

if.then.83:                                       ; preds = %if.end.81
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y84 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %90, i32 0, i32 12
  %91 = load i32, i32* %offset_y84, align 4
  %cmp85 = icmp sgt i32 %91, 0
  br i1 %cmp85, label %cond.true.87, label %cond.false.89

cond.true.87:                                     ; preds = %if.then.83
  %92 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y88 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %92, i32 0, i32 12
  %93 = load i32, i32* %offset_y88, align 4
  br label %cond.end.90

cond.false.89:                                    ; preds = %if.then.83
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.87
  %cond91 = phi i32 [ %93, %cond.true.87 ], [ 0, %cond.false.89 ]
  store i32 %cond91, i32* %target_offset_y, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end.90, %if.end.81
  %94 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %95 = load i32, i32* %target_offset_x, align 4
  %96 = load i32, i32* %target_offset_y, align 4
  call void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell* %94, i32 %95, i32 %96)
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.63, %if.end.57
  %97 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %97)
  %98 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %98)
  %99 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %size_allocate_from_configure_event94 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %99, i32 0, i32 85
  store i32 0, i32* %size_allocate_from_configure_event94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then, %if.end.93, %lor.lhs.false.3
  ret void
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @gimp_zoom_model_zoom(%struct._GimpZoomModel*, i32, double) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell*, i32*, i32*) #1

declare void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell*, i32, i32) #1

declare void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell*, i32, i32) #1

declare void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_scaled(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_canvas_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  %tobool2 = icmp ne %struct._GimpDisplayShell* %call, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %4, i32 0, i32 1
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %cmp = icmp eq %struct._GdkDrawable* %5, %call3
  br i1 %cmp, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  %tobool7 = icmp ne %struct._GimpImage* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call9 = call i32 @gimp_display_shell_is_double_buffered(%struct._GimpDisplayShell* %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window12 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window12, align 8
  %12 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %12, i32 0, i32 4
  %13 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_window_begin_paint_region(%struct._GdkDrawable* %11, %struct._GdkRegion* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 33
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call15 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %call16 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call15)
  store %struct._cairo* %call16, %struct._cairo** %cr, align 8
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %17 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region17 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %17, i32 0, i32 4
  %18 = load %struct._GdkRegion*, %struct._GdkRegion** %region17, align 8
  call void @gdk_cairo_region(%struct._cairo* %16, %struct._GdkRegion* %18)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %19)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 1
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display18, align 8
  %call19 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %21)
  %tobool20 = icmp ne %struct._GimpImage* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.14
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %23 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_display_shell_canvas_expose_image(%struct._GimpDisplayShell* %22, %struct._GdkEventExpose* %23, %struct._cairo* %24)
  br label %if.end.22

if.else:                                          ; preds = %if.end.14
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %26 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_display_shell_canvas_expose_drop_zone(%struct._GimpDisplayShell* %25, %struct._GdkEventExpose* %26, %struct._cairo* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_is_double_buffered(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  ret i32 1
}

declare void @gdk_window_begin_paint_region(%struct._GdkDrawable*, %struct._GdkRegion*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_canvas_expose_image(%struct._GimpDisplayShell* %shell, %struct._GdkEventExpose* %eevent, %struct._cairo* %cr) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %clear_region = alloca %struct._GdkRegion*, align 8
  %image_region = alloca %struct._GdkRegion*, align 8
  %image_rect = alloca %struct._GdkRectangle, align 4
  %rects = alloca %struct._GdkRectangle*, align 8
  %n_rects = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 4
  %1 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  %call = call %struct._GdkRegion* @gdk_region_copy(%struct._GdkRegion* %1)
  store %struct._GdkRegion* %call, %struct._GdkRegion** %clear_region, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 11
  %3 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %3
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 0
  store i32 %sub, i32* %x, align 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 12
  %5 = load i32, i32* %offset_y, align 4
  %sub1 = sub nsw i32 0, %5
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 1
  store i32 %sub1, i32* %y, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 2
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 3
  call void @gimp_display_shell_draw_get_scaled_image_size(%struct._GimpDisplayShell* %6, i32* %width, i32* %height)
  %call2 = call %struct._GdkRegion* @gdk_region_rectangle(%struct._GdkRectangle* %image_rect)
  store %struct._GdkRegion* %call2, %struct._GdkRegion** %image_region, align 8
  %7 = load %struct._GdkRegion*, %struct._GdkRegion** %clear_region, align 8
  %8 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  call void @gdk_region_subtract(%struct._GdkRegion* %7, %struct._GdkRegion* %8)
  %9 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  call void @gdk_region_destroy(%struct._GdkRegion* %9)
  %10 = load %struct._GdkRegion*, %struct._GdkRegion** %clear_region, align 8
  %call3 = call i32 @gdk_region_empty(%struct._GdkRegion* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct._GdkRegion*, %struct._GdkRegion** %clear_region, align 8
  call void @gdk_region_get_rectangles(%struct._GdkRegion* %11, %struct._GdkRectangle** %rects, i32* %n_rects)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n_rects, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 33
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i64 %idxprom
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %x5, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i64 %idxprom6
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx7, i32 0, i32 1
  %21 = load i32, i32* %y8, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i64 %idxprom9
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx10, i32 0, i32 2
  %24 = load i32, i32* %width11, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i64 %idxprom12
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx13, i32 0, i32 3
  %27 = load i32, i32* %height14, align 4
  call void @gdk_window_clear_area(%struct._GdkDrawable* %call4, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %30 = bitcast %struct._GdkRectangle* %29 to i8*
  call void @g_free(i8* %30)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %31 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region15 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %31, i32 0, i32 4
  %32 = load %struct._GdkRegion*, %struct._GdkRegion** %region15, align 8
  %call16 = call %struct._GdkRegion* @gdk_region_copy(%struct._GdkRegion* %32)
  store %struct._GdkRegion* %call16, %struct._GdkRegion** %image_region, align 8
  %33 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  %34 = load %struct._GdkRegion*, %struct._GdkRegion** %clear_region, align 8
  call void @gdk_region_subtract(%struct._GdkRegion* %33, %struct._GdkRegion* %34)
  %35 = load %struct._GdkRegion*, %struct._GdkRegion** %clear_region, align 8
  call void @gdk_region_destroy(%struct._GdkRegion* %35)
  %36 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  %call17 = call i32 @gdk_region_empty(%struct._GdkRegion* %36)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.42, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %37)
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %39 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 0
  %40 = load i32, i32* %x20, align 4
  %y21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 1
  %41 = load i32, i32* %y21, align 4
  %width22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 2
  %42 = load i32, i32* %width22, align 4
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image_rect, i32 0, i32 3
  %43 = load i32, i32* %height23, align 4
  call void @gimp_display_shell_draw_checkerboard(%struct._GimpDisplayShell* %38, %struct._cairo* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %44 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %44)
  %45 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %45)
  %46 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  call void @gdk_region_get_rectangles(%struct._GdkRegion* %46, %struct._GdkRectangle** %rects, i32* %n_rects)
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.39, %if.then.19
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %n_rects, align 4
  %cmp25 = icmp slt i32 %47, %48
  br i1 %cmp25, label %for.body.26, label %for.end.41

for.body.26:                                      ; preds = %for.cond.24
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %51 to i64
  %52 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %52, i64 %idxprom27
  %x29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx28, i32 0, i32 0
  %53 = load i32, i32* %x29, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %54 to i64
  %55 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %55, i64 %idxprom30
  %y32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx31, i32 0, i32 1
  %56 = load i32, i32* %y32, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %57 to i64
  %58 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %58, i64 %idxprom33
  %width35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx34, i32 0, i32 2
  %59 = load i32, i32* %width35, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %60 to i64
  %61 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %61, i64 %idxprom36
  %height38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx37, i32 0, i32 3
  %62 = load i32, i32* %height38, align 4
  call void @gimp_display_shell_draw_image(%struct._GimpDisplayShell* %49, %struct._cairo* %50, i32 %53, i32 %56, i32 %59, i32 %62)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.26
  %63 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %63, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.24

for.end.41:                                       ; preds = %for.cond.24
  %64 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %65 = bitcast %struct._GdkRectangle* %64 to i8*
  call void @g_free(i8* %65)
  %66 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %66)
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %if.end
  %67 = load %struct._GdkRegion*, %struct._GdkRegion** %image_region, align 8
  call void @gdk_region_destroy(%struct._GdkRegion* %67)
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas_item = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %68, i32 0, i32 48
  %69 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %canvas_item, align 8
  %70 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_canvas_item_draw(%struct._GimpCanvasItem* %69, %struct._cairo* %70)
  %71 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_selection_restart(%struct._GimpDisplayShell* %71)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_canvas_expose_drop_zone(%struct._GimpDisplayShell* %shell, %struct._GdkEventExpose* %eevent, %struct._cairo* %cr) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %rects = alloca %struct._GdkRectangle*, align 8
  %n_rects = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 4
  %1 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_region_get_rectangles(%struct._GdkRegion* %1, %struct._GdkRectangle** %rects, i32* %n_rects)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_rects, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 33
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %7, i64 %idxprom
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i64 %idxprom1
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx2, i32 0, i32 1
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i64 %idxprom3
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx4, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i64 %idxprom5
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx6, i32 0, i32 3
  %17 = load i32, i32* %height, align 4
  call void @gdk_window_clear_area(%struct._GdkDrawable* %call, i32 %8, i32 %11, i32 %14, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %20 = bitcast %struct._GdkRectangle* %19 to i8*
  call void @g_free(i8* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas7 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas7, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_cairo_draw_drop_wilber(%struct._GtkWidget* %22, %struct._cairo* %23)
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_canvas_expose_after(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  %tobool2 = icmp ne %struct._GimpDisplayShell* %call, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %4, i32 0, i32 1
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %cmp = icmp eq %struct._GdkDrawable* %5, %call3
  br i1 %cmp, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  %tobool7 = icmp ne %struct._GimpImage* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call9 = call i32 @gimp_display_shell_is_double_buffered(%struct._GimpDisplayShell* %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window12 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window12, align 8
  call void @gdk_window_end_paint(%struct._GdkDrawable* %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gdk_window_end_paint(%struct._GdkDrawable*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_origin_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %unused = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 16
  %3 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 8
  %7 = load i32, i32* %button, align 4
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to i8*
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32* %unused)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret i32 1
}

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_quick_mask_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %3 = bitcast %struct._GdkEventButton* %2 to %union._GdkEvent*
  %call1 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call4 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %4)
  store %struct._GimpImageWindow* %call4, %struct._GimpImageWindow** %window, align 8
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool5 = icmp ne %struct._GimpImageWindow* %5, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.then.3
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call7 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %6)
  store %struct._GimpUIManager* %call7, %struct._GimpUIManager** %manager, align 8
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct._GtkWidget* %10, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null, void (i8*)* null, i8* null)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.then.3
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end.10, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_quick_mask_toggled(%struct._GtkWidget* %widget, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %call3 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  store i32 %call3, i32* %active, align 4
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %6)
  %cmp = icmp ne i32 %5, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_image_set_quick_mask_state(%struct._GimpImage* %7, i32 %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i32 @gimp_image_get_quick_mask_state(%struct._GimpImage*) #1

declare void @gimp_image_set_quick_mask_state(%struct._GimpImage*, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_navigation_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 8
  %5 = load i32, i32* %button, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %land.lhs.true
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 4
  %9 = load double, double* %x, align 8
  %conv = fptosi double %9 to i32
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 5
  %11 = load double, double* %y, align 8
  %conv3 = fptosi double %11 to i32
  call void @gimp_navigation_editor_popup(%struct._GimpDisplayShell* %6, %struct._GtkWidget* %7, i32 %conv, i32 %conv3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gimp_navigation_editor_popup(%struct._GimpDisplayShell*, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_display_shell_scroll(%struct._GimpDisplayShell*, i32, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @gimp_display_shell_scroll_setup_hscrollbar(%struct._GimpDisplayShell*, double) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @gimp_display_shell_scroll_setup_vscrollbar(%struct._GimpDisplayShell*, double) #1

declare %struct._GdkRegion* @gdk_region_copy(%struct._GdkRegion*) #1

declare %struct._GdkRegion* @gdk_region_rectangle(%struct._GdkRectangle*) #1

declare void @gdk_region_subtract(%struct._GdkRegion*, %struct._GdkRegion*) #1

declare void @gdk_region_destroy(%struct._GdkRegion*) #1

declare i32 @gdk_region_empty(%struct._GdkRegion*) #1

declare void @gdk_region_get_rectangles(%struct._GdkRegion*, %struct._GdkRectangle**, i32*) #1

declare void @gdk_window_clear_area(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @gimp_display_shell_draw_checkerboard(%struct._GimpDisplayShell*, %struct._cairo*, i32, i32, i32, i32) #1

declare void @cairo_restore(%struct._cairo*) #1

declare void @gimp_display_shell_draw_image(%struct._GimpDisplayShell*, %struct._cairo*, i32, i32, i32, i32) #1

declare void @gimp_canvas_item_draw(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_selection_restart(%struct._GimpDisplayShell*) #1

declare void @gimp_cairo_draw_drop_wilber(%struct._GtkWidget*, %struct._cairo*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
