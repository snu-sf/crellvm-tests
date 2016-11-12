; ModuleID = './app/display/gimpdisplayshell-handlers.bc'
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type { %struct._GimpObject, %struct._GimpContainer*, i8*, void ()*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpCanvasLayerBoundary = type { %struct._GimpCanvasRectangle }
%struct._GimpCanvasRectangle = type { %struct._GimpCanvasItem }
%struct._GimpLayer = type opaque
%struct._GimpUndo = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpCanvasProxyGroup = type { %struct._GimpCanvasGroup }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpColorManaged = type opaque
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_connect = private unnamed_addr constant [27 x i8] c"gimp_display_shell_connect\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DISPLAY (shell->display)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"undo-event\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"selection-invalidate\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"size-changed-detailed\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"resolution-changed\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"quick-mask-changed\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"guide-added\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"guide-removed\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"guide-moved\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"sample-point-added\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"sample-point-removed\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"sample-point-moved\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"invalidate-preview\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"profile-changed\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"saved\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"active-vectors-changed\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"visibility-changed\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"notify::transparency-size\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"notify::transparency-type\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"notify::image-title-format\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"notify::image-status-format\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"notify::navigation-preview-size\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"notify::monitor-resolution-from-windowing-system\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"notify::monitor-xresolution\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"notify::monitor-yresolution\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"notify::padding-mode\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"notify::padding-color\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"notify::marching-ants-speed\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"notify::zoom-quality\00", align 1
@__func__.gimp_display_shell_disconnect = private unnamed_addr constant [30 x i8] c"gimp_display_shell_disconnect\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"gimp-quick-mask-on\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"gimp-quick-mask-off\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Image saved to '%s'\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"Image exported to '%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_connect(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_display_shell_connect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_display_shell_connect, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display39, align 8
  %call40 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %28)
  store %struct._GimpImage* %call40, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call41 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %29)
  store %struct._GimpContainer* %call41, %struct._GimpContainer** %vectors, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.38
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %31 = bitcast %struct._GimpImage* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_image_get_type() #6
  store i64 %call47, i64* %__t46, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %do.body.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %do.body.42
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type57, align 8
  %38 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %37, %38
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %40 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #7
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %41 = load i32, i32* %__r49, align 4
  store i32 %41, i32* %tmp64
  %42 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %42, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_display_shell_connect, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %44 = bitcast %struct._GimpImage* %43 to i8*
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %46 = bitcast %struct._GimpDisplayShell* %45 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_clean_dirty_handler to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %48 = bitcast %struct._GimpImage* %47 to i8*
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %50 = bitcast %struct._GimpDisplayShell* %49 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_clean_dirty_handler to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = bitcast %struct._GimpImage* %51 to i8*
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %54 = bitcast %struct._GimpDisplayShell* %53 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpUndo*, %struct._GimpDisplayShell*)* @gimp_display_shell_undo_event_handler to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call73 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %55)
  %56 = bitcast %struct._GimpGrid* %call73 to i8*
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %58 = bitcast %struct._GimpDisplayShell* %57 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGrid*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_grid_notify_handler to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %grid = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 52
  %60 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %grid, align 8
  %61 = bitcast %struct._GimpCanvasItem* %60 to i8*
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call75 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %62)
  call void (i8*, i8*, ...) @g_object_set(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._GimpGrid* %call75, i8* null)
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %64 = bitcast %struct._GimpImage* %63 to i8*
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %66 = bitcast %struct._GimpDisplayShell* %65 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_name_changed_handler to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = bitcast %struct._GimpImage* %67 to i8*
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %70 = bitcast %struct._GimpDisplayShell* %69 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_selection_invalidate_handler to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %72 = bitcast %struct._GimpImage* %71 to i8*
  %73 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %74 = bitcast %struct._GimpDisplayShell* %73 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, i32, i32, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_size_changed_detailed_handler to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %76 = bitcast %struct._GimpImage* %75 to i8*
  %77 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %78 = bitcast %struct._GimpDisplayShell* %77 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_resolution_changed_handler to void ()*), i8* %78, void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %80 = bitcast %struct._GimpImage* %79 to i8*
  %81 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %82 = bitcast %struct._GimpDisplayShell* %81 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_changed_handler to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %84 = bitcast %struct._GimpImage* %83 to i8*
  %85 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %86 = bitcast %struct._GimpDisplayShell* %85 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_add_handler to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %88 = bitcast %struct._GimpImage* %87 to i8*
  %89 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %90 = bitcast %struct._GimpDisplayShell* %89 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_remove_handler to void ()*), i8* %90, void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %92 = bitcast %struct._GimpImage* %91 to i8*
  %93 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %94 = bitcast %struct._GimpDisplayShell* %93 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_move_handler to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call84 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %95)
  store %struct._GList* %call84, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.69
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool85 = icmp ne %struct._GList* %96, null
  br i1 %tobool85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 0
  %99 = load i8*, i8** %data, align 8
  %100 = bitcast i8* %99 to %struct._GimpGuide*
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_guide_add_handler(%struct._GimpImage* %97, %struct._GimpGuide* %100, %struct._GimpDisplayShell* %101)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool86 = icmp ne %struct._GList* %102, null
  br i1 %tobool86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %103, i32 0, i32 1
  %104 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %104, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %106 = bitcast %struct._GimpImage* %105 to i8*
  %107 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %108 = bitcast %struct._GimpDisplayShell* %107 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_add_handler to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %110 = bitcast %struct._GimpImage* %109 to i8*
  %111 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %112 = bitcast %struct._GimpDisplayShell* %111 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_remove_handler to void ()*), i8* %112, void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %114 = bitcast %struct._GimpImage* %113 to i8*
  %115 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %116 = bitcast %struct._GimpDisplayShell* %115 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_move_handler to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call90 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %117)
  store %struct._GList* %call90, %struct._GList** %list, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %cond.end.100, %for.end
  %118 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool92 = icmp ne %struct._GList* %118, null
  br i1 %tobool92, label %for.body.93, label %for.end.102

for.body.93:                                      ; preds = %for.cond.91
  %119 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %120 = load %struct._GList*, %struct._GList** %list, align 8
  %data94 = getelementptr inbounds %struct._GList, %struct._GList* %120, i32 0, i32 0
  %121 = load i8*, i8** %data94, align 8
  %122 = bitcast i8* %121 to %struct._GimpSamplePoint*
  %123 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_sample_point_add_handler(%struct._GimpImage* %119, %struct._GimpSamplePoint* %122, %struct._GimpDisplayShell* %123)
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.93
  %124 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool96 = icmp ne %struct._GList* %124, null
  br i1 %tobool96, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %for.inc.95
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %next98 = getelementptr inbounds %struct._GList, %struct._GList* %125, i32 0, i32 1
  %126 = load %struct._GList*, %struct._GList** %next98, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %for.inc.95
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.97
  %cond101 = phi %struct._GList* [ %126, %cond.true.97 ], [ null, %cond.false.99 ]
  store %struct._GList* %cond101, %struct._GList** %list, align 8
  br label %for.cond.91

for.end.102:                                      ; preds = %for.cond.91
  %127 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %128 = bitcast %struct._GimpImage* %127 to i8*
  %129 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %130 = bitcast %struct._GimpDisplayShell* %129 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_invalidate_preview_handler to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 0)
  %131 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %132 = bitcast %struct._GimpImage* %131 to i8*
  %133 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %134 = bitcast %struct._GimpDisplayShell* %133 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorManaged*, %struct._GimpDisplayShell*)* @gimp_display_shell_profile_changed_handler to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 0)
  %135 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %136 = bitcast %struct._GimpImage* %135 to i8*
  %137 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %138 = bitcast %struct._GimpDisplayShell* %137 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i8*, %struct._GimpDisplayShell*)* @gimp_display_shell_saved_handler to void ()*), i8* %138, void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %140 = bitcast %struct._GimpImage* %139 to i8*
  %141 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %142 = bitcast %struct._GimpDisplayShell* %141 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i8*, %struct._GimpDisplayShell*)* @gimp_display_shell_exported_handler to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %144 = bitcast %struct._GimpImage* %143 to i8*
  %145 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %146 = bitcast %struct._GimpDisplayShell* %145 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_active_vectors_handler to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %148 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %149 = bitcast %struct._GimpDisplayShell* %148 to i8*
  %call108 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_freeze_handler to void ()*), i8* %149)
  %150 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_freeze_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %150, i32 0, i32 81
  store %struct._GimpTreeHandler* %call108, %struct._GimpTreeHandler** %vectors_freeze_handler, align 8
  %151 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %152 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %153 = bitcast %struct._GimpDisplayShell* %152 to i8*
  %call109 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_thaw_handler to void ()*), i8* %153)
  %154 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_thaw_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %154, i32 0, i32 82
  store %struct._GimpTreeHandler* %call109, %struct._GimpTreeHandler** %vectors_thaw_handler, align 8
  %155 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %156 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %157 = bitcast %struct._GimpDisplayShell* %156 to i8*
  %call110 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_visible_handler to void ()*), i8* %157)
  %158 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_visible_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %158, i32 0, i32 83
  store %struct._GimpTreeHandler* %call110, %struct._GimpTreeHandler** %vectors_visible_handler, align 8
  %159 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %160 = bitcast %struct._GimpContainer* %159 to i8*
  %161 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %162 = bitcast %struct._GimpDisplayShell* %161 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_add_handler to void ()*), i8* %162, void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %164 = bitcast %struct._GimpContainer* %163 to i8*
  %165 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %166 = bitcast %struct._GimpDisplayShell* %165 to i8*
  %call112 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_remove_handler to void ()*), i8* %166, void (i8*, %struct._GClosure*)* null, i32 0)
  %167 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %168 = bitcast %struct._GimpContainer* %167 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_item_stack_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call113)
  %169 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpItemStack*
  %call115 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %169)
  store %struct._GList* %call115, %struct._GList** %list, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %cond.end.125, %for.end.102
  %170 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool117 = icmp ne %struct._GList* %170, null
  br i1 %tobool117, label %for.body.118, label %for.end.127

for.body.118:                                     ; preds = %for.cond.116
  %171 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %172 = load %struct._GList*, %struct._GList** %list, align 8
  %data119 = getelementptr inbounds %struct._GList, %struct._GList* %172, i32 0, i32 0
  %173 = load i8*, i8** %data119, align 8
  %174 = bitcast i8* %173 to %struct._GimpVectors*
  %175 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_vectors_add_handler(%struct._GimpContainer* %171, %struct._GimpVectors* %174, %struct._GimpDisplayShell* %175)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.118
  %176 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool121 = icmp ne %struct._GList* %176, null
  br i1 %tobool121, label %cond.true.122, label %cond.false.124

cond.true.122:                                    ; preds = %for.inc.120
  %177 = load %struct._GList*, %struct._GList** %list, align 8
  %next123 = getelementptr inbounds %struct._GList, %struct._GList* %177, i32 0, i32 1
  %178 = load %struct._GList*, %struct._GList** %next123, align 8
  br label %cond.end.125

cond.false.124:                                   ; preds = %for.inc.120
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.122
  %cond126 = phi %struct._GList* [ %178, %cond.true.122 ], [ null, %cond.false.124 ]
  store %struct._GList* %cond126, %struct._GList** %list, align 8
  br label %for.cond.116

for.end.127:                                      ; preds = %for.cond.116
  %179 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display128 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %179, i32 0, i32 1
  %180 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display128, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %180, i32 0, i32 2
  %181 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %182 = bitcast %struct._GimpDisplayConfig* %181 to i8*
  %183 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %184 = bitcast %struct._GimpDisplayShell* %183 to i8*
  %call129 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_check_notify_handler to void ()*), i8* %184, void (i8*, %struct._GClosure*)* null, i32 0)
  %185 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display130 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %185, i32 0, i32 1
  %186 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display130, align 8
  %config131 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %186, i32 0, i32 2
  %187 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config131, align 8
  %188 = bitcast %struct._GimpDisplayConfig* %187 to i8*
  %189 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %190 = bitcast %struct._GimpDisplayShell* %189 to i8*
  %call132 = call i64 @g_signal_connect_data(i8* %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_check_notify_handler to void ()*), i8* %190, void (i8*, %struct._GClosure*)* null, i32 0)
  %191 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display133 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %191, i32 0, i32 1
  %192 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display133, align 8
  %config134 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %192, i32 0, i32 2
  %193 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config134, align 8
  %194 = bitcast %struct._GimpDisplayConfig* %193 to i8*
  %195 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %196 = bitcast %struct._GimpDisplayShell* %195 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_title_notify_handler to void ()*), i8* %196, void (i8*, %struct._GClosure*)* null, i32 0)
  %197 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display136 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %197, i32 0, i32 1
  %198 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display136, align 8
  %config137 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %198, i32 0, i32 2
  %199 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config137, align 8
  %200 = bitcast %struct._GimpDisplayConfig* %199 to i8*
  %201 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %202 = bitcast %struct._GimpDisplayShell* %201 to i8*
  %call138 = call i64 @g_signal_connect_data(i8* %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_title_notify_handler to void ()*), i8* %202, void (i8*, %struct._GClosure*)* null, i32 0)
  %203 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display139 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %203, i32 0, i32 1
  %204 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display139, align 8
  %config140 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %204, i32 0, i32 2
  %205 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config140, align 8
  %206 = bitcast %struct._GimpDisplayConfig* %205 to i8*
  %207 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %208 = bitcast %struct._GimpDisplayShell* %207 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %206, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_nav_size_notify_handler to void ()*), i8* %208, void (i8*, %struct._GClosure*)* null, i32 0)
  %209 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display142 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %209, i32 0, i32 1
  %210 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display142, align 8
  %config143 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %210, i32 0, i32 2
  %211 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config143, align 8
  %212 = bitcast %struct._GimpDisplayConfig* %211 to i8*
  %213 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %214 = bitcast %struct._GimpDisplayShell* %213 to i8*
  %call144 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_monitor_res_notify_handler to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display145 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %215, i32 0, i32 1
  %216 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display145, align 8
  %config146 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %216, i32 0, i32 2
  %217 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config146, align 8
  %218 = bitcast %struct._GimpDisplayConfig* %217 to i8*
  %219 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %220 = bitcast %struct._GimpDisplayShell* %219 to i8*
  %call147 = call i64 @g_signal_connect_data(i8* %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_monitor_res_notify_handler to void ()*), i8* %220, void (i8*, %struct._GClosure*)* null, i32 0)
  %221 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display148 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %221, i32 0, i32 1
  %222 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display148, align 8
  %config149 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %222, i32 0, i32 2
  %223 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config149, align 8
  %224 = bitcast %struct._GimpDisplayConfig* %223 to i8*
  %225 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %226 = bitcast %struct._GimpDisplayShell* %225 to i8*
  %call150 = call i64 @g_signal_connect_data(i8* %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_monitor_res_notify_handler to void ()*), i8* %226, void (i8*, %struct._GClosure*)* null, i32 0)
  %227 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display151 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %227, i32 0, i32 1
  %228 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display151, align 8
  %config152 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %228, i32 0, i32 2
  %229 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config152, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %229, i32 0, i32 20
  %230 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %231 = bitcast %struct._GimpDisplayOptions* %230 to i8*
  %232 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %233 = bitcast %struct._GimpDisplayShell* %232 to i8*
  %call153 = call i64 @g_signal_connect_data(i8* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to void ()*), i8* %233, void (i8*, %struct._GClosure*)* null, i32 0)
  %234 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display154 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %234, i32 0, i32 1
  %235 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display154, align 8
  %config155 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %235, i32 0, i32 2
  %236 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config155, align 8
  %default_view156 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %236, i32 0, i32 20
  %237 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view156, align 8
  %238 = bitcast %struct._GimpDisplayOptions* %237 to i8*
  %239 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %240 = bitcast %struct._GimpDisplayShell* %239 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %238, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to void ()*), i8* %240, void (i8*, %struct._GClosure*)* null, i32 0)
  %241 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display158 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %241, i32 0, i32 1
  %242 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display158, align 8
  %config159 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %242, i32 0, i32 2
  %243 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config159, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %243, i32 0, i32 21
  %244 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %245 = bitcast %struct._GimpDisplayOptions* %244 to i8*
  %246 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %247 = bitcast %struct._GimpDisplayShell* %246 to i8*
  %call160 = call i64 @g_signal_connect_data(i8* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to void ()*), i8* %247, void (i8*, %struct._GClosure*)* null, i32 0)
  %248 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display161 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %248, i32 0, i32 1
  %249 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display161, align 8
  %config162 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %249, i32 0, i32 2
  %250 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config162, align 8
  %default_fullscreen_view163 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %250, i32 0, i32 21
  %251 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view163, align 8
  %252 = bitcast %struct._GimpDisplayOptions* %251 to i8*
  %253 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %254 = bitcast %struct._GimpDisplayShell* %253 to i8*
  %call164 = call i64 @g_signal_connect_data(i8* %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to void ()*), i8* %254, void (i8*, %struct._GClosure*)* null, i32 0)
  %255 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display165 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %255, i32 0, i32 1
  %256 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display165, align 8
  %config166 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %256, i32 0, i32 2
  %257 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config166, align 8
  %258 = bitcast %struct._GimpDisplayConfig* %257 to i8*
  %259 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %260 = bitcast %struct._GimpDisplayShell* %259 to i8*
  %call167 = call i64 @g_signal_connect_data(i8* %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_ants_speed_notify_handler to void ()*), i8* %260, void (i8*, %struct._GClosure*)* null, i32 0)
  %261 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display168 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %261, i32 0, i32 1
  %262 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display168, align 8
  %config169 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %262, i32 0, i32 2
  %263 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config169, align 8
  %264 = bitcast %struct._GimpDisplayConfig* %263 to i8*
  %265 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %266 = bitcast %struct._GimpDisplayShell* %265 to i8*
  %call170 = call i64 @g_signal_connect_data(i8* %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_quality_notify_handler to void ()*), i8* %266, void (i8*, %struct._GClosure*)* null, i32 0)
  %267 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %268 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_invalidate_preview_handler(%struct._GimpImage* %267, %struct._GimpDisplayShell* %268)
  %269 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %270 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_quick_mask_changed_handler(%struct._GimpImage* %269, %struct._GimpDisplayShell* %270)
  %271 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %layer_boundary = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %271, i32 0, i32 55
  %272 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %layer_boundary, align 8
  %273 = bitcast %struct._GimpCanvasItem* %272 to %struct._GTypeInstance*
  %call171 = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call171)
  %274 = bitcast %struct._GTypeInstance* %call172 to %struct._GimpCanvasLayerBoundary*
  %275 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call173 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %275)
  call void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary* %274, %struct._GimpLayer* %call173)
  br label %return

return:                                           ; preds = %for.end.127, %if.else.67, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_clean_dirty_handler(%struct._GimpImage* %image, i32 %dirty_mask, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dirty_mask.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %dirty_mask, i32* %dirty_mask.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_undo_event_handler(%struct._GimpImage* %image, i32 %event, %struct._GimpUndo* %undo, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %event.addr = alloca i32, align 4
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %0)
  ret void
}

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_grid_notify_handler(%struct._GimpGrid* %grid, %struct._GParamSpec* %pspec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %grid.addr = alloca %struct._GimpGrid*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %grid1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 52
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %grid1, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to i8*
  %3 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._GimpGrid* %3, i8* null)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_name_changed_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_selection_invalidate_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_selection_undraw(%struct._GimpDisplayShell* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_size_changed_detailed_handler(%struct._GimpImage* %image, i32 %previous_origin_x, i32 %previous_origin_y, i32 %previous_width, i32 %previous_height, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %previous_origin_x.addr = alloca i32, align 4
  %previous_origin_y.addr = alloca i32, align 4
  %previous_width.addr = alloca i32, align 4
  %previous_height.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %image4 = alloca %struct._GimpImage*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %scaled_previous_origin_x = alloca i32, align 4
  %scaled_previous_origin_y = alloca i32, align 4
  %horizontally = alloca i32, align 4
  %vertically = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %previous_origin_x, i32* %previous_origin_x.addr, align 4
  store i32 %previous_origin_y, i32* %previous_origin_y.addr, align 4
  store i32 %previous_width, i32* %previous_width.addr, align 4
  store i32 %previous_height, i32* %previous_height.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 2
  %2 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %resize_windows_on_resize = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %2, i32 0, i32 6
  %3 = load i32, i32* %resize_windows_on_resize, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %4)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool1 = icmp ne %struct._GimpImageWindow* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cmp = icmp eq %struct._GimpDisplayShell* %call2, %7
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  call void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow* %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  br label %if.end.49

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 1
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %10)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image4, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  %call7 = call i32 @gimp_image_get_width(%struct._GimpImage* %11)
  store i32 %call7, i32* %new_width, align 4
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  %call8 = call i32 @gimp_image_get_height(%struct._GimpImage* %12)
  store i32 %call8, i32* %new_height, align 4
  %13 = load i32, i32* %previous_origin_x.addr, align 4
  %conv = sitofp i32 %13 to double
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 13
  %15 = load double, double* %scale_x, align 8
  %mul = fmul double %conv, %15
  %call9 = call double @rint(double %mul) #6
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %scaled_previous_origin_x, align 4
  %16 = load i32, i32* %previous_origin_y.addr, align 4
  %conv11 = sitofp i32 %16 to double
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 14
  %18 = load double, double* %scale_y, align 8
  %mul12 = fmul double %conv11, %18
  %call13 = call double @rint(double %mul12) #6
  %conv14 = fptosi double %call13 to i32
  store i32 %conv14, i32* %scaled_previous_origin_y, align 4
  %19 = load i32, i32* %previous_width.addr, align 4
  %conv15 = sitofp i32 %19 to double
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 13
  %21 = load double, double* %scale_x16, align 8
  %mul17 = fmul double %conv15, %21
  %call18 = call double @rint(double %mul17) #6
  %conv19 = fptosi double %call18 to i32
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 28
  %23 = load i32, i32* %disp_width, align 4
  %cmp20 = icmp sgt i32 %conv19, %23
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %24 = load i32, i32* %new_width, align 4
  %conv22 = sitofp i32 %24 to double
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 13
  %26 = load double, double* %scale_x23, align 8
  %mul24 = fmul double %conv22, %26
  %call25 = call double @rint(double %mul24) #6
  %conv26 = fptosi double %call25 to i32
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 28
  %28 = load i32, i32* %disp_width27, align 4
  %cmp28 = icmp sle i32 %conv26, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %29 = phi i1 [ false, %if.else ], [ %cmp28, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  store i32 %land.ext, i32* %horizontally, align 4
  %30 = load i32, i32* %previous_height.addr, align 4
  %conv30 = sitofp i32 %30 to double
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 14
  %32 = load double, double* %scale_y31, align 8
  %mul32 = fmul double %conv30, %32
  %call33 = call double @rint(double %mul32) #6
  %conv34 = fptosi double %call33 to i32
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 29
  %34 = load i32, i32* %disp_height, align 4
  %cmp35 = icmp sgt i32 %conv34, %34
  br i1 %cmp35, label %land.rhs.37, label %land.end.46

land.rhs.37:                                      ; preds = %land.end
  %35 = load i32, i32* %new_height, align 4
  %conv38 = sitofp i32 %35 to double
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 14
  %37 = load double, double* %scale_y39, align 8
  %mul40 = fmul double %conv38, %37
  %call41 = call double @rint(double %mul40) #6
  %conv42 = fptosi double %call41 to i32
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 29
  %39 = load i32, i32* %disp_height43, align 4
  %cmp44 = icmp sle i32 %conv42, %39
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.37, %land.end
  %40 = phi i1 [ false, %land.end ], [ %cmp44, %land.rhs.37 ]
  %land.ext47 = zext i1 %40 to i32
  store i32 %land.ext47, i32* %vertically, align 4
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 11
  %43 = load i32, i32* %offset_x, align 4
  %44 = load i32, i32* %scaled_previous_origin_x, align 4
  %add = add nsw i32 %43, %44
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 12
  %46 = load i32, i32* %offset_y, align 4
  %47 = load i32, i32* %scaled_previous_origin_y, align 4
  %add48 = add nsw i32 %46, %47
  call void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell* %41, i32 %add, i32 %add48)
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %49 = load i32, i32* %horizontally, align 4
  %50 = load i32, i32* %vertically, align 4
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %48, i32 %49, i32 %50)
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %51)
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %52)
  br label %if.end.49

if.end.49:                                        ; preds = %land.end.46, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_resolution_changed_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %0)
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 17
  %2 = load i32, i32* %dot_for_dot, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 10
  %4 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %6)
  br label %if.end.2

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 1
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %9, i32 0, i32 2
  %10 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %resize_windows_on_resize = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %10, i32 0, i32 6
  %11 = load i32, i32* %resize_windows_on_resize, align 4
  call void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell* %7, i32 %11, i32 0)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_quick_mask_changed_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %gtk_image = alloca %struct._GtkImage*, align 8
  %quick_mask_state = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %quick_mask_button = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 41
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %3)
  %4 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_image_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkImage*
  store %struct._GtkImage* %5, %struct._GtkImage** %gtk_image, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %quick_mask_button5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 41
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button5, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = bitcast %struct._GimpDisplayShell* %9 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_toggled to i8*), i8* %10)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call7 = call i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %11)
  store i32 %call7, i32* %quick_mask_state, align 4
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %quick_mask_button8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 41
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button8, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %16 = load i32, i32* %quick_mask_state, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %15, i32 %16)
  %17 = load i32, i32* %quick_mask_state, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct._GtkImage*, %struct._GtkImage** %gtk_image, align 8
  call void @gtk_image_set_from_stock(%struct._GtkImage* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GtkImage*, %struct._GtkImage** %gtk_image, align 8
  call void @gtk_image_set_from_stock(%struct._GtkImage* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %quick_mask_button11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 41
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button11, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %24 = bitcast %struct._GimpDisplayShell* %23 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_toggled to i8*), i8* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_guide_add_handler(%struct._GimpImage* %image, %struct._GimpGuide* %guide, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 53
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call2 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %5)
  %6 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call3 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %6)
  %call4 = call %struct._GimpCanvasItem* @gimp_canvas_guide_new(%struct._GimpDisplayShell* %4, i32 %call2, i32 %call3, i32 1)
  store %struct._GimpCanvasItem* %call4, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %8 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %9 = bitcast %struct._GimpGuide* %8 to i8*
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_proxy_group_add_item(%struct._GimpCanvasProxyGroup* %7, i8* %9, %struct._GimpCanvasItem* %10)
  %11 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %12 = bitcast %struct._GimpCanvasItem* %11 to i8*
  call void @g_object_unref(i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_guide_remove_handler(%struct._GimpImage* %image, %struct._GimpGuide* %guide, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 53
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %6 = bitcast %struct._GimpGuide* %5 to i8*
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_guide_move_handler(%struct._GimpImage* %image, %struct._GimpGuide* %guide, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 53
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %6 = bitcast %struct._GimpGuide* %5 to i8*
  %call2 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  store %struct._GimpCanvasItem* %call2, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %8 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call3 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %8)
  %9 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call4 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %9)
  call void @gimp_canvas_guide_set(%struct._GimpCanvasItem* %7, i32 %call3, i32 %call4)
  ret void
}

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_sample_point_add_handler(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %sample_point4 = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %sample_points = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 54
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sample_points, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %5, i32 0, i32 2
  %6 = load i32, i32* %x, align 4
  %7 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %7, i32 0, i32 3
  %8 = load i32, i32* %y, align 4
  %call2 = call %struct._GimpCanvasItem* @gimp_canvas_sample_point_new(%struct._GimpDisplayShell* %4, i32 %6, i32 %8, i32 0, i32 1)
  store %struct._GimpCanvasItem* %call2, %struct._GimpCanvasItem** %item, align 8
  %9 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %10 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %11 = bitcast %struct._GimpSamplePoint* %10 to i8*
  %12 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_proxy_group_add_item(%struct._GimpCanvasProxyGroup* %9, i8* %11, %struct._GimpCanvasItem* %12)
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %15)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %16, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %19, %struct._GimpSamplePoint** %sample_point4, align 8
  %20 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %21 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point4, align 8
  %22 = bitcast %struct._GimpSamplePoint* %21 to i8*
  %call5 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %20, i8* %22)
  store %struct._GimpCanvasItem* %call5, %struct._GimpCanvasItem** %item, align 8
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool6 = icmp ne %struct._GimpCanvasItem* %23, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %25 = bitcast %struct._GimpCanvasItem* %24 to i8*
  %26 = load i32, i32* %i, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %26, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %27, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_sample_point_remove_handler(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %sample_point3 = alloca %struct._GimpSamplePoint*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %sample_points = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 54
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sample_points, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %6 = bitcast %struct._GimpSamplePoint* %5 to i8*
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %7)
  store %struct._GList* %call2, %struct._GList** %list, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %11, %struct._GimpSamplePoint** %sample_point3, align 8
  %12 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point3, align 8
  %14 = bitcast %struct._GimpSamplePoint* %13 to i8*
  %call4 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %12, i8* %14)
  store %struct._GimpCanvasItem* %call4, %struct._GimpCanvasItem** %item, align 8
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool5 = icmp ne %struct._GimpCanvasItem* %15, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %17 = bitcast %struct._GimpCanvasItem* %16 to i8*
  %18 = load i32, i32* %i, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %18, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %19, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_sample_point_move_handler(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %sample_points = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 54
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sample_points, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %6 = bitcast %struct._GimpSamplePoint* %5 to i8*
  %call2 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  store %struct._GimpCanvasItem* %call2, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %8 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %8, i32 0, i32 2
  %9 = load i32, i32* %x, align 4
  %10 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %10, i32 0, i32 3
  %11 = load i32, i32* %y, align 4
  call void @gimp_canvas_sample_point_set(%struct._GimpCanvasItem* %7, i32 %9, i32 %11)
  ret void
}

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_invalidate_preview_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_icon_update(%struct._GimpDisplayShell* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_profile_changed_handler(%struct._GimpColorManaged* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpColorManaged*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpColorManaged* %image, %struct._GimpColorManaged** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_managed_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorManaged*
  call void @gimp_color_managed_profile_changed(%struct._GimpColorManaged* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_saved_handler(%struct._GimpImage* %image, i8* %uri, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %0)
  store %struct._GimpStatusbar* %call, %struct._GimpStatusbar** %statusbar, align 8
  %1 = load i8*, i8** %uri.addr, align 8
  %call1 = call i8* @file_utils_uri_display_name(i8* %1)
  store i8* %call1, i8** %filename, align 8
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0)) #5
  %3 = load i8*, i8** %filename, align 8
  call void (%struct._GimpStatusbar*, i32, i8*, i8*, ...) @gimp_statusbar_push_temp(%struct._GimpStatusbar* %2, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* %call2, i8* %3)
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_exported_handler(%struct._GimpImage* %image, i8* %uri, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %0)
  store %struct._GimpStatusbar* %call, %struct._GimpStatusbar** %statusbar, align 8
  %1 = load i8*, i8** %uri.addr, align 8
  %call1 = call i8* @file_utils_uri_display_name(i8* %1)
  store i8* %call1, i8** %filename, align 8
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0)) #5
  %3 = load i8*, i8** %filename, align 8
  call void (%struct._GimpStatusbar*, i32, i8*, i8*, ...) @gimp_statusbar_push_temp(%struct._GimpStatusbar* %2, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* %call2, i8* %3)
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_active_vectors_handler(%struct._GimpImage* %image, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %active = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %vectors4 = alloca %struct._GimpVectors*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 51
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %4)
  store %struct._GimpVectors* %call2, %struct._GimpVectors** %active, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %5)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpVectors*
  store %struct._GimpVectors* %9, %struct._GimpVectors** %vectors4, align 8
  %10 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors4, align 8
  %12 = bitcast %struct._GimpVectors* %11 to i8*
  %call5 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %10, i8* %12)
  store %struct._GimpCanvasItem* %call5, %struct._GimpCanvasItem** %item, align 8
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors4, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %active, align 8
  %cmp = icmp eq %struct._GimpVectors* %14, %15
  %conv = zext i1 %cmp to i32
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %13, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %16, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer*, i8*, void ()*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vectors_freeze_handler(%struct._GimpVectors* %vectors, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vectors_thaw_handler(%struct._GimpVectors* %vectors, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 51
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors1, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %6 = bitcast %struct._GimpVectors* %5 to i8*
  %call3 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  store %struct._GimpCanvasItem* %call3, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call4 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %8)
  call void @gimp_canvas_path_set(%struct._GimpCanvasItem* %7, %struct.cairo_path* %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vectors_visible_handler(%struct._GimpVectors* %vectors, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 51
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors1, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %6 = bitcast %struct._GimpVectors* %5 to i8*
  %call3 = call %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  store %struct._GimpCanvasItem* %call3, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %9 = bitcast %struct._GimpVectors* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_get_visible(%struct._GimpItem* %10)
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %7, i32 %call6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vectors_add_handler(%struct._GimpContainer* %container, %struct._GimpVectors* %vectors, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 51
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors1, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call3 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %5)
  %call4 = call %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell* %4, %struct.cairo_path* %call3, double 0.000000e+00, double 0.000000e+00, i32 0, i32 1)
  store %struct._GimpCanvasItem* %call4, %struct._GimpCanvasItem** %item, align 8
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_visible(%struct._GimpItem* %9)
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %6, i32 %call7)
  %10 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %12 = bitcast %struct._GimpVectors* %11 to i8*
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_proxy_group_add_item(%struct._GimpCanvasProxyGroup* %10, i8* %12, %struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  call void @g_object_unref(i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_vectors_remove_handler(%struct._GimpContainer* %container, %struct._GimpVectors* %vectors, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %group = alloca %struct._GimpCanvasProxyGroup*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 51
  %1 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors1, align 8
  %2 = bitcast %struct._GimpCanvasItem* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCanvasProxyGroup*
  store %struct._GimpCanvasProxyGroup* %3, %struct._GimpCanvasProxyGroup** %group, align 8
  %4 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %6 = bitcast %struct._GimpVectors* %5 to i8*
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %4, i8* %6)
  ret void
}

declare %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_check_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %padding_mode = alloca i32, align 4
  %padding_color = alloca %struct._GimpRGB, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 47
  %1 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard, align 8
  %tobool = icmp ne %struct._cairo_pattern* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 47
  %3 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard1, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %3)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %checkerboard2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 47
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %checkerboard2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_get_padding(%struct._GimpDisplayShell* %5, i32* %padding_mode, %struct._GimpRGB* %padding_color)
  %6 = load i32, i32* %padding_mode, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load i32, i32* %padding_mode, align 4
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %7, i32 %8, %struct._GimpRGB* %padding_color)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_title_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_nav_size_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 75
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 75
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 75
  store %struct._GtkWidget* null, %struct._GtkWidget** %nav_popup2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_monitor_res_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %2, i32 0, i32 18
  %3 = load i32, i32* %monitor_res_from_gdk, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = bitcast %struct._GimpDisplayShell* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 15
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 16
  call void @gimp_get_screen_resolution(%struct._GdkScreen* %call4, double* %monitor_xres, double* %monitor_yres)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_display_config_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDisplayConfig*
  %monitor_xres7 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %11, i32 0, i32 16
  %12 = load double, double* %monitor_xres7, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_xres8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 15
  store double %12, double* %monitor_xres8, align 8
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_display_config_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDisplayConfig*
  %monitor_yres11 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %16, i32 0, i32 17
  %17 = load double, double* %monitor_yres11, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %monitor_yres12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 16
  store double %17, double* %monitor_yres12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %19)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 17
  %21 = load i32, i32* %dot_for_dot, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %23)
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_padding_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %fullscreen = alloca i32, align 4
  %padding_mode = alloca i32, align 4
  %padding_color = alloca %struct._GimpRGB, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config1 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 2
  %2 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config1, align 8
  store %struct._GimpDisplayConfig* %2, %struct._GimpDisplayConfig** %display_config, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %3)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  %4 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool = icmp ne %struct._GimpImageWindow* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call2 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %5)
  store i32 %call2, i32* %fullscreen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %fullscreen, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  %padding_mode_set = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %7, i32 0, i32 12
  %8 = load i32, i32* %padding_mode_set, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end.16, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %9, i32 0, i32 21
  %10 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %padding_mode5 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %10, i32 0, i32 10
  %11 = load i32, i32* %padding_mode5, align 4
  store i32 %11, i32* %padding_mode, align 4
  %12 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view6 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %12, i32 0, i32 21
  %13 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view6, align 8
  %padding_color7 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %13, i32 0, i32 11
  %14 = bitcast %struct._GimpRGB* %padding_color to i8*
  %15 = bitcast %struct._GimpRGB* %padding_color7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load i32, i32* %fullscreen, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %18 = load i32, i32* %padding_mode, align 4
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %17, i32 %18, %struct._GimpRGB* %padding_color)
  br label %if.end.15

if.else.10:                                       ; preds = %if.then.4
  %19 = load i32, i32* %padding_mode, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 4
  %21 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options11, align 8
  %padding_mode12 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %21, i32 0, i32 10
  store i32 %19, i32* %padding_mode12, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 4
  %23 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options13, align 8
  %padding_color14 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %23, i32 0, i32 11
  %24 = bitcast %struct._GimpRGB* %padding_color14 to i8*
  %25 = bitcast %struct._GimpRGB* %padding_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 3
  %27 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode_set17 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %27, i32 0, i32 12
  %28 = load i32, i32* %padding_mode_set17, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.end.31, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %29 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %29, i32 0, i32 20
  %30 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %padding_mode20 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %30, i32 0, i32 10
  %31 = load i32, i32* %padding_mode20, align 4
  store i32 %31, i32* %padding_mode, align 4
  %32 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view21 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %32, i32 0, i32 20
  %33 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view21, align 8
  %padding_color22 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %33, i32 0, i32 11
  %34 = bitcast %struct._GimpRGB* %padding_color to i8*
  %35 = bitcast %struct._GimpRGB* %padding_color22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  %36 = load i32, i32* %fullscreen, align 4
  %tobool23 = icmp ne i32 %36, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.then.19
  %37 = load i32, i32* %padding_mode, align 4
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 3
  %39 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options25, align 8
  %padding_mode26 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %39, i32 0, i32 10
  store i32 %37, i32* %padding_mode26, align 4
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 3
  %41 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options27, align 8
  %padding_color28 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %41, i32 0, i32 11
  %42 = bitcast %struct._GimpRGB* %padding_color28 to i8*
  %43 = bitcast %struct._GimpRGB* %padding_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  br label %if.end.30

if.else.29:                                       ; preds = %if.then.19
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %45 = load i32, i32* %padding_mode, align 4
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %44, i32 %45, %struct._GimpRGB* %padding_color)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_ants_speed_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %0)
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_quality_notify_handler(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %0)
  ret void
}

declare void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary*, %struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_layer_boundary_get_type() #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_disconnect(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display39, align 8
  %call40 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %28)
  store %struct._GimpImage* %call40, %struct._GimpImage** %image, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %30 = bitcast %struct._GimpImage* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_image_get_type() #6
  store i64 %call46, i64* %__t45, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %do.body.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %do.body.41
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type56, align 8
  %37 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %36, %37
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %39 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %40 = load i32, i32* %__r48, align 4
  store i32 %40, i32* %tmp63
  %41 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %41, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call69 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %42)
  store %struct._GimpContainer* %call69, %struct._GimpContainer** %vectors, align 8
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_icon_update_stop(%struct._GimpDisplayShell* %43)
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %layer_boundary = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 55
  %45 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %layer_boundary, align 8
  %46 = bitcast %struct._GimpCanvasItem* %45 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call70)
  %47 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpCanvasLayerBoundary*
  call void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary* %47, %struct._GimpLayer* null)
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display72 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %48, i32 0, i32 1
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display72, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %49, i32 0, i32 2
  %50 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %51 = bitcast %struct._GimpDisplayConfig* %50 to i8*
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %53 = bitcast %struct._GimpDisplayShell* %52 to i8*
  %call73 = call i32 @g_signal_handlers_disconnect_matched(i8* %51, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_quality_notify_handler to i8*), i8* %53)
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display74 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 1
  %55 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display74, align 8
  %config75 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %55, i32 0, i32 2
  %56 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config75, align 8
  %57 = bitcast %struct._GimpDisplayConfig* %56 to i8*
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %59 = bitcast %struct._GimpDisplayShell* %58 to i8*
  %call76 = call i32 @g_signal_handlers_disconnect_matched(i8* %57, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_ants_speed_notify_handler to i8*), i8* %59)
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display77 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 1
  %61 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display77, align 8
  %config78 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %61, i32 0, i32 2
  %62 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config78, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %62, i32 0, i32 21
  %63 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %64 = bitcast %struct._GimpDisplayOptions* %63 to i8*
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %66 = bitcast %struct._GimpDisplayShell* %65 to i8*
  %call79 = call i32 @g_signal_handlers_disconnect_matched(i8* %64, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to i8*), i8* %66)
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display80 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %67, i32 0, i32 1
  %68 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display80, align 8
  %config81 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %68, i32 0, i32 2
  %69 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config81, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %69, i32 0, i32 20
  %70 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %71 = bitcast %struct._GimpDisplayOptions* %70 to i8*
  %72 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %73 = bitcast %struct._GimpDisplayShell* %72 to i8*
  %call82 = call i32 @g_signal_handlers_disconnect_matched(i8* %71, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_padding_notify_handler to i8*), i8* %73)
  %74 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display83 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %74, i32 0, i32 1
  %75 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display83, align 8
  %config84 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %75, i32 0, i32 2
  %76 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config84, align 8
  %77 = bitcast %struct._GimpDisplayConfig* %76 to i8*
  %78 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %79 = bitcast %struct._GimpDisplayShell* %78 to i8*
  %call85 = call i32 @g_signal_handlers_disconnect_matched(i8* %77, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_monitor_res_notify_handler to i8*), i8* %79)
  %80 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display86 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %80, i32 0, i32 1
  %81 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display86, align 8
  %config87 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %81, i32 0, i32 2
  %82 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config87, align 8
  %83 = bitcast %struct._GimpDisplayConfig* %82 to i8*
  %84 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %85 = bitcast %struct._GimpDisplayShell* %84 to i8*
  %call88 = call i32 @g_signal_handlers_disconnect_matched(i8* %83, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_nav_size_notify_handler to i8*), i8* %85)
  %86 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display89 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %86, i32 0, i32 1
  %87 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display89, align 8
  %config90 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %87, i32 0, i32 2
  %88 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config90, align 8
  %89 = bitcast %struct._GimpDisplayConfig* %88 to i8*
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %91 = bitcast %struct._GimpDisplayShell* %90 to i8*
  %call91 = call i32 @g_signal_handlers_disconnect_matched(i8* %89, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_title_notify_handler to i8*), i8* %91)
  %92 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display92 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %92, i32 0, i32 1
  %93 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display92, align 8
  %config93 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %93, i32 0, i32 2
  %94 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config93, align 8
  %95 = bitcast %struct._GimpDisplayConfig* %94 to i8*
  %96 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %97 = bitcast %struct._GimpDisplayShell* %96 to i8*
  %call94 = call i32 @g_signal_handlers_disconnect_matched(i8* %95, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_check_notify_handler to i8*), i8* %97)
  %98 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %99 = bitcast %struct._GimpContainer* %98 to i8*
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %101 = bitcast %struct._GimpDisplayShell* %100 to i8*
  %call95 = call i32 @g_signal_handlers_disconnect_matched(i8* %99, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_remove_handler to i8*), i8* %101)
  %102 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %103 = bitcast %struct._GimpContainer* %102 to i8*
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %105 = bitcast %struct._GimpDisplayShell* %104 to i8*
  %call96 = call i32 @g_signal_handlers_disconnect_matched(i8* %103, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpVectors*, %struct._GimpDisplayShell*)* @gimp_display_shell_vectors_add_handler to i8*), i8* %105)
  %106 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_visible_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %106, i32 0, i32 83
  %107 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %vectors_visible_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %107)
  %108 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_visible_handler97 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %108, i32 0, i32 83
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %vectors_visible_handler97, align 8
  %109 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_thaw_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %109, i32 0, i32 82
  %110 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %vectors_thaw_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %110)
  %111 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_thaw_handler98 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %111, i32 0, i32 82
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %vectors_thaw_handler98, align 8
  %112 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_freeze_handler = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %112, i32 0, i32 81
  %113 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %vectors_freeze_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %113)
  %114 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors_freeze_handler99 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %114, i32 0, i32 81
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %vectors_freeze_handler99, align 8
  %115 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %116 = bitcast %struct._GimpImage* %115 to i8*
  %117 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %118 = bitcast %struct._GimpDisplayShell* %117 to i8*
  %call100 = call i32 @g_signal_handlers_disconnect_matched(i8* %116, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_active_vectors_handler to i8*), i8* %118)
  %119 = load %struct._GimpContainer*, %struct._GimpContainer** %vectors, align 8
  %120 = bitcast %struct._GimpContainer* %119 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_item_stack_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call101)
  %121 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpItemStack*
  %call103 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %121)
  store %struct._GList* %call103, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.68
  %122 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool104 = icmp ne %struct._GList* %122, null
  br i1 %tobool104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vectors105 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %123, i32 0, i32 51
  %124 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %vectors105, align 8
  %125 = bitcast %struct._GimpCanvasItem* %124 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call106)
  %126 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpCanvasProxyGroup*
  %127 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %127, i32 0, i32 0
  %128 = load i8*, i8** %data, align 8
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %126, i8* %128)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %129 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool108 = icmp ne %struct._GList* %129, null
  br i1 %tobool108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %130 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %130, i32 0, i32 1
  %131 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %131, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %132 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %133 = bitcast %struct._GimpImage* %132 to i8*
  %134 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %135 = bitcast %struct._GimpDisplayShell* %134 to i8*
  %call109 = call i32 @g_signal_handlers_disconnect_matched(i8* %133, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i8*, %struct._GimpDisplayShell*)* @gimp_display_shell_exported_handler to i8*), i8* %135)
  %136 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %137 = bitcast %struct._GimpImage* %136 to i8*
  %138 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %139 = bitcast %struct._GimpDisplayShell* %138 to i8*
  %call110 = call i32 @g_signal_handlers_disconnect_matched(i8* %137, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i8*, %struct._GimpDisplayShell*)* @gimp_display_shell_saved_handler to i8*), i8* %139)
  %140 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %141 = bitcast %struct._GimpImage* %140 to i8*
  %142 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %143 = bitcast %struct._GimpDisplayShell* %142 to i8*
  %call111 = call i32 @g_signal_handlers_disconnect_matched(i8* %141, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorManaged*, %struct._GimpDisplayShell*)* @gimp_display_shell_profile_changed_handler to i8*), i8* %143)
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %145 = bitcast %struct._GimpImage* %144 to i8*
  %146 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %147 = bitcast %struct._GimpDisplayShell* %146 to i8*
  %call112 = call i32 @g_signal_handlers_disconnect_matched(i8* %145, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_invalidate_preview_handler to i8*), i8* %147)
  %148 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %149 = bitcast %struct._GimpImage* %148 to i8*
  %150 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %151 = bitcast %struct._GimpDisplayShell* %150 to i8*
  %call113 = call i32 @g_signal_handlers_disconnect_matched(i8* %149, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_add_handler to i8*), i8* %151)
  %152 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %153 = bitcast %struct._GimpImage* %152 to i8*
  %154 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %155 = bitcast %struct._GimpDisplayShell* %154 to i8*
  %call114 = call i32 @g_signal_handlers_disconnect_matched(i8* %153, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_remove_handler to i8*), i8* %155)
  %156 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %157 = bitcast %struct._GimpImage* %156 to i8*
  %158 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %159 = bitcast %struct._GimpDisplayShell* %158 to i8*
  %call115 = call i32 @g_signal_handlers_disconnect_matched(i8* %157, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpGuide*, %struct._GimpDisplayShell*)* @gimp_display_shell_guide_move_handler to i8*), i8* %159)
  %160 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call116 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %160)
  store %struct._GList* %call116, %struct._GList** %list, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %cond.end.128, %for.end
  %161 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool118 = icmp ne %struct._GList* %161, null
  br i1 %tobool118, label %for.body.119, label %for.end.130

for.body.119:                                     ; preds = %for.cond.117
  %162 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %162, i32 0, i32 53
  %163 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides, align 8
  %164 = bitcast %struct._GimpCanvasItem* %163 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call120)
  %165 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpCanvasProxyGroup*
  %166 = load %struct._GList*, %struct._GList** %list, align 8
  %data122 = getelementptr inbounds %struct._GList, %struct._GList* %166, i32 0, i32 0
  %167 = load i8*, i8** %data122, align 8
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %165, i8* %167)
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.119
  %168 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool124 = icmp ne %struct._GList* %168, null
  br i1 %tobool124, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %for.inc.123
  %169 = load %struct._GList*, %struct._GList** %list, align 8
  %next126 = getelementptr inbounds %struct._GList, %struct._GList* %169, i32 0, i32 1
  %170 = load %struct._GList*, %struct._GList** %next126, align 8
  br label %cond.end.128

cond.false.127:                                   ; preds = %for.inc.123
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.125
  %cond129 = phi %struct._GList* [ %170, %cond.true.125 ], [ null, %cond.false.127 ]
  store %struct._GList* %cond129, %struct._GList** %list, align 8
  br label %for.cond.117

for.end.130:                                      ; preds = %for.cond.117
  %171 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %172 = bitcast %struct._GimpImage* %171 to i8*
  %173 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %174 = bitcast %struct._GimpDisplayShell* %173 to i8*
  %call131 = call i32 @g_signal_handlers_disconnect_matched(i8* %172, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_add_handler to i8*), i8* %174)
  %175 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %176 = bitcast %struct._GimpImage* %175 to i8*
  %177 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %178 = bitcast %struct._GimpDisplayShell* %177 to i8*
  %call132 = call i32 @g_signal_handlers_disconnect_matched(i8* %176, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_remove_handler to i8*), i8* %178)
  %179 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %180 = bitcast %struct._GimpImage* %179 to i8*
  %181 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %182 = bitcast %struct._GimpDisplayShell* %181 to i8*
  %call133 = call i32 @g_signal_handlers_disconnect_matched(i8* %180, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpDisplayShell*)* @gimp_display_shell_sample_point_move_handler to i8*), i8* %182)
  %183 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call134 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %183)
  store %struct._GList* %call134, %struct._GList** %list, align 8
  br label %for.cond.135

for.cond.135:                                     ; preds = %cond.end.146, %for.end.130
  %184 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool136 = icmp ne %struct._GList* %184, null
  br i1 %tobool136, label %for.body.137, label %for.end.148

for.body.137:                                     ; preds = %for.cond.135
  %185 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %sample_points = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %185, i32 0, i32 54
  %186 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sample_points, align 8
  %187 = bitcast %struct._GimpCanvasItem* %186 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call138)
  %188 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpCanvasProxyGroup*
  %189 = load %struct._GList*, %struct._GList** %list, align 8
  %data140 = getelementptr inbounds %struct._GList, %struct._GList* %189, i32 0, i32 0
  %190 = load i8*, i8** %data140, align 8
  call void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %188, i8* %190)
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.137
  %191 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool142 = icmp ne %struct._GList* %191, null
  br i1 %tobool142, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %for.inc.141
  %192 = load %struct._GList*, %struct._GList** %list, align 8
  %next144 = getelementptr inbounds %struct._GList, %struct._GList* %192, i32 0, i32 1
  %193 = load %struct._GList*, %struct._GList** %next144, align 8
  br label %cond.end.146

cond.false.145:                                   ; preds = %for.inc.141
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.143
  %cond147 = phi %struct._GList* [ %193, %cond.true.143 ], [ null, %cond.false.145 ]
  store %struct._GList* %cond147, %struct._GList** %list, align 8
  br label %for.cond.135

for.end.148:                                      ; preds = %for.cond.135
  %194 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %195 = bitcast %struct._GimpImage* %194 to i8*
  %196 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %197 = bitcast %struct._GimpDisplayShell* %196 to i8*
  %call149 = call i32 @g_signal_handlers_disconnect_matched(i8* %195, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_changed_handler to i8*), i8* %197)
  %198 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %199 = bitcast %struct._GimpImage* %198 to i8*
  %200 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %201 = bitcast %struct._GimpDisplayShell* %200 to i8*
  %call150 = call i32 @g_signal_handlers_disconnect_matched(i8* %199, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_resolution_changed_handler to i8*), i8* %201)
  %202 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %203 = bitcast %struct._GimpImage* %202 to i8*
  %204 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %205 = bitcast %struct._GimpDisplayShell* %204 to i8*
  %call151 = call i32 @g_signal_handlers_disconnect_matched(i8* %203, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, i32, i32, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_size_changed_detailed_handler to i8*), i8* %205)
  %206 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %207 = bitcast %struct._GimpImage* %206 to i8*
  %208 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %209 = bitcast %struct._GimpDisplayShell* %208 to i8*
  %call152 = call i32 @g_signal_handlers_disconnect_matched(i8* %207, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_selection_invalidate_handler to i8*), i8* %209)
  %210 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %211 = bitcast %struct._GimpImage* %210 to i8*
  %212 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %213 = bitcast %struct._GimpDisplayShell* %212 to i8*
  %call153 = call i32 @g_signal_handlers_disconnect_matched(i8* %211, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDisplayShell*)* @gimp_display_shell_name_changed_handler to i8*), i8* %213)
  %214 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call154 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %214)
  %215 = bitcast %struct._GimpGrid* %call154 to i8*
  %216 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %217 = bitcast %struct._GimpDisplayShell* %216 to i8*
  %call155 = call i32 @g_signal_handlers_disconnect_matched(i8* %215, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGrid*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_display_shell_grid_notify_handler to i8*), i8* %217)
  %218 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %219 = bitcast %struct._GimpImage* %218 to i8*
  %220 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %221 = bitcast %struct._GimpDisplayShell* %220 to i8*
  %call156 = call i32 @g_signal_handlers_disconnect_matched(i8* %219, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpUndo*, %struct._GimpDisplayShell*)* @gimp_display_shell_undo_event_handler to i8*), i8* %221)
  %222 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %223 = bitcast %struct._GimpImage* %222 to i8*
  %224 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %225 = bitcast %struct._GimpDisplayShell* %224 to i8*
  %call157 = call i32 @g_signal_handlers_disconnect_matched(i8* %223, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_clean_dirty_handler to i8*), i8* %225)
  br label %return

return:                                           ; preds = %for.end.148, %if.else.66, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_display_shell_icon_update_stop(%struct._GimpDisplayShell*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler*) #3

declare void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_proxy_group_get_type() #1

declare void @gimp_display_shell_title_update(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_selection_undraw(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scaled(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_scale_resize(%struct._GimpDisplayShell*, i32, i32) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gimp_display_shell_quick_mask_toggled(%struct._GtkWidget*, %struct._GimpDisplayShell*) #3

declare i32 @gimp_image_get_quick_mask_state(%struct._GimpImage*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare %struct._GimpCanvasItem* @gimp_canvas_guide_new(%struct._GimpDisplayShell*, i32, i32, i32) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare void @gimp_canvas_proxy_group_add_item(%struct._GimpCanvasProxyGroup*, i8*, %struct._GimpCanvasItem*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup*, i8*) #3

declare void @gimp_canvas_guide_set(%struct._GimpCanvasItem*, i32, i32) #3

declare %struct._GimpCanvasItem* @gimp_canvas_sample_point_new(%struct._GimpDisplayShell*, i32, i32, i32, i32) #3

declare void @gimp_canvas_sample_point_set(%struct._GimpCanvasItem*, i32, i32) #3

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #3

declare %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow*) #3

declare void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow*, i32) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

declare void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell*, i32, i32) #3

declare void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell*, i32, i32) #3

declare void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_expose_full(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_icon_update(%struct._GimpDisplayShell*) #3

declare void @gimp_color_managed_profile_changed(%struct._GimpColorManaged*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #1

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_statusbar_push_temp(%struct._GimpStatusbar*, i32, i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_free(i8*) #3

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #3

declare void @gimp_canvas_path_set(%struct._GimpCanvasItem*, %struct.cairo_path*) #3

declare %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors*) #3

declare void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem*, i32) #3

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell*, %struct.cairo_path*, double, double, i32, i32) #3

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #3

declare void @gimp_display_shell_get_padding(%struct._GimpDisplayShell*, i32*, %struct._GimpRGB*) #3

declare void @gimp_display_shell_set_padding(%struct._GimpDisplayShell*, i32, %struct._GimpRGB*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #1

declare void @gimp_get_screen_resolution(%struct._GdkScreen*, double*, double*) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell*) #3

declare void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
