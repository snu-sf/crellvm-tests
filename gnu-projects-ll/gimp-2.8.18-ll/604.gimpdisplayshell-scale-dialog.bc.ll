; ModuleID = './app/display/gimpdisplayshell-scale-dialog.bc'
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
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct.ScaleDialogData = type { %struct._GimpDisplayShell*, %struct._GimpZoomModel*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_scale_dialog = private unnamed_addr constant [32 x i8] c"gimp_display_shell_scale_dialog\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Zoom Ratio\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"display_scale\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gtk-zoom-100\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Select Zoom Ratio\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"gimp-view-zoom-other\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Zoom ratio:\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Zoom:\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_dialog(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %data = alloca %struct.ScaleDialogData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spin = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %num = alloca i32, align 4
  %denom = alloca i32, align 4
  %row = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_scale_dialog, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 74
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 74
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog13, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %18)
  br label %return

if.end.16:                                        ; preds = %do.end
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 27
  %20 = load double, double* %other_scale, align 8
  %sub = fsub double %20, 0.000000e+00
  %call17 = call double @fabs(double %sub) #5
  %cmp18 = fcmp olt double %call17, 1.000000e-04
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.16
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 22
  %22 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call20 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 27
  store double %call20, double* %other_scale21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.16
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 1
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call23 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %25)
  store %struct._GimpImage* %call23, %struct._GimpImage** %image, align 8
  %call24 = call noalias i8* @g_slice_alloc(i64 40)
  %26 = bitcast i8* %call24 to %struct.ScaleDialogData*
  store %struct.ScaleDialogData* %26, %struct.ScaleDialogData** %data, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %shell25 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %28, i32 0, i32 0
  store %struct._GimpDisplayShell* %27, %struct._GimpDisplayShell** %shell25, align 8
  %call26 = call i64 @gimp_zoom_model_get_type() #5
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 27
  %30 = load double, double* %other_scale27, align 8
  %call28 = call double @fabs(double %30) #5
  %call29 = call i8* (i64, i8*, ...) @g_object_new(i64 %call26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), double %call28, i8* null)
  %31 = bitcast i8* %call29 to %struct._GimpZoomModel*
  %32 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %model = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %32, i32 0, i32 1
  store %struct._GimpZoomModel* %31, %struct._GimpZoomModel** %model, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = bitcast %struct._GimpImage* %33 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_viewable_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call30)
  %35 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpViewable*
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 1
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display32, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call33 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %38)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #7
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #7
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %40 = bitcast %struct._GimpDisplayShell* %39 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_widget_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call36)
  %41 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkWidget*
  %call38 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %35, %struct._GimpContext* %call33, i8* %call34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* %call35, %struct._GtkWidget* %41, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 -5, i8* null)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 74
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %scale_dialog39, align 8
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 74
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog40, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_dialog_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call41)
  %46 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %46, i32 -5, i32 -6, i32 -1)
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 74
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog43, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %51 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %52 = bitcast %struct.ScaleDialogData* %51 to i8*
  call void @g_object_weak_ref(%struct._GObject* %50, void (i8*, %struct._GObject*)* bitcast (void (%struct.ScaleDialogData*)* @gimp_display_shell_scale_dialog_free to void (i8*, %struct._GObject*)*), i8* %52)
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog45 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 74
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog45, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 80)
  %56 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %57 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %model47 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %57, i32 0, i32 1
  %58 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model47, align 8
  %59 = bitcast %struct._GimpZoomModel* %58 to i8*
  call void @g_object_weak_ref(%struct._GObject* %56, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_object_unref to void (i8*, %struct._GObject*)*), i8* %59)
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog48 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 74
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog48, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 80)
  %63 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %64 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %64, i32 0, i32 74
  %65 = bitcast %struct._GtkWidget** %scale_dialog50 to i8*
  %66 = bitcast i8* %65 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %63, i8** %66)
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %68 = bitcast %struct._GimpDisplayShell* %67 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call51)
  %69 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  %call53 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %69)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %toplevel, align 8
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog54 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %70, i32 0, i32 74
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog54, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_window_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call55)
  %73 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkWindow*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_window_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call57)
  %76 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %73, %struct._GtkWindow* %76)
  %77 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %77, i32 0, i32 74
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog59, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_window_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call60)
  %80 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %80, i32 1)
  %81 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog62 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %81, i32 0, i32 74
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog62, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %85 = bitcast %struct.ScaleDialogData* %84 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ScaleDialogData*)* @gimp_display_shell_scale_dialog_response to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %call64 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %table, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_container_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call65)
  %88 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %88, i32 12)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call67)
  %91 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %91, i32 6)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call69)
  %94 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %94, i32 6)
  %95 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog71 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %95, i32 0, i32 74
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog71, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_dialog_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call72)
  %98 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkDialog*
  %call74 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %98)
  %99 = bitcast %struct._GtkWidget* %call74 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call75)
  %100 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %101, i32 1, i32 1, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  store i32 0, i32* %row, align 4
  %call77 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %hbox, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call78)
  %105 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  %106 = load i32, i32* %row, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %row, align 4
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #7
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call81 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %105, i32 0, i32 %106, i8* %call80, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %107, i32 1, i32 0)
  %108 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %model82 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %108, i32 0, i32 1
  %109 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model82, align 8
  call void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel* %109, i32* %num, i32* %denom)
  %110 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %num_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %110, i32 0, i32 3
  %111 = bitcast %struct._GtkAdjustment** %num_adj to %struct._GtkObject**
  %112 = load i32, i32* %num, align 4
  %conv = sitofp i32 %112 to double
  %call83 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %111, double %conv, double 1.000000e+00, double 2.560000e+02, double 1.000000e+00, double 8.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %spin, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_entry_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call84)
  %115 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %115, i32 1)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call86)
  %118 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 1, i32 1, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call88 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %label, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call89)
  %123 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %124, i32 0, i32 0, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %denom_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %126, i32 0, i32 4
  %127 = bitcast %struct._GtkAdjustment** %denom_adj to %struct._GtkObject**
  %128 = load i32, i32* %denom, align 4
  %conv91 = sitofp i32 %128 to double
  %call92 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %127, double %conv91, double 1.000000e+00, double 2.560000e+02, double 1.000000e+00, double 8.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %spin, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_entry_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call93)
  %131 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %131, i32 1)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call95)
  %134 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 1, i32 1, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call97 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %hbox, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_table_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call98)
  %139 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkTable*
  %140 = load i32, i32* %row, align 4
  %inc100 = add nsw i32 %140, 1
  store i32 %inc100, i32* %row, align 4
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #7
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call102 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %139, i32 0, i32 %140, i8* %call101, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %141, i32 1, i32 0)
  %142 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %scale_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %142, i32 0, i32 2
  %143 = bitcast %struct._GtkAdjustment** %scale_adj to %struct._GtkObject**
  %144 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale103 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %144, i32 0, i32 27
  %145 = load double, double* %other_scale103, align 8
  %call104 = call double @fabs(double %145) #5
  %mul = fmul double %call104, 1.000000e+02
  %call105 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %143, double %mul, double 3.906250e-01, double 2.560000e+04, double 1.000000e+01, double 5.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %spin, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_entry_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call106)
  %148 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %148, i32 1)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call108)
  %151 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %152, i32 1, i32 1, i32 0)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %call110 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %label, align 8
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call111)
  %156 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %156, %struct._GtkWidget* %157, i32 0, i32 0, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %scale_adj113 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %159, i32 0, i32 2
  %160 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj113, align 8
  %161 = bitcast %struct._GtkAdjustment* %160 to i8*
  %162 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %163 = bitcast %struct.ScaleDialogData* %162 to i8*
  %call114 = call i64 @g_signal_connect_data(i8* %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to void ()*), i8* %163, void (i8*, %struct._GClosure*)* null, i32 0)
  %164 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %num_adj115 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %164, i32 0, i32 3
  %165 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_adj115, align 8
  %166 = bitcast %struct._GtkAdjustment* %165 to i8*
  %167 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %168 = bitcast %struct.ScaleDialogData* %167 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to void ()*), i8* %168, void (i8*, %struct._GClosure*)* null, i32 0)
  %169 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %denom_adj117 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %169, i32 0, i32 4
  %170 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %denom_adj117, align 8
  %171 = bitcast %struct._GtkAdjustment* %170 to i8*
  %172 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %data, align 8
  %173 = bitcast %struct.ScaleDialogData* %172 to i8*
  %call118 = call i64 @g_signal_connect_data(i8* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to void ()*), i8* %173, void (i8*, %struct._GClosure*)* null, i32 0)
  %174 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_dialog119 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %174, i32 0, i32 74
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog119, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %175)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @gtk_window_present(%struct._GtkWindow*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare noalias i8* @g_slice_alloc(i64) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_model_get_type() #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scale_dialog_free(%struct.ScaleDialogData* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ScaleDialogData*, align 8
  store %struct.ScaleDialogData* %dialog, %struct.ScaleDialogData** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %1 = bitcast %struct.ScaleDialogData* %0 to i8*
  call void @g_slice_free1(i64 40, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_object_unref(i8*) #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #3

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_scale_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ScaleDialogData* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.ScaleDialogData*, align 8
  %scale = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ScaleDialogData* %dialog, %struct.ScaleDialogData** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %1, i32 0, i32 2
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  store double %call, double* %scale, align 8
  %3 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %shell = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %3, i32 0, i32 0
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %5 = load double, double* %scale, align 8
  %div = fdiv double %5, 1.000000e+02
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %4, i32 6, double %div, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %shell1 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %6, i32 0, i32 0
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %shell2 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %8, i32 0, i32 0
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell2, align 8
  %other_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 27
  %10 = load double, double* %other_scale, align 8
  %call3 = call double @fabs(double %10) #5
  %sub = fsub double -0.000000e+00, %call3
  %11 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %shell4 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %11, i32 0, i32 0
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell4, align 8
  %other_scale5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 27
  store double %sub, double* %other_scale5, align 8
  %13 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %shell6 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %13, i32 0, i32 0
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell6, align 8
  %scale_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 74
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

declare void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel*, i32*, i32*) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @update_zoom_values(%struct._GtkAdjustment* %adj, %struct.ScaleDialogData* %dialog) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %dialog.addr = alloca %struct.ScaleDialogData*, align 8
  %num = alloca i32, align 4
  %denom = alloca i32, align 4
  %scale = alloca double, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct.ScaleDialogData* %dialog, %struct.ScaleDialogData** %dialog.addr, align 8
  %0 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %0, i32 0, i32 2
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %2 = bitcast %struct._GtkAdjustment* %1 to i8*
  %3 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %4 = bitcast %struct.ScaleDialogData* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %4)
  %5 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %num_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %5, i32 0, i32 3
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_adj, align 8
  %7 = bitcast %struct._GtkAdjustment* %6 to i8*
  %8 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %9 = bitcast %struct.ScaleDialogData* %8 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %9)
  %10 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %denom_adj = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %10, i32 0, i32 4
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %denom_adj, align 8
  %12 = bitcast %struct._GtkAdjustment* %11 to i8*
  %13 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %14 = bitcast %struct.ScaleDialogData* %13 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %14)
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %16 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj3 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %16, i32 0, i32 2
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj3, align 8
  %cmp = icmp eq %struct._GtkAdjustment* %15, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj4 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %18, i32 0, i32 2
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj4, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %19)
  store double %call5, double* %scale, align 8
  %20 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %model = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %20, i32 0, i32 1
  %21 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %22 = load double, double* %scale, align 8
  %div = fdiv double %22, 1.000000e+02
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %21, i32 6, double %div)
  %23 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %model6 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %23, i32 0, i32 1
  %24 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model6, align 8
  call void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel* %24, i32* %num, i32* %denom)
  %25 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %num_adj7 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %25, i32 0, i32 3
  %26 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_adj7, align 8
  %27 = load i32, i32* %num, align 4
  %conv = sitofp i32 %27 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %26, double %conv)
  %28 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %denom_adj8 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %28, i32 0, i32 4
  %29 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %denom_adj8, align 8
  %30 = load i32, i32* %denom, align 4
  %conv9 = sitofp i32 %30 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %29, double %conv9)
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %num_adj10 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %31, i32 0, i32 3
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_adj10, align 8
  %call11 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %32)
  %33 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %denom_adj12 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %33, i32 0, i32 4
  %34 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %denom_adj12, align 8
  %call13 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %34)
  %div14 = fdiv double %call11, %call13
  store double %div14, double* %scale, align 8
  %35 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj15 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %35, i32 0, i32 2
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj15, align 8
  %37 = load double, double* %scale, align 8
  %mul = fmul double %37, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %36, double %mul)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %scale_adj16 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %38, i32 0, i32 2
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj16, align 8
  %40 = bitcast %struct._GtkAdjustment* %39 to i8*
  %41 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %42 = bitcast %struct.ScaleDialogData* %41 to i8*
  %call17 = call i32 @g_signal_handlers_unblock_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %42)
  %43 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %num_adj18 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %43, i32 0, i32 3
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_adj18, align 8
  %45 = bitcast %struct._GtkAdjustment* %44 to i8*
  %46 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %47 = bitcast %struct.ScaleDialogData* %46 to i8*
  %call19 = call i32 @g_signal_handlers_unblock_matched(i8* %45, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %47)
  %48 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %denom_adj20 = getelementptr inbounds %struct.ScaleDialogData, %struct.ScaleDialogData* %48, i32 0, i32 4
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %denom_adj20, align 8
  %50 = bitcast %struct._GtkAdjustment* %49 to i8*
  %51 = load %struct.ScaleDialogData*, %struct.ScaleDialogData** %dialog.addr, align 8
  %52 = bitcast %struct.ScaleDialogData* %51 to i8*
  %call21 = call i32 @g_signal_handlers_unblock_matched(i8* %50, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct.ScaleDialogData*)* @update_zoom_values to i8*), i8* %52)
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #3

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #3

declare void @gimp_display_shell_scaled(%struct._GimpDisplayShell*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_slice_free1(i64, i8*) #3

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gimp_zoom_model_zoom(%struct._GimpZoomModel*, i32, double) #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

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
